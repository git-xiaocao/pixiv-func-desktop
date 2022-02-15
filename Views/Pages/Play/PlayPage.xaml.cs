using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Media.Animation;
using Microsoft.UI.Xaml.Navigation;
using PixivFunc.Views.Pages.Login;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace PixivFunc.Views.Pages.Play
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class PlayPage : Page
    {
        public PlayPage()
        {
            this.InitializeComponent();
        }

        private void ToLoginButton_Click(object sender, RoutedEventArgs e)
        {
            ToLoginPage(false);
        }

        private void ToRegisterButton_Click(object sender, RoutedEventArgs e)
        {
            ToLoginPage(true);
        }

        private void ToLoginPage(bool isCreate)
        {
            Frame.Navigate(typeof(LoginPage), new LoginArgs()
            {
                IsCreate = isCreate,
                CodeVerifier = PixivAPI.Utils.RandomString(128),
                LoginSuccessCallback = () =>
                {
                    ((App)Application.Current).ChangeToShellView();
                }
            });
        }

    }
}
