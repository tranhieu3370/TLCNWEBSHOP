
using Shopping.Model.Model;
using Shopping.Data.Infrastructure;

namespace Shopping.Data.Repositories
{
    public interface IVisitorStatisticRepository : IRepository<VisitorStatitic>
    {
    }

    public class VisitorStatisticRepository : RepositoryBase<VisitorStatitic>, IVisitorStatisticRepository
    {
        public VisitorStatisticRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}