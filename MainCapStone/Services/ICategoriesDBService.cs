using MainCapStone.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace MainCapStone.Services
{
    public interface ICategoriesDBService
    {
        Task AddCategory(string name, string alias, int id);
        Task<IEnumerable<FoodCategories>> GetCategory();
        Task<FoodCategories> GetCategory(int id);
        Task RemoveCategory(int id);
        Task<int> TableCount();
        Task DropTable();
        Task<bool> IsTableEmpty(string tableName);
    }
}
