using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Code_first
{
    internal class Spendings
    {
        public int Id { get; set; }
        public DateTime Date { get; set; }
        public int Amount { get; set; }
        public string? What { get; set; }
        public override string ToString() => $"{Date}, {Amount}, {What}";
    }
}