using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _22.WindowsFormsChart__6_3_
{
    internal class dat
    {
        Random r;
        public dat()
        {
            r = new Random();
        }
        public dat(int t)
        {
            r = new Random(t);
        }
        public int random(int t)
        {
            int res = r.Next(t);
            return res;
        }
    }
}
