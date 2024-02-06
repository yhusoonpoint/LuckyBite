using MainCapStone.yelpAPI;
using Newtonsoft.Json;
using SQLite;

namespace MainCapStone.Models
{
    public class SavedRestaurants
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Data { get; set; }

        [Ignore]
        public Business BusinessData
        {
            get => JsonConvert.DeserializeObject<Business>(Data);
            set => Data = JsonConvert.SerializeObject(value);
        }
    }
}
