using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace circle
{
    class Program
    {
        static void Main(string[] args)
        {
            double pie = 3.14;
            double r;
            Console.WriteLine("enter the radius");
            r = Convert.ToDouble(Console.ReadLine());
            double cirumference = 2 * pie * r;
            double area = pie * r * r;
            Console.WriteLine("circumference of circle"+cirumference);
            Console.WriteLine("area of circle"+area);
            Console.ReadLine();
        }
    }
}
