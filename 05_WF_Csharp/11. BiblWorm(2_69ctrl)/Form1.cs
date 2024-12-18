using _11.BiblWorm_2_69ctrl_;
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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace _11.BiblWorm_2_69ctrl_
{
    public partial class Form1 : Form
    {

        
        public Form1()
        {
            InitializeComponent();
        }
        public string Author // автор
        {
            get { return textBox1.Text; }
            set { textBox1.Text = value; }
        }
        public string Title // Название
        {
            get { return textBox2.Text; }
            set { textBox2.Text = value; }
        }
        public string PublishHouse // Издательство
        {
            get { return textBox3.Text; }
            set { textBox3.Text = value; }
        }
        public int Page // Количество страниц
        {
            get { return (int)numericUpDown1.Value; }
            set { numericUpDown1.Value = value; }
        }
        public int Year // Год издания
        {
            get { return (int)numericUpDown2.Value; }
            set { numericUpDown2.Value = value; }
        }
        public int InvNumber // Инвентарный номер
        {
            get { return (int)numericUpDown3.Value; }
            set { numericUpDown3.Value = value; }
        }
        public bool Existence // Наличие
        {
            get { return checkBox1.Checked; }
            set { checkBox1.Checked = value; }
        }
        public bool SortInvNumber // Сортировка по инвентарному номеру
        {
            get { return checkBox3.Checked; }
            set { checkBox3.Checked = value; }
        }
        public bool ReturnTime // Возвращение в срок
        {
            get { return checkBox2.Checked; }
            set { checkBox2.Checked = value; }
        }
        public int PeriodUse // Инвентарный номер
        {
            get { return (int)numericUpDown4.Value; }
            set { numericUpDown4.Value = value; }
        }

        public string Author1 // автор
        {
            get { return textBox4.Text; }
            set { textBox4.Text = value; }
        }
        public string Title1 // Название
        {
            get { return textBox5.Text; }
            set { textBox5.Text = value; }
        }
        public string PublishHouse1 // Издательство
        {
            get { return textBox6.Text; }
            set { textBox6.Text = value; }
        }
        public int Page1 // Количество страниц
        {
            get { return (int)numericUpDown5.Value; }
            set { numericUpDown5.Value = value; }
        }
        public int Year1 // Год издания
        {
            get { return (int)numericUpDown6.Value; }
            set { numericUpDown6.Value = value; }
        }
        public int InvNumber1 // Инвентарный номер
        {
            get { return (int)numericUpDown7.Value; }
            set { numericUpDown7.Value = value; }
        }
        public bool Existence1 // Наличие
        {
            get { return checkBox4.Checked; }
            set { checkBox4.Checked = value; }
        }

        public bool ReturnTime1 // Возвращение в срок
        {
            get { return checkBox5.Checked; }
            set { checkBox5.Checked = value; }
        }
        public int PeriodUse1 // Инвентарный номер
        {
            get { return (int)numericUpDown8.Value; }
            set { numericUpDown8.Value = value; }
        }

        List<Item> its = new List<Item>();

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
           
                Book b = new Book(Author, Title, PublishHouse,
                Page, Year, InvNumber, Existence);
            if (ReturnTime)
                b.ReturnSrok();
            b.PriceBook(PeriodUse);
            its.Add(b);
            Author = Title = PublishHouse = "";
            Page = InvNumber = PeriodUse = 0;
            Year = 2020;
            Existence = ReturnTime = false;
           

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (SortInvNumber)
                its.Sort();
            StringBuilder sb = new StringBuilder();
            foreach (Item item in its)
            {
                sb.Append("\n" + item.ToString());
            }
            richTextBox1.Text = sb.ToString();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Journal j = new Journal(Author1, Title1, PublishHouse1,
               Page1, Year1, InvNumber1, Existence1);
            if (ReturnTime1)
                j.ReturnSrok();
            j.PriceJournal(PeriodUse1);
            its.Add(j);
            Author1 = Title1 = PublishHouse1 = "";
            Page1 = InvNumber1 = PeriodUse1 = 0;
            Year1 = 2020;
            Existence = ReturnTime = false;
        }
    }
}
