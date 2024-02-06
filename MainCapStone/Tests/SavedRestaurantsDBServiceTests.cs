using MainCapStone.yelpAPI;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Linq;
using System.Threading.Tasks;
using Tests;

namespace Tests
{
    [TestClass]
    public class SavedRestaurantsDBServiceTestableTests
    {
        [TestInitialize]
        public async Task TestInitialize()
        {
            await SavedRestaurantsDBServiceTestable.DeleteAllCategoriesAsync();
        }

        [TestCleanup]
        public void TestCleanup()
        {
            SavedRestaurantsDBServiceTestable.Dispose();
        }

        [TestMethod]
        public async Task AddSavedRestaurantsTest()
        {
            var sampleBusiness = new Business { id = "1", name = "Mcdonalds" };
            await SavedRestaurantsDBServiceTestable.AddSavedRestaurants(sampleBusiness);

            var savedRestaurants = await SavedRestaurantsDBServiceTestable.GetSavedRestaurants();
            Assert.AreEqual(1, savedRestaurants.Count());
            Assert.AreEqual("Mcdonalds", savedRestaurants.First().Name);
        }

        [TestMethod]
        public async Task RemoveSavedRestaurantsTest()
        {
            var sampleBusiness = new Business { id = "1", name = "Mcdonalds" };
            await SavedRestaurantsDBServiceTestable.AddSavedRestaurants(sampleBusiness);

            var savedRestaurants = await SavedRestaurantsDBServiceTestable.GetSavedRestaurants();
            var idToRemove = savedRestaurants.First().Id;
            await SavedRestaurantsDBServiceTestable.RemoveSavedRestaurants(idToRemove);

            savedRestaurants = await SavedRestaurantsDBServiceTestable.GetSavedRestaurants();
            Assert.AreEqual(0, savedRestaurants.Count());
        }

        [TestMethod]
        public async Task RemoveSavedRestaurantsByNameTest()
        {
            var sampleBusiness = new Business { id = "1", name = "Mcdonalds" };
            await SavedRestaurantsDBServiceTestable.AddSavedRestaurants(sampleBusiness);

            await SavedRestaurantsDBServiceTestable.RemoveSavedRestaurantsByName("Mcdonalds");

            var savedRestaurants = await SavedRestaurantsDBServiceTestable.GetSavedRestaurants();
            Assert.AreEqual(0, savedRestaurants.Count());
        }

        [TestMethod]
        public async Task GetSavedRestaurantsTest()
        {
            var sampleBusiness1 = new Business { id = "1", name = "Mcdonalds" };
            var sampleBusiness2 = new Business { id = "2", name = "KFC" };

            await SavedRestaurantsDBServiceTestable.AddSavedRestaurants(sampleBusiness1);
            await SavedRestaurantsDBServiceTestable.AddSavedRestaurants(sampleBusiness2);

            var savedRestaurants = await SavedRestaurantsDBServiceTestable.GetSavedRestaurants();
            Assert.AreEqual(2, savedRestaurants.Count());
        }

        [TestMethod]
        public async Task CheckSavedRestaurantsTest()
        {
            var sampleBusiness = new Business { id = "1", name = "Mcdonalds" };
            await SavedRestaurantsDBServiceTestable.AddSavedRestaurants(sampleBusiness);

            bool exists = await SavedRestaurantsDBServiceTestable.CheckSavedRestaurants(sampleBusiness);
            Assert.IsTrue(exists);
        }
    }
}
