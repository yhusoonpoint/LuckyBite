using MainCapStone.Models;
using MainCapStone.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Tests
{
    [TestClass]
    public class CategoriesDBServiceTests
    {
        private CategoriesDBServiceTestable _categoriesDBServiceTestable;

        [TestInitialize]
        public void TestInitialize()
        {
            var testDBPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "TestMyData.db");
            _categoriesDBServiceTestable = new CategoriesDBServiceTestable(testDBPath);
            _categoriesDBServiceTestable.DeleteAllCategoriesAsync().Wait();
        }


        [TestCleanup]
        public void TestCleanup()
        {
            _categoriesDBServiceTestable.Dispose();

            var testDBPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "TestMyData.db");
            if (File.Exists(testDBPath))
            {
                File.Delete(testDBPath);
            }
        }


        [TestMethod]
        public async Task AddCategoryTest()
        {
            string name = "Test Name";
            string alias = "test_alias";
            int ID = 1;

            await _categoriesDBServiceTestable.AddCategory(name, alias, ID);
            var categories = await _categoriesDBServiceTestable.GetCategory();
            Assert.AreEqual(1, categories.Count());
            Assert.AreEqual(name, categories.First().Name);
            Assert.AreEqual(alias, categories.First().Alias);
            Assert.AreEqual(ID, categories.First().id);
        }

        [TestMethod]
        public async Task GetCategoryByIdTest()
        {
            string name = "Test Name";
            string alias = "test_alias";
            int ID = 1;

            await _categoriesDBServiceTestable.AddCategory(name, alias, ID);
            var category = await _categoriesDBServiceTestable.GetCategory(ID);

            Assert.IsNotNull(category);
            Assert.AreEqual(name, category.Name);
            Assert.AreEqual(alias, category.Alias);
            Assert.AreEqual(ID, category.id);
        }

        [TestMethod]
        public async Task RemoveCategoryTest()
        {
            string name = "Test Name";
            string alias = "test_alias";
            int ID = 1;

            await _categoriesDBServiceTestable.AddCategory(name, alias, ID);
            await _categoriesDBServiceTestable.RemoveCategory(ID);
            var category = await _categoriesDBServiceTestable.GetCategory(ID);

            Assert.IsNull(category);
        }

        [TestMethod]
        public async Task TableCountTest()
        {
            string name = "Test Name";
            string alias = "test_alias";
            int ID = 1;

            await _categoriesDBServiceTestable.AddCategory(name, alias, ID);
            int tableCount = await _categoriesDBServiceTestable.TableCount();

            Assert.AreEqual(1, tableCount);
        }
    }
}
