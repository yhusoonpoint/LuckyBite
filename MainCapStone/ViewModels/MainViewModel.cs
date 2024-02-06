using MainCapStone.Models;
using MainCapStone.Services;
using MainCapStone.Views;
using MainCapStone.yelpAPI;
using MvvmHelpers;
using MvvmHelpers.Commands;
using Newtonsoft.Json;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;

[assembly: Dependency(typeof(CategoriesDBService))]
namespace MainCapStone.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        public ObservableRangeCollection<Business> Restaurant { get; set; }
        public AsyncCommand ViewCommand { get; }
        public AsyncCommand ViewCommandSaved { get; }
        public AsyncCommand GenerateNameCommand { get; }
        public AsyncCommand GetLocationCommand { get; set; }
        public double Latitude = 0;
        public double Longitude = 0;
        CancellationTokenSource cts;
        string errorMessage = "";
        string[] lastFIlter = { "", "", "" };
        double[] locations = { 0.0, 0.0 };
        bool errorVisibility = false;
        public ObservableRangeCollection<String> suggestedResturant = new ObservableRangeCollection<String>();
        public string ErrorMessage { get => errorMessage; set => SetProperty(ref errorMessage, value); }
        public bool ErrorVisibility { get => errorVisibility; set => SetProperty(ref errorVisibility, value); }
        public MainViewModel()
        {
            //Task.Run(async () => await SavedRestaurantsDBService.DropTable());
            Restaurant = new ObservableRangeCollection<Business>();
            ViewCommand = new AsyncCommand(View);
            ViewCommandSaved = new AsyncCommand(ViewSaved);
            GenerateNameCommand = new AsyncCommand(OnGenerateNameCommandExecuted);
            GetLocationCommand = new AsyncCommand(GetLocation);
        }

        public async Task GetLocation()
        {
            var request = new GeolocationRequest(GeolocationAccuracy.High, TimeSpan.FromSeconds(10));
            cts = new CancellationTokenSource();
            var location = await Geolocation.GetLocationAsync(request, cts.Token);

            if (location != null)
            {
                locations[0] = Latitude = location.Latitude;
                locations[1] = Longitude = location.Longitude;
            }
            else
            {
                ErrorMessage = "Location not found!!!";
                ErrorVisibility = true;
            }
        }
        public void GetLocations()
        {
            // Method implementation
            GetLocationCommand = new AsyncCommand(GetLocation);

        }


        public async Task View()
        {
            IsNotBusy = false;
            ErrorMessage = "";
            ErrorVisibility = false;

            if (Restaurant.Count > 0 &&
                lastFIlter[0] == Preferences.Get("openOptionValue", "false").ToLower() &&
                lastFIlter[1] == Preferences.Get("radiusValue", "40000") &&
                lastFIlter[2] == Preferences.Get("categoryIndex", "0"))
            {
                await ChangePage();
            }
            else
            {

                if (Latitude == 0 && Longitude == 0)
                    await GetLocationCommand.ExecuteAsync();

                if (Latitude != 0 && Longitude != 0)
                {
                    try
                    {
                        Restaurant.Clear();
                        lastFIlter[0] = Preferences.Get("openOptionValue", "false").ToLower();
                        lastFIlter[1] = Preferences.Get("radiusValue", "40000");
                        lastFIlter[2] = Preferences.Get("categoryIndex", "0");
                        var testing = await InternetRestaurantYelpService.GetRestaurant
                            (
                                Latitude,
                                Longitude,
                                lastFIlter[0],
                                ConvertKMToM(Convert.ToDouble(lastFIlter[1])),
                                Task.Run(async () => await DependencyService.Get<ICategoriesDBService>().GetCategory(int.Parse(lastFIlter[2]))).Result.Alias
                            );
                        if (testing.total == 0)
                        {
                            ErrorVisibility = true;
                            ErrorMessage = "Could not find a place, please try later";
                        }
                        else
                        {
                            foreach (var i in testing.businesses)
                            {
                                Restaurant.Add(i);
                            }
                            await ChangePage();
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        Console.WriteLine(ex.StackTrace);
                    }
                }
                else
                {
                    ErrorMessage = "Location not found!!!";
                    ErrorVisibility = true;
                }
            }
            cts.Dispose();
            IsNotBusy = true;
        }

        async Task ViewSaved()
        {
            var route = $"{nameof(SavedRestaurantsPage)}";
            try
            {
                await Shell.Current.GoToAsync(route);
            }
            catch (Exception ex) { Console.WriteLine(ex.Message); Console.WriteLine(ex.StackTrace); }
        }


        private async Task ChangePage()
        {

            if (Restaurant.Count == 0) { return; }

            string review = Preferences.Get("minimunReview", "0");
            Business businesses = RestaurantRecommender.RecommendRestaurant(Restaurant, locations[0], locations[1], Double.Parse(Preferences.Get("minimunReview", "0")));

            int index = Restaurant.IndexOf(Restaurant.FirstOrDefault(i => i.id == businesses.id));


            var route = $"{nameof(RestaurantDetailsPage)}?RestaurantDetails={Uri.EscapeDataString(JsonConvert.SerializeObject(businesses))}";
            try
            {
                await Shell.Current.GoToAsync(route);
            }
            catch (Exception ex) { Console.WriteLine(ex.Message); Console.WriteLine(ex.StackTrace); }
            Restaurant.RemoveAt(index);
        }

        public int ConvertKMToM(double value)
        {
            return (int)(value * 1000);
        }

        private async Task OnGenerateNameCommandExecuted()
        {

            try
            {
                string namesList = await Application.Current.MainPage.DisplayPromptAsync("Providing Names", "Enter names seperated with commas");

                string[] names = namesList.Split(',').Select(i => i.Trim()).Where(i => !string.IsNullOrEmpty(i)).ToArray();

                if (names.Length == 0)
                {
                    await Application.Current.MainPage.DisplayAlert("Error", "Please enter a list of names", "OK");
                    return;
                }

                // Generate a random name from the list
                string rand = names[new Random().Next(names.Length)].Trim();

                // Display the name in a pop-up
                await Application.Current.MainPage.DisplayAlert("Result", $"You should try out {rand}", "OK");
            }
            catch (Exception ex) { Console.WriteLine(ex.Message); }
        }


    }
}
