using Microsoft.Toolkit.Mvvm.ComponentModel;
using Microsoft.Toolkit.Mvvm.Input;
using PixivAPI;
using PixivAPI.DTO;
using PixivAPI.Entity;
using PixivFunc.Container;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PixivFunc.ViewModels
{
    internal class RecommendViewModel : ObservableObject, IListDataSource<IllustEntity>
    {
        private ApiClient ApiClient { get; } = Instances.Get<ApiClient>();

        public ObservableCollection<IllustEntity> Items { get; } = new();

        public bool HasNext { get; set; }

        public ICommand RefreshCommand { get; }

        public RecommendViewModel()
        {
            RefreshCommand = new RelayCommand(Refresh);
            Items.CollectionChanged += delegate (object? sender, NotifyCollectionChangedEventArgs e)
            {
                OnPropertyChanged(nameof(Items));
            };

        }



        public async void Refresh()
        {
            IllustsDTO result = await ApiClient.GetRecommendedIllusts(IllustType.Illust);
            foreach(var item in result.Illusts)
            {
                Items.Add(item);
            }

        }
    }
}
