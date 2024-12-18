using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _17.Exam_task
{
    public partial class Password : Form
    {
        
        public string Login1
        {
            get { return LogintextBox.Text; }
            set { LogintextBox.Text = value; }
        }
        public string Password1
        {
            get { return PasswordtextBox.Text; }
            set { PasswordtextBox.Text = value; }
        }

        public Password()
        {
            InitializeComponent();
        }

        private void Closebutton_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Enterbutton_Click(object sender, EventArgs e)
        {
            if (Login1 ==  "Andrey" & Password1 == "1")
            {
                MessageBox.Show("Добро пожаловать, Andrey");
                Database dbForm = new Database();
                if (dbForm.ShowDialog() != DialogResult.OK)
                    return;
                

            }
            else
            {
                MessageBox.Show("Логин:Andrey и Пароль:1");
            }

        }

        
    }
}
