using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Transactions;
class sum
{
    public static void Main(String[] args)
    {

        Console.WriteLine("Enter no of digits");
        int n = Convert.ToInt32(Console.ReadLine());
        int[] a = new int[5];
        int sum = 0;


        for (int i = 0; i < n; i++)
        {
            Console.WriteLine("enter the digits");
            a[i] = Convert.ToInt32(Console.ReadLine());
            sum += a[i];

        }

        Console.WriteLine("sum of digits"+sum);

        Console.ReadLine();
    }
}