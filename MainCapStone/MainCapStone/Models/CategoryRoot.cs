using System.Collections.Generic;

namespace MainCapStone.Models
{
    public class Category
    {
        public string alias { get; set; }
        public string title { get; set; }
        public List<string> parent_aliases { get; set; }
        public List<string> country_whitelist { get; set; }
        public List<string> country_blacklist { get; set; }
    }

    public class CategoryRoot
    {
        public List<Category> categories { get; set; }
    }
}
