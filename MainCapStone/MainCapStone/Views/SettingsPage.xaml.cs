using MainCapStone.Helpers;
using MainCapStone.Services;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MainCapStone.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SettingsPage : ContentPage
    {
        ICategoriesDBService categoriesDBService;
        public SettingsPage()
        {
            InitializeComponent();

            switch (Settings.Theme)
            {
                case 0:
                    RadioButtonSystem.IsChecked = true;
                    break;
                case 1:
                    RadioButtonLight.IsChecked = true;
                    break;
                case 2:
                    RadioButtonDark.IsChecked = true;
                    break;
            }
            categoriesDBService = DependencyService.Get<CategoriesDBService>();
        }

        private void ImageButton_Clicked(object sender, EventArgs e)
        {
            Console.WriteLine(((ImageButton)stars.Children[0]).Source.ToString());

            if ((ImageButton)stars.Children[0] == sender && ((ImageButton)stars.Children[0]).Source.ToString().Contains("full_star.png"))
            {
                ((ImageButton)stars.Children[0]).Source = "no_star.png";
                RemoveStars();
                Preferences.Set("minimunReview", "0");
                return;
            }

            RemoveStars();


            for (int i = 0; i < 5; i++)
            {

                ((ImageButton)stars.Children[i]).Source = "full_star.png";
                Preferences.Set("minimunReview", (i + 1).ToString());
                if ((ImageButton)stars.Children[i] == sender)
                    break;
            }

        }

        private void RemoveStars()
        {
            for (int i = 0; i < 5; i++)
            {
                ((ImageButton)stars.Children[i]).Source = "no_star.png";
            }
        }


        bool loaded;
        protected override void OnAppearing()
        {
            base.OnAppearing();
            loaded = true;
        }

        void RadioButton_CheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            if (!loaded)
                return;

            if (!e.Value)
                return;

            var val = (sender as RadioButton)?.Value as string;
            if (string.IsNullOrWhiteSpace(val))
                return;

            switch (val)
            {
                case "System":
                    Settings.Theme = 0;
                    break;
                case "Light":
                    Settings.Theme = 1;
                    break;
                case "Dark":
                    Settings.Theme = 2;
                    break;
            }

            TheTheme.SetTheme();
        }
    }
}