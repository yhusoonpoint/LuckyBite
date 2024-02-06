using MainCapStone.Helpers;
using MonkeyCache.FileStore;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace MainCapStone
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();
            Barrel.ApplicationId = AppInfo.PackageName;
            MainPage = new AppShell();
        }

        protected override async void OnStart()
        {

            OnResume();
            base.OnStart();
            // Show the MainPage
            await Shell.Current.GoToAsync("//MainPage");
        }

        protected override void OnSleep()
        {
            TheTheme.SetTheme();
            RequestedThemeChanged -= App_RequestedThemeChanged;
        }

        protected override void OnResume()
        {
            TheTheme.SetTheme();
            RequestedThemeChanged += App_RequestedThemeChanged;
        }

        private void App_RequestedThemeChanged(object sender, AppThemeChangedEventArgs e)
        {
            MainThread.BeginInvokeOnMainThread(() =>
            {
                TheTheme.SetTheme();
            });
        }
    }
}
