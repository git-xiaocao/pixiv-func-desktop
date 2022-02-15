using Microsoft.Toolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PixivFunc.ViewModels
{
    internal interface IListDataSource<T> where T : class
    {

        public ObservableCollection<T> Items { get; }

        public bool HasNext { get; }

        public ICommand RefreshCommand { get; }

        public void Refresh();
    }

}
