using MainCapStone.Models;
using MainCapStone.Services;
using MvvmHelpers;
using MvvmHelpers.Commands;
using System;
using System.Threading.Tasks;

namespace MainCapStone.ViewModels
{
    public class SavedRestaurantViewModel : ViewModelBase
    {
        public ObservableRangeCollection<SavedRestaurants> SavedRestaurants { get; set; }
        public AsyncCommand RefreshCommand { get; }
        public AsyncCommand AddCommand { get; }
        public AsyncCommand<SavedRestaurants> RemoveCommand { get; }
        public SavedRestaurantViewModel()
        {
            SavedRestaurants = new ObservableRangeCollection<SavedRestaurants>();

            try
            {
                var savedRestaurants = Task.Run(async () => await SavedRestaurantsDBService.GetSavedRestaurants()).Result;

                SavedRestaurants.AddRange(savedRestaurants);
            }
            catch (Exception ex) { Console.WriteLine(ex.Message); Console.WriteLine(ex.StackTrace); }
            RefreshCommand = new AsyncCommand(Refresh);

            RemoveCommand = new AsyncCommand<SavedRestaurants>(Remove);

        }

        async Task Remove(SavedRestaurants savedRestaurants)
        {
            await SavedRestaurantsDBService.RemoveSavedRestaurants(savedRestaurants.Id);
            await Refresh();
        }

        async Task Refresh()
        {
            IsBusy = true;

            await Task.Delay(2000);

            SavedRestaurants.Clear();

            var savedRestaurants = await SavedRestaurantsDBService.GetSavedRestaurants();

            SavedRestaurants.AddRange(savedRestaurants);

            IsBusy = false;
        }
    }
}
