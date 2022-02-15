using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Media.Animation;
using Microsoft.UI.Xaml.Navigation;
using PixivFunc.Views.Pages.AnyNew;
using PixivFunc.Views.Pages.Bookmarked;
using PixivFunc.Views.Pages.FollowerNew;
using PixivFunc.Views.Pages.Following;
using PixivFunc.Views.Pages.Ranking;
using PixivFunc.Views.Pages.Recommend;
using PixivFunc.Views.Pages.Search;
using PixivFunc.Views.Pages.Settings;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace PixivFunc.Views
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class ShellView : Page
    {
        private readonly Dictionary<NavigationPage, Type> pages = new()
        {
            { NavigationPage.Recommend, typeof(RecommendPage) },
            { NavigationPage.Ranking, typeof(RankingPage) },
            { NavigationPage.Bookmarked, typeof(BookmarkedPage) },
            { NavigationPage.Following, typeof(FollowingPage) },
            { NavigationPage.FollowerNew, typeof(FollowerNewPage) },
            { NavigationPage.AnyNew, typeof(AnyNewPage) },
            { NavigationPage.Search, typeof(SearchPage) },
            { NavigationPage.Settings, typeof(SettingsPage) },
        };

        public enum NavigationPage
        {
            Recommend,
            Ranking,
            Bookmarked,
            Following,
            FollowerNew,
            AnyNew,
            Search,
            Settings,
        }

        public ShellView()
        {
            this.InitializeComponent();
        }

        private void NavView_Loaded(object sender, RoutedEventArgs e)
        {
            NavigationView view = (NavigationView)sender;

            NavigationViewItem settingsItem = (NavigationViewItem)view.SettingsItem;

            settingsItem.Content = "设置";
            view.SelectedItem = view.MenuItems.First();
            NavigateTo(NavigationPage.Recommend);
        }

        private void NavView_ItemInvoked(NavigationView sender, NavigationViewItemInvokedEventArgs args)
        {
            NavigateTo(Enum.Parse<NavigationPage>(args.InvokedItemContainer.Tag.ToString()!), args.RecommendedNavigationTransitionInfo);
        }

        private void NavView_BackRequested(NavigationView sender, NavigationViewBackRequestedEventArgs args)
        {
            TryGoBack();
        }

        private void NavigateTo(NavigationPage page, NavigationTransitionInfo? transitionInfo = null)
        {
            if (contentFrame.SourcePageType == pages[page])
            {
                return;
            }

            if (transitionInfo is null)
            {
                contentFrame.Navigate(pages[page]);
            }
            else
            {
                contentFrame.Navigate(pages[page], null, transitionInfo);
            }
        }


        private bool TryGoBack()
        {
            if (!contentFrame.CanGoBack)
                return false;

            if (NavView.IsPaneOpen &&
                (NavView.DisplayMode == NavigationViewDisplayMode.Compact ||
                 NavView.DisplayMode == NavigationViewDisplayMode.Minimal))
                return false;

            contentFrame.GoBack();

            var pagePari = pages.Single((pari) => pari.Value == contentFrame.SourcePageType);

            NavView.SelectedItem = NavView.MenuItems.Single((obj) =>
            {
                NavigationViewItem item = (NavigationViewItem)obj;
                return item.Tag.ToString() == pagePari.Key.ToString();
            });

            return true;
        }


    }
}
