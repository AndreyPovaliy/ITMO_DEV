using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using Calculator_new;

namespace SimpleCalculator
{
    public partial class Add_functions : Form
    {
        
        public Add_functions()
        {
            InitializeComponent();
          
        }

        private void KeyExponentiation_Click(object sender, EventArgs e)
        {
            CalcEngine.CalcOperation(CalcEngine.Operator.eExponentiation);
        }

        private void KeySquareRoot_Click(object sender, EventArgs e)
        {
            CalcEngine.CalcOperation(CalcEngine.Operator.eSquareRoot);
            
        }

        private void KeyReverse_Click(object sender, EventArgs e)
        {
            CalcEngine.CalcOperation(CalcEngine.Operator.eReverse);
        }

        private void KeySquaring_Click(object sender, EventArgs e)
        {
            CalcEngine.CalcOperation(CalcEngine.Operator.eSquaring);
        }

        private void keyFactorial_Click(object sender, EventArgs e)
        {
            CalcEngine.CalcOperation(CalcEngine.Operator.eFactorial);
        }

        private void keyСubicRoot_Click(object sender, EventArgs e)
        {
            CalcEngine.CalcOperation(CalcEngine.Operator.eСubicRoot);
        }
    }
}
