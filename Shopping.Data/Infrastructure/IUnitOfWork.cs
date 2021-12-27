using System;
using System.Collections.Generic;
using System.Text;

namespace Shopping.Data.Infrastructure
{
    public interface IUnitOfWork
    {
        void Commit();
    }
}
