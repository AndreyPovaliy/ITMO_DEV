using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace _19.SinFunc__4_5ctrl_
{
    public partial class FormRange : Form
    {
        public FormRange()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            decimal i = numericUpDown1.Value;
            while (i < numericUpDown2.Value)
            {
                double sin = Math.Round(Math.Sin(decimal.ToDouble(i)), 1);
                string sin_str = sin.ToString();
                Form1 frm1 = this.Owner as Form1;
                frm1.S_Data += i + ";" + sin_str + "\n";
                i = i + 0.10M;         
                frm1.L_Data = "Левая граница: " + numericUpDown1.Text + " правая граница " + numericUpDown2.Text;



            }

            this.Close();
        }

        private void FormRange_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
    
}