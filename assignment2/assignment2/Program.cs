using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Transactions;

class student
{
     public static void Main(String[] args)
    {
        
        Console.WriteLine("Enter no of students");
        int n = Convert.ToInt32(Console.ReadLine());
        int[] a = new int[5];
        int sum = 0;
        int avg = 0;
        int highest = 0;
        
        for (int i = 0; i < n; i++)
        {
            Console.WriteLine("enter the marks of students");
            a[i]=Convert.ToInt32(Console.ReadLine());
            sum += a[i];
            if (a[i] > highest)
                highest = a[i];
        }
        avg = (int)sum / n;
        Console.WriteLine(avg);
        Console.WriteLine(highest);

        Console.ReadLine();
            
        

    }
}
    
