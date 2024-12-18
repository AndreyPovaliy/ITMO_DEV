using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _17.Exam_task
{
    public partial class Database : Form
    {
        public Database()
        {
            InitializeComponent();
        }

        private void Database_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = dataSet11.Customers;
            dataGridView1.MultiSelect = false;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.CellSelect;
            dataGridView1.EditMode = DataGridViewEditMode.EditProgrammatically;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            sqlDataAdapter1.Fill(dataSet11.Customers);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DataSet1.CustomersRow NewRow = (DataSet1.CustomersRow)dataSet11.Customers.NewRow();
            NewRow.CostomerId = 7;
            NewRow.CostomerTitleID = 2;
            NewRow.CostomerFirstName = "Alex";
            NewRow.CostomerOtherInitials = "Junior";
            NewRow.CostomerLastName = "Johnson";
            NewRow.AddressID = 7891;
            NewRow.AccountNumber = "233456";
            NewRow.AccountTypeID= 1;
            NewRow.CleareBallance = 1000;
            NewRow.UncleareBallance = 1001;
            NewRow.DateAdded = DateTime.Now;
            try
            {
                dataSet11.Customers.Rows.Add(NewRow);
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Add Row Failed");
            }

        }

        private DataSet1.CustomersRow GetSelectedRow()
        {
            int SelectedCostomerId = Convert.ToInt32(dataGridView1.CurrentRow.Cells["CostomerId"].Value.ToString());
            DataSet1.CustomersRow SelectedRow =
      dataSet11.Customers.FindByCostomerId(SelectedCostomerId);
            return SelectedRow;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            GetSelectedRow().Delete();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            GetSelectedRow()[dataGridView1.CurrentCell.OwningColumn.Name] = CellValueTextBox.Text;
            UpdateRowVersionDisplay();

        }

        private void UpdateRowVersionDisplay()
        {
            try
            {
                CurrentDRVTextBox.Text = GetSelectedRow()[dataGridView1.CurrentCell.OwningColumn.Name, DataRowVersion.Current].ToString();
            }
            catch (Exception ex)
            {
                CurrentDRVTextBox.Text = ex.Message;
            }
            try
            {
                OriginalDRVTextBox.Text = GetSelectedRow()[dataGridView1.CurrentCell.OwningColumn.Name, DataRowVersion.Original].ToString();
            }
            catch (Exception ex)
            {
                OriginalDRVTextBox.Text = ex.Message;
            }
            RowStateTextBox.Text = GetSelectedRow().RowState.ToString();
        }

        private void dataGridView1_Click(object sender, EventArgs e)
        {
            CellValueTextBox.Text = dataGridView1.CurrentCell.Value.ToString();
            UpdateRowVersionDisplay();
        }

        private void AcceptChangesButton_Click(object sender, EventArgs e)
        {
            GetSelectedRow().AcceptChanges();
            UpdateRowVersionDisplay();

        }

        private void RejectChangesButton_Click(object sender, EventArgs e)
        {
            GetSelectedRow().RejectChanges();
            UpdateRowVersionDisplay();

        }
    }
}
