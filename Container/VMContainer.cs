using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PixivFunc.Container
{
    /// <summary>
    /// 视图模型(ViewModel)容器
    /// </summary>
    internal static class VMContainer
    {
        private static readonly Dictionary<string, object> keyValuePairs = new();

        public static T Add<T>(string tag, Func<T> createInstanceFunc)
        {
            if (keyValuePairs.ContainsKey(tag))
            {
                throw new InstanceExistException<T>(tag);
            }
            else
            {
                T newInstance = createInstanceFunc();
                keyValuePairs[tag] = newInstance!;
                return newInstance;
            }
        }

        public static T Add<T>(Func<T> createInstanceFunc)
        {
            return Add(typeof(T).FullName!, createInstanceFunc);
        }

        public static T Get<T>(string tag)
        {
            if (keyValuePairs.TryGetValue(tag, out object? instance))
            {
                if (instance is T @object)
                {
                    return @object;
                }
                else if (instance is null)
                {
                    throw new InstanceNotExistException<T>();
                }
                else
                {
                    throw new DifferentTypeException<T>(typeof(T).FullName!);
                }
            }
            else
            {
                throw new InstanceNotExistException<T>();
            }
        }

        public static T Get<T>()
        {
            return Get<T>(typeof(T).FullName!);
        }

        public static void Delete<T>(string tag)
        {
            if (keyValuePairs.ContainsKey(tag))
            {
                if (keyValuePairs[tag] is T)
                {
                    keyValuePairs.Remove(tag);
                }
                else
                {
                    throw new DifferentTypeException<T>(keyValuePairs[tag].GetType().FullName!);
                }
            }
            else
            {
                throw new InstanceNotExistException<T>(tag);
            }

        }

        public static void Delete<T>()
        {
            Delete<T>(typeof(T).FullName!);
        }

        public static bool IsExist<T>(string tag)
        {
            if (keyValuePairs.TryGetValue(tag, out object? instance))
            {
                if (instance is T)
                {
                    return true;
                }
                else
                {
                    throw new DifferentTypeException<T>(instance.GetType().FullName!);
                }
            }
            else
            {
                return false;
            }

        }

        public static bool IsExist<T>()
        {
            return IsExist<T>(typeof(T).FullName!);
        }
    }
}
