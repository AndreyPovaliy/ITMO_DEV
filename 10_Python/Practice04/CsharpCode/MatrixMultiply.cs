using System;
using System.Runtime.Serialization.Formatters;
using System.Diagnostics;

class MatrixMultiply {
    static void Main() {

        int alpha = 9;
        int beta = -13;


        int[,] a = new int[3, 3];
        a[0, 0] = 2; a[0, 1] = -5; a[0, 1] = 5;
        a[1, 0] = 1; a[1, 1] = -4; a[0, 1] = 9;
        a[1, 0] = 5; a[1, 1] = -1; a[0, 1] = 3;

        int[,] b = new int[3, 3];
        b[0, 0] = 2; b[0, 1] = 1; b[0, 1] = 6;
        b[1, 0] = -1; b[1, 1] = -6; b[0, 1] = -9;
        b[1, 0] = 7; b[1, 1] = 3; b[0, 1] = 7;

        int[,] c = new int[3, 3];
        c[0, 0] = 4; c[0, 1] = 5; c[0, 1] = 3;
        c[1, 0] = -3; c[1, 1] = -4; c[0, 1] = -5;
        c[1, 0] = 9; c[1, 1] = 1; c[0, 1] = 3;


        Stopwatch stopwatch = new Stopwatch();
        stopwatch.Start();
        int[,] step1 = MultiplyScal(a, alpha);
        int[,] step2 = Multiply(step1, b);
        int[,] step3 = MultiplyScal(c, beta);
        int[,] matResult = MatSum(step2, step3);
        Output(matResult);
        stopwatch.Stop();
        double time = stopwatch.ElapsedMilliseconds / 1000;
        Console.WriteLine(stopwatch.ElapsedMilliseconds);
        //========== 04,960 ==========


    }

    static void Output(int[,] result)
    {
        for (int r = 0; r < result.GetLength(0); r++)
        {
            for (int c = 0; c < result.GetLength(1); c++)
            {
                Console.Write("{0} ", result[r, c]);
            }
            Console.WriteLine();
        }


    }
    static int[,] Multiply(int[,] a, int[,] b)
    {
        int[,] result = new int[3, 3];
        for (int r = 0; r < 3; r++)
        {
            for (int c = 0; c < 3; c++)
            {
                result[r, c] += a[r, 0] * b[0, c] + a[r, 1] * b[1, c] + a[r, 2] * b[2, c];
            }
        }
        return result;

    }

    static int[,] MatSum(int[,] a, int[,] b)
    {
        int[,] result = new int[3, 3];
        for (int r = 0; r < 3; r++)
        {
            for (int c = 0; c < 3; c++)
            {
                result[r, c] += (a[r, 0] + b[0, c]) + (a[r, 1] + b[1, c]) + (a[r, 2] + b[2, c]);
            }
        }
        return result;

    }

    static int[,] MultiplyScal(int[,] a, int sc )
    {
        int[,] result = new int[3, 3];
        for (int r = 0; r < 3; r++)
        {
            for (int c = 0; c < 3; c++)
            {
                result[r, c] += a[r, 0] * sc + a[r, 1] * sc + a[r, 2] * sc;
            }
        }
        return result;

    }
  

}
