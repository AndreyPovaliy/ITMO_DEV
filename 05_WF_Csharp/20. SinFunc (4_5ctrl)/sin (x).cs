using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _19.SinFunc__4_5ctrl_
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FormRange frm2 = new FormRange();
            frm2.Show(this);
        }

        public string S_Data
        {
            get
            { return richTextBox1.Text; }
            set
            { richTextBox1.Text = value; }
        }
            

              public string L_Data
        {
            get
            { return label2.Text; }
            set
            { label2.Text = value; }
        }
    }
    
}
