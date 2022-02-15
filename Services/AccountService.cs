using LiteDB;
using PixivAPI;
using PixivAPI.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.Storage;

namespace PixivFunc.Services
{
    internal interface IAccountService
    {
        public List<UserAccountDTO> UserAccounts { get; }
        public void Add(UserAccountDTO userAccount);
        public UserAccountDTO GetUserAccount();
    }

    internal class AccountService : IAccountService
    {

        public List<UserAccountDTO> UserAccounts { get; }

        public AccountService()
        {
            object accounts = ApplicationData.Current.LocalSettings.Values["Accounts"];
            if (accounts is string @string)
            {
                UserAccounts = new(Json.Decode<UserAccountDTO[]>(@string));
            }
            else
            {
                UserAccounts = new();
            }
        }

        public void Add(UserAccountDTO userAccount)
        {
            UserAccounts.Add(userAccount);

            ApplicationData.Current.LocalSettings.Values["Accounts"] = Json.Encode(UserAccounts);
        }

        public UserAccountDTO GetUserAccount()
        {
            return UserAccounts.Last();
        }

    }
}
