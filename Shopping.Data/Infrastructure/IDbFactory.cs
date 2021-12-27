using Shopping.Data;
using System;
using System.Collections.Generic;
using System.Text;

namespace Shopping.Data.Infrastructure
{
    public interface IDbFactory: IDisposable
    {
        ShopDbContext Init(); 
    }
}
