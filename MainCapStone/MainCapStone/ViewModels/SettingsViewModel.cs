using MainCapStone.Models;
using MainCapStone.Services;
using MvvmHelpers;
using MvvmHelpers.Commands;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;

[assembly: Dependency(typeof(CategoriesDBService))]
namespace MainCapStone.ViewModels
{
    public class SettingsViewModel : ViewModelBase
    {
        public ObservableRangeCollection<FoodCategories> FoodCategories { get; set; }
        ICategoriesDBService categoriesDBService;
        public AsyncCommand ViewCommand { get; }

        public int CategoryIndex
        {
            get => int.Parse(Preferences.Get("categoryIndex", "0"));
            set => Preferences.Set("categoryIndex", value.ToString());
        }
        public double RadiusValue
        {
            get => Convert.ToDouble(Preferences.Get("radiusValue", "40000"));
            set => Preferences.Set("radiusValue", value.ToString());
        }
        public bool OpenOptionValue
        {
            get => Convert.ToBoolean(Preferences.Get("openOptionValue", "false"));
            set => Preferences.Set("openOptionValue", value.ToString());
        }

        public SettingsViewModel()
        {
            Title = "Settings";

            ViewCommand = new AsyncCommand(View);

            categoriesDBService = DependencyService.Get<ICategoriesDBService>();

            FoodCategories = listOfCategroies();
        }
        async Task View()
        {
            await Shell.Current.GoToAsync("//MainPage");
        }
        async Task AddToDB()
        {
            try
            {
                var testing = await InternetCategoriesService.GetCategories();
                testing.categories.Sort((x, y) => x.title.CompareTo(y.title));
                await categoriesDBService.AddCategory("All Restaurants", "all", 0);
                int id = 1;
                foreach (var i in testing.categories)
                {
                    if (i.parent_aliases.Contains("restaurants"))
                    {
                        if (i.title.Equals("Fast Food"))
                            await categoriesDBService.AddCategory(i.title + " Restaurants", "fastfood", id);
                        else
                            await categoriesDBService.AddCategory(i.title + " Restaurants", i.alias, id);
                        id++;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        public ObservableRangeCollection<FoodCategories> listOfCategroies()
        {
            ObservableRangeCollection<FoodCategories> list = new ObservableRangeCollection<FoodCategories>();
            var tablecount = Task.Run(() => categoriesDBService.IsTableEmpty("FoodCategories"));
            if (tablecount.Result)
                Task.Run(async () => await AddToDB()).Wait();
            list.AddRange((Task.Run(async () => await categoriesDBService.GetCategory())).Result);

            return list;
        }
    }
}
