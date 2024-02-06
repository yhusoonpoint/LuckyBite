using MainCapStone.Models;
using MainCapStone.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading.Tasks;

namespace Tests
{
    [TestClass]
    public class InternetCategoriesServiceTests
    {
        [TestMethod]
        public async Task GetCategoriesTest()
        {
            // Arrange

            // Act
            CategoryRoot result = await InternetCategoriesService.GetCategories();

            // Assert
            Assert.IsNotNull(result);
        }
    }
}
