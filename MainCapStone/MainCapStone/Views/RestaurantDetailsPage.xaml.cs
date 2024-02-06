using MainCapStone.Services;
using MainCapStone.yelpAPI;
using Newtonsoft.Json;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Xaml;

namespace MainCapStone.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    [QueryProperty(nameof(RestaurantDetails), nameof(RestaurantDetails))]

    public partial class RestaurantDetailsPage : ContentPage
    {
        public string RestaurantDetails { get; set; }

        public Business Result { get; set; }

        public RestaurantDetailsPage()
        {
            InitializeComponent();
            Result = new Business();
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();

            Result = JsonConvert.DeserializeObject<Business>(RestaurantDetails);
            int starFilling = (int)Math.Floor(Result.rating);
            for (int i = 0; i < starFilling; i++)
            {
                ((Image)stars.Children[i]).Source = "full_star.png";
            }

            if (Result.rating - starFilling == 0.5) { ((Image)stars.Children[starFilling]).Source = "half_star.png"; }

            Image restaurantImage = (Image)FindByName("restaurantImage");


            if (string.IsNullOrEmpty(Result.image_url))
                Result.image_url = "https://media.istockphoto.com/id/1420881183/vector/no-image-available-illustration-isolated-placeholder.jpg?s=612x612&w=0&k=20&c=uJkcaL6mEZpLHIlX9klz8CclzmrTHNAHUNdyLNvphAA=";

            try
            {
                restaurantImage.Source = Result.image_url;
            }
            catch (Exception)
            {
                restaurantImage.Source = "https://media.istockphoto.com/id/1420881183/vector/no-image-available-illustration-isolated-placeholder.jpg?s=612x612&w=0&k=20&c=uJkcaL6mEZpLHIlX9klz8CclzmrTHNAHUNdyLNvphAA=";
            }
            BindingContext = Result;

            bool favorite = Task.Run(() => SavedRestaurantsDBService.CheckSavedRestaurants(Result)).Result;

            favourite.IconImageSource = favorite ? "filled_heart.png" : "empty_heart.png";

            // Set up the map
            MyMap.MapType = MapType.Street;

            // Create a new pin at the provided location
            var position = new Position(Result.coordinates.latitude, Result.coordinates.longitude);
            var pin = new Pin
            {
                Type = PinType.Place,
                Position = position,
                Label = Result.name,
                Address = "Lat: " + Result.coordinates.latitude + ", Long: " + Result.coordinates.longitude
            };

            // Add the pin to the map
            MyMap.Pins.Add(pin);

            // Center the map on the pin
            MyMap.MoveToRegion(MapSpan.FromCenterAndRadius(position, Distance.FromMiles(1)));

        }

        private async void Website_Clicked(object sender, EventArgs e)
        {
            await Launcher.OpenAsync(urlLink.Text);
        }

        private async void Phone_Clicked(object sender, EventArgs e)
        {
            await Launcher.OpenAsync(new Uri("tel:" + phoneLink.Text));
        }

        private async void Add_Clicked(object sender, EventArgs e)
        {
            if (await SavedRestaurantsDBService.CheckSavedRestaurants(Result))
            {
                await SavedRestaurantsDBService.RemoveSavedRestaurantsByName(Result.name);
                favourite.IconImageSource = "empty_heart.png";
            }
            else
            {
                await SavedRestaurantsDBService.AddSavedRestaurants(Result);
                favourite.IconImageSource = "filled_heart.png";
            }
        }

        private async void Direction_Clicked(object sender, EventArgs e)
        {
            await Launcher.OpenAsync(new Uri("geo:" + directionLat.Text + "," + directionLong.Text + "?q=" + directionLat.Text + "," + directionLong.Text));
        }
    }
}