using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utils
{
    using System;

    class Utils
    {

        public static int Greater(int a, int b)
        {
            if (a > b)
                return a;
            else
                return b;
        }

        public static void Swap(ref int a, ref int b)
        {
            int temp = a;
            a = b;
            b = temp;
        }


        public class Test
        {
            public static void Main()
            {
                int x;
                int y;
                int greater;


                Console.WriteLine("Enter first number:");
                x = int.Parse(Console.ReadLine());
                Console.WriteLine("Enter second number:");
                y = int.Parse(Console.ReadLine());


                greater = Utils.Greater(x, y);
                Console.WriteLine("The greater value is " + greater);
                Console.WriteLine("Before swap: " + x + "," + y);
                Utils.Swap(ref x, ref y);
                Console.WriteLine("After swap: " + x + "," + y);

            }
        }
    }
}

