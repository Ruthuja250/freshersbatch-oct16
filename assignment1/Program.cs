using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace calcuator
{
    class program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("enter the action to be perfornmed");
            Console.WriteLine("1. addition");
            Console.WriteLine("2. substraction");
            Console.WriteLine("3. multiplication");
            Console.WriteLine("4. division");
            int action = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("first input");
            int input1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("second input");
            int input2 = Convert.ToInt32(Console.ReadLine());
            int result = 0;
            switch (action)
            {
                case 1:
                    {
                        result = Addition(input1, input2);
                        break;
                    }
                case 2:
                    {
                        result = Substraction(input1, input2);
                        break;
                    }
                case 3:
                    {
                        result = Multiplication(input1, input2);
                        break;
                    }
                case 4:
                    {
                        result =Division(input1, input2);
                        break;
                    }
                default:
                    Console.WriteLine("wrong action !, try again");
                    break;
            }
            Console.WriteLine("the result is {0}", result);
            Console.ReadKey();
        }
           public static int Addition(int input1,int input2)
        {
            int result = input1 + input2;
            return result;
        }
        public static int Substraction(int input1, int input2)
        {
            int result = input1 - input2;
            return result;
        }
        public static int Multiplication(int input1, int input2)
        {
            int result = input1 * input2;
            return result;
        }
        public static int Division(int input1, int input2)
        {
            int result = input1 * input2;
            return result;
        }







    }
    
}
