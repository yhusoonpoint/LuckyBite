using Microsoft.VisualStudio.TestTools.UnitTesting;
using MainCapStone.ViewModels;
using System.Linq;

namespace Tests
{
    [TestClass]
    public class MainViewModelTests
    {
        [DataTestMethod]
        [DataRow(0, 0)]
        [DataRow(1, 1000)]
        [DataRow(1.5, 1500)]
        [DataRow(10, 10000)]
        public void ConvertKMToM_ReturnsCorrectValue(double km, int expectedMeters)
        {
            // Arrange
            var viewModel = new MainViewModel();

            // Act
            var result = viewModel.ConvertKMToM(km);

            // Assert
            Assert.AreEqual(expectedMeters, result);
        }

        [DataTestMethod]
        [DataRow("McDonals, KFC, Subway, Dominoes", 4)]
        [DataRow("McDonals, KFC, , Dominoes", 3)]
        [DataRow(" , , ", 0)]
        [DataRow(",,", 0)]
        [DataRow("", 0)]
        public void OnGenerateNameCommandExecuted_ArrayContainsNoNullValues(string namesInput, int numberOfRealNames)
        {
            // Act
            string[] names = namesInput.Split(',').Select(i => i.Trim()).Where(i => !string.IsNullOrEmpty(i)).ToArray();

            // Assert
            Assert.IsTrue(names.Length == numberOfRealNames);
        }
    }
}