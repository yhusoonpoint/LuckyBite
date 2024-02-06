using MainCapStone.yelpAPI;
using MonkeyCache.FileStore;
using Newtonsoft.Json;
using System;
using System.Diagnostics;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace MainCapStone.Services
{

    public static class InternetRestaurantYelpService
    {
        static string BaseUrl = "https://api.yelp.com/v3/businesses/search";

        static HttpClient client;

        static InternetRestaurantYelpService()
        {
            client = new HttpClient();
            try
            {
                client.BaseAddress = new Uri(BaseUrl);
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                client.DefaultRequestHeaders.TryAddWithoutValidation("Authorization", "Bearer xxxxxxxxxxxxxxxxxxxx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public static Task<Root> GetRestaurant() =>
            GetAsync<Root>("?latitude=51.8795&longitude=0.9278&term=restaurants&radius=40000&categories=all&open_now=true&sort_by=distance&device_platform=mobile-generic&limit=50", "getResturantViaYelp");

        public static Task<Root> GetRestaurant(double lat, double lon, string open, int rad, string cat) =>
            GetAsync<Root>("?latitude=" + lat + "&longitude=" + lon + "&term=restaurants&radius=" + rad + "&categories=" + cat + "&open_now=" + open + "&sort_by=distance&device_platform=mobile-generic&limit=50", "getResturantViaYelp");

        static async Task<T> GetAsync<T>(string url, string key, int mins = 1, bool forceRefresh = false)
        {
            var json = string.Empty;

            if (Connectivity.NetworkAccess != NetworkAccess.Internet)
                json = Barrel.Current.Get<string>(key);

            try
            {
                if (string.IsNullOrWhiteSpace(json))
                {
                    try
                    {
                        json = await client.GetStringAsync(url);
                    }
                    catch (Exception ex) { Console.WriteLine(ex.Message); }

                    Barrel.Current.Add(key, json, TimeSpan.FromMinutes(mins));
                }
                return JsonConvert.DeserializeObject<T>(json);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Unable to get information from server {ex}");
                throw ex;
            }
        }



    }

}
