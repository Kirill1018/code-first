using Microsoft.EntityFrameworkCore.Internal;

namespace Code_first
{
    internal class Program
    {
        static void Main(string[] args) => new Program().Code();
        public void Code()
        {
            using ProdDbCont cont = new();
            IReadOnlyList<Spendings> time_cons = cont.Expenditures.OrderBy(spending => spending.Date)
                .ToArray(), transp_cons = cont.Expenditures.Where(spending => spending.Id == 1 || spending.Id == 2)
                .ToArray(), january = cont.Expenditures.Where(spending => spending.Date
                .Month == 1).ToArray();
            Console.WriteLine("расходы в хронологическом порядке");
            foreach (Spendings expenditure in time_cons) Console.WriteLine(expenditure);

            Console.WriteLine("расходы на транспорт");
            foreach (Spendings expenditure in transp_cons) Console.WriteLine(expenditure);

            Console.WriteLine("сумма расходов за всё время");
            int tot_sum = cont.Expenditures.Sum(spending => spending.Amount), jan_sum = 0, transport = 0,
                food = 0, paid_subscr;//расходы в январе, на транспорт и на еду
            Console.WriteLine(tot_sum);

            Console.WriteLine("сумма расходов в январе 2024");
            for (int i = 0; i < january.Count; i++) jan_sum += january.ElementAt(i).Amount;
            Console.WriteLine(jan_sum);

            for (int i = 0; i < transp_cons.Count; i++) transport += transp_cons.ElementAt(i).Amount;
            Console.WriteLine($"транспорт = {transport}");

            food = time_cons.ElementAt(2).Amount + time_cons.ElementAt(3)
                .Amount;
            Console.WriteLine($"еда = {food}");

            paid_subscr = tot_sum - food - transport;
            Console.WriteLine($"платные подписки = {paid_subscr}");
        }
    }
}