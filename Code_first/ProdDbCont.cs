using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Code_first
{
    internal class ProdDbCont : DbContext
    {
        public DbSet<Spendings> Expenditures { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder builder) => builder.UseSqlServer(@"Data Source=(localdb)\.;Initial Catalog=Wallet");
    }
}