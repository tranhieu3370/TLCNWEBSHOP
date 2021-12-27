using System;
using System.Collections.Generic;
using System.Text;

namespace Shop.Data.Infrastructure
{
    interface IUnitOfWork
    {
        void Commit();
    }
}
