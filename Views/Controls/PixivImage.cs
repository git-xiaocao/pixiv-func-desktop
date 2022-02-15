using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Documents;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Markup;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Media.Imaging;
using PixivAPI.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Runtime.InteropServices.WindowsRuntime;


// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace PixivFunc.Views.Controls
{
    public sealed class PixivImage : ContentControl
    {
        private static readonly HttpClient client;

        public readonly DependencyProperty IllustProperty;

        static PixivImage()
        {

            client = new HttpClient(new HttpClientHandler() { ServerCertificateCustomValidationCallback = delegate { return true; } });

        }

        public PixivImage()
        {
            this.DefaultStyleKey = typeof(PixivImage);
            IllustProperty = DependencyProperty.Register(
            "Illust",
            typeof(IllustEntity),
            typeof(PixivImage),
            new PropertyMetadata(null, delegate (DependencyObject d, DependencyPropertyChangedEventArgs e) { Load(); }));

        }




        public new Image? Content { get; set; }

        public IllustEntity Illust
        {
            get
            {
                return (IllustEntity)GetValue(IllustProperty);
            }
            set
            {
                SetValue(IllustProperty, value);
                Load();
            }
        }



        public async void Load()
        {

            Content = new Image();

            Stream s = await client.GetStreamAsync(Illust.ImageUrls.Medium.Replace("i.pximg.net","i.pixiv.re"));
            BitmapImage bitmap = new();

            MemoryStream ms = new();
            s.CopyTo(ms);
            ms.Seek(0, SeekOrigin.Begin);
            await bitmap.SetSourceAsync(ms.AsRandomAccessStream());

            Content.Source = bitmap;
            Content.Width = 250;
            Content.Height = 250;
        }

    }
}
