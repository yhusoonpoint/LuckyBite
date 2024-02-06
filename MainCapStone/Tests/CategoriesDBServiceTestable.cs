﻿using MainCapStone.Models;
using MainCapStone.Services;
using SQLite;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Tests
{
    public class CategoriesDBServiceTestable
    {
        SQLiteAsyncConnection db;
        string _dbPath;

        public CategoriesDBServiceTestable(string dbPath)
        {
            _dbPath = dbPath;
            Init().Wait();
        }
        public void Dispose()
        {
            if (db != null)
            {
                Task.Run(() => db.CloseAsync()).Wait();
                db = null;
            }
        }
        public async Task DeleteAllCategoriesAsync()
        {
            await Init();
            await db.DeleteAllAsync<FoodCategories>();
        }


        async Task Init()
        {
            if (db != null)
                return;

            db = new SQLiteAsyncConnection(_dbPath);

            await db.CreateTableAsync<FoodCategories>();

            var tablecheck = Task.Run(() => IsTableEmpty("FoodCategories"));

            if (tablecheck.Result)
            {
                try
                {
                    var testing = await InternetCategoriesService.GetCategories();
                    testing.categories.Sort((x, y) => x.title.CompareTo(y.title));
                    await AddCategory("All Restuarants", "all", 0);
                    int id = 1;
                    foreach (var i in testing.categories)
                    {
                        if (i.parent_aliases.Contains("restaurants"))
                        {
                            if (i.title.Equals("Fast Food"))
                                await AddCategory(i.title + " Restaurants", "fastfood", id);
                            else
                                await AddCategory(i.title + " Restaurants", i.alias, id);
                            id++;
                        }
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
        public async Task AddCategory(string name, string alias, int ID)
        {
            await Init();
            var foodCategroies = new FoodCategories { id = ID, Name = name, Alias = alias };
            var id = await db.InsertAsync(foodCategroies);
        }

        public async Task<IEnumerable<FoodCategories>> GetCategory()
        {
            await Init();

            var foodCategory = await db.Table<FoodCategories>().ToListAsync();

            return foodCategory;
        }

        public async Task<FoodCategories> GetCategory(int ID)
        {
            await Init();
            var foodCategory = await db.Table<FoodCategories>().FirstOrDefaultAsync(c => c.id == ID);
            Console.WriteLine();
            return foodCategory;
        }

        public async Task RemoveCategory(int id)
        {
            await db.Table<FoodCategories>().DeleteAsync(c => c.id == id);
        }
        public async Task<int> TableCount()
        {
            await Init();
            return db.Table<FoodCategories>().CountAsync().Result;

        }

        public async Task<bool> IsTableEmpty(string tableName)
        {
            await Init();
            var result = await db.ExecuteScalarAsync<int>($"SELECT COUNT(*) FROM {tableName}");
            return result == 0;
        }

        public async Task DropTable()
        {
            await Init();
            await db.DropTableAsync<FoodCategories>();
        }
    }
}
