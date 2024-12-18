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
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection.Emit;

namespace _01.DBConnection
{
    
    public partial class Form1 : Form
    {
        OleDbConnection connection = new OleDbConnection();
        // string testConnect;
        string testConnect = GetConnectionStringByName("DBConnect.NorthwindConnectionString");
        public string L_Data
        {
            get
            { return label1.Text; }
            set
            { label1.Text = value; }
        }
        public Form1()
        {
            InitializeComponent();
            this.connection.StateChange += new
                System.Data.StateChangeEventHandler(
                this.connection_StateChange);


        }

        private void connectToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.ConnectionString = testConnect;
                    connection.Open();
                    L_Data = "Соединение с базой данных выполнено успешно";


                }
                else
                    L_Data = "Соединение с базой данных уже установлено";
            }
            catch (Exception Xcp)
            {
                MessageBox.Show(Xcp.Message, "Unexpected Exception",
                                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }




        }

        private void disconnectToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
                L_Data = "Соединение с базой данных закрыто";
            }
            else
                L_Data = "Соединение с базой данных уже закрыто";

        }

        private void connection_StateChange(object sender, System.Data.StateChangeEventArgs e)
        {
            connectToolStripMenuItem.Enabled =
                (e.CurrentState == ConnectionState.Closed);
            disconnectToolStripMenuItem.Enabled =
                (e.CurrentState == ConnectionState.Open);
        }


        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true) 
            {
                testConnect= @"Provider=SQLOLEDB.1;Integrated Security=SSPI;
                                Persist Security Info=False;Initial Catalog=Northwind;
                                Data Source=WIN-CDJM1LM10O7\SQLEXPRESS";
            }
            else
            {
                testConnect = @"Provider=SQLOLEDB.1;Integrated Security=SSPI;
                                Persist Security Info=False;
                                Initial Catalog=Northwind;Data Source=(local)";
            }
        }

        private void connectionListToolStripMenuItem_Click(object sender, EventArgs e)
        {

            ConnectionStringSettingsCollection settings = ConfigurationManager.ConnectionStrings;

            if (settings != null)
            {
                foreach (ConnectionStringSettings cs in settings)
                {
                    MessageBox.Show("name = " + cs.Name);
                    MessageBox.Show("providerName = " + cs.ProviderName);
                    MessageBox.Show("connectionString = " + cs.ConnectionString);
                }
            }




        }

        static string GetConnectionStringByName(string name)
        {
            string returnValue = null;
            ConnectionStringSettings settings =
                ConfigurationManager.ConnectionStrings[name];
            if (settings != null)
                returnValue = settings.ConnectionString;
            return returnValue;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (connection.State == ConnectionState.Closed)
            {
                MessageBox.Show("Сначала подключитесь к базе");
                return;
            }
            OleDbCommand command = new OleDbCommand();
            command.Connection = connection;
            command.CommandText = "SELECT COUNT(*) FROM Products";
            int number = (int)command.ExecuteScalar();
            label2.Text = number.ToString();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            OleDbCommand command = connection.CreateCommand();
            command.CommandText = "SELECT ProductName FROM Products";
            OleDbDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                listView1.Items.Add(reader["ProductName"].ToString());
            }



        }

        private void button3_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection(testConnect);
            connection.Open();
            OleDbTransaction OleTran = connection.BeginTransaction();
            OleDbCommand command = connection.CreateCommand();
            command.Transaction = OleTran;
            try
            {
                command.CommandText =
              "INSERT INTO Products (ProductName) VALUES('Wrong size')";
                command.ExecuteNonQuery();
                command.CommandText =
               "INSERT INTO Products (ProductName) VALUES('Wrong color')";
                command.ExecuteNonQuery();

                OleTran.Commit();
                MessageBox.Show("Both records were written to database");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                try
                {
                    OleTran.Rollback();
                }
                catch (Exception exRollback)
                {
                    MessageBox.Show(exRollback.Message);
                }

            }

            connection.Close();
        }
    }
}
