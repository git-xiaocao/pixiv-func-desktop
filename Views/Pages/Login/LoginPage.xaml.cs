using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using Microsoft.Web.WebView2.Core;
using PixivFunc.Container;
using PixivFunc.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace PixivFunc.Views.Pages.Login
{
    public sealed partial class LoginPage : Page
    {
        private LoginArgs? args;
        public LoginPage()
        {
            InitializeComponent();
        }

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            this.args = (LoginArgs)e.Parameter;
            Environment.SetEnvironmentVariable("WEBVIEW2_ADDITIONAL_BROWSER_ARGUMENTS", $"--proxy-server=127.0.0.1:12345 --ignore-certificate-errors");

            this.InitializeComponent();
            myWebView.CoreWebView2Initialized += CoreWebView2Initialized;
            myWebView.Source = new Uri(PixivAPI.Utils.GenerateLoginUrl(PixivAPI.Utils.GenerateCodeChallenge(args.CodeVerifier), args.IsCreate));
            base.OnNavigatedTo(e);
        }

        private void CoreWebView2Initialized(WebView2 webView, CoreWebView2InitializedEventArgs args)
        {
            webView.CoreWebView2.NavigationStarting += NavigationStarting;
            webView.CoreWebView2.Settings.AreDevToolsEnabled = false;
            webView.CoreWebView2.Settings.IsStatusBarEnabled = true;
            webView.Language = "zh-CN";
        }



        private async void NavigationStarting(CoreWebView2 coreWebView2, CoreWebView2NavigationStartingEventArgs args)
        {
            if (PixivAPI.Utils.CheckUrlLogin(args.Uri, out string code))
            {
                var result = await Instances.Get<PixivAPI.AuthClient>().InitAuthToken(code, this.args!.CodeVerifier);

                Instances.Get<IAccountService>().Add(result);
                this.args.LoginSuccessCallback.Invoke();
            }
        }

        private void Page_Unloaded(object sender, RoutedEventArgs e)
        {
            myWebView.CoreWebView2.Stop();
        }
    }

    public sealed partial class LoginArgs
    {
        public bool IsCreate { get; set; }
        public string CodeVerifier { get; set; } = default!;
        public Action LoginSuccessCallback { get; set; } = default!;
    }
}
