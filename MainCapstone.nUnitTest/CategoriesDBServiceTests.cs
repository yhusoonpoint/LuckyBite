using MainCapStone.Services;

namespace MainCapStone.nUnitTest
{
    [TestFixture]
    public class CategoriesDBServiceTests
    {
        private CategoriesDBService _categoriesDBService;

        [SetUp]
        public void Setup()
        {
            _categoriesDBService = new CategoriesDBService();
        }

        [Test]
        public async Task AddCategory_ShouldAddCategoryToDatabase()
        {
            // Arrange
            var name = "TestCategory";
            var alias = "testcategory";
            var id = 1;

            // Act
            await _categoriesDBService.AddCategory(name, alias, id);
            var categories = await _categoriesDBService.GetCategory();

            // Assert
            var addedCategory = categories.FirstOrDefault(c => c.Name == name);
            Assert.IsNotNull(addedCategory);
            Assert.AreEqual(id, addedCategory.id);
            Assert.AreEqual(alias, addedCategory.Alias);

            // Clean up
            await _categoriesDBService.RemoveCategory(id);
        }

        [Test]
        public async Task GetCategory_ShouldReturnAllCategories()
        {
            // Arrange
            await _categoriesDBService.AddCategory("TestCategory1", "testcategory1", 1);
            await _categoriesDBService.AddCategory("TestCategory2", "testcategory2", 2);

            // Act
            var categories = await _categoriesDBService.GetCategory();

            // Assert
            Assert.IsNotNull(categories);
            Assert.AreEqual(2, categories.Count());

            // Clean up
            await _categoriesDBService.DropTable();
        }

        [Test]
        public async Task GetCategory_ShouldReturnCategoryById()
        {
            // Arrange
            var name = "TestCategory";
            var alias = "testcategory";
            var id = 1;
            await _categoriesDBService.AddCategory(name, alias, id);

            // Act
            var category = await _categoriesDBService.GetCategory(id);

            // Assert
            Assert.IsNotNull(category);
            Assert.AreEqual(name, category.Name);
            Assert.AreEqual(alias, category.Alias);

            // Clean up
            await _categoriesDBService.RemoveCategory(id);
        }
    }
}
