using MainCapStone.Models;
using MainCapStone.Services;
using MainCapStone.yelpAPI;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading.Tasks;

namespace Tests
{
    [TestClass]
    public class InternetRestaurantYelpServiceTests
    {
        [TestMethod]
        public async Task GetRestaurantTest()
        {
            Root result = await InternetRestaurantYelpService.GetRestaurant();

            // Assert
            Assert.IsNotNull(result);
            Assert.IsTrue(result.businesses.Count > 0);
        }
    }
}
