using MainCapStone.Views;
using Xamarin.Forms;

namespace MainCapStone
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(RestaurantDetailsPage), typeof(RestaurantDetailsPage));
            Routing.RegisterRoute(nameof(SavedRestaurantsPage), typeof(SavedRestaurantsPage));
        }

    }
}
