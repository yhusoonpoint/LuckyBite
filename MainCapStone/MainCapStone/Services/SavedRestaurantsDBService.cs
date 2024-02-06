using MainCapStone.Models;
using MainCapStone.yelpAPI;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace MainCapStone.Services
{
    public static class SavedRestaurantsDBService
    {
        static SQLiteAsyncConnection db;
        static async Task Init()
        {
            if (db != null)
                return;

            // Get an absolute path to the database file
            var databasePath = Path.Combine(FileSystem.AppDataDirectory, "MyData.db");

            db = new SQLiteAsyncConnection(databasePath);

            await db.CreateTableAsync<SavedRestaurants>();
        }

        public static async Task AddSavedRestaurants(Business data)
        {
            await Init();
            try
            {
                if (await CheckSavedRestaurants(data))
                    return;
                var savedRestaurant = new SavedRestaurants
                {
                    Name = data.name,
                    BusinessData = data
                };
                var id = await db.InsertAsync(savedRestaurant);
            }
            catch (Exception ex) { Console.WriteLine(ex.ToString()); Console.WriteLine(ex.StackTrace); }
        }

        public static async Task RemoveSavedRestaurants(int id)
        {

            await Init();

            await db.DeleteAsync<SavedRestaurants>(id);
        }
        public static async Task RemoveSavedRestaurantsByName(string name)
        {
            await Init();

            var savedRestaurant = await db.Table<SavedRestaurants>()
                .Where(r => r.Name == name)
                .FirstOrDefaultAsync();

            if (savedRestaurant != null)
            {
                await db.DeleteAsync<SavedRestaurants>(savedRestaurant.Id);
            }
        }

        public static async Task<IEnumerable<SavedRestaurants>> GetSavedRestaurants()
        {
            try
            {
                await Init();

                var savedRestaurants = await db.Table<SavedRestaurants>().ToListAsync();
                return savedRestaurants;
            }
            catch (Exception ex) { Console.WriteLine(ex.Message); Console.WriteLine(ex.StackTrace); }
            return null;
        }
        public static async Task<bool> CheckSavedRestaurants(Business data)
        {
            await Init();
            try
            {
                var query = db.Table<SavedRestaurants>().Where(x => x.Name == data.name);
                if (query == null)
                {
                    return false;
                }
                var existingRecord = await query.ToListAsync();
                return existingRecord != null && existingRecord.Count != 0;
            }
            catch (Exception ex) { Console.WriteLine(ex.Message + Environment.NewLine + ex.StackTrace); }
            return false;
        }
        public static async Task DropTable()
        {
            await Init();
            await db.DropTableAsync<SavedRestaurants>();
        }

    }
}