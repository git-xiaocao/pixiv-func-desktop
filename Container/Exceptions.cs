using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PixivFunc.Container
{
    internal class InstanceExistException<T> : Exception
    {
        public InstanceExistException() : base($"类型[{typeof(T).Name}]的实例已经存在") { }

        public InstanceExistException(string tag) : base($"类型[{typeof(T).Name}]标签为{tag}的实例已经存在") { }
    }

    internal class InstanceNotExistException<T> : Exception
    {
        public InstanceNotExistException() : base($"类型[{typeof(T).Name}]的实例不存在") { }

        public InstanceNotExistException(string tag) : base($"类型[{typeof(T).Name}]标签为{tag}的实例不存在") { }
    }

    internal class DifferentTypeException<T> : Exception
    {
        public DifferentTypeException(string destTypeName) : base($"欲获取的类型[{destTypeName}]与原始类型[{typeof(T).Name}]不一致") { }

    }
}
