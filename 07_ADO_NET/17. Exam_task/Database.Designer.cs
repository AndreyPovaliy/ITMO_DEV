namespace _17.Exam_task
{
    partial class Database
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Database));
            this.button1 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.sqlSelectCommand1 = new System.Data.SqlClient.SqlCommand();
            this.sqlConnection1 = new System.Data.SqlClient.SqlConnection();
            this.sqlInsertCommand1 = new System.Data.SqlClient.SqlCommand();
            this.sqlUpdateCommand1 = new System.Data.SqlClient.SqlCommand();
            this.sqlDeleteCommand1 = new System.Data.SqlClient.SqlCommand();
            this.sqlDataAdapter1 = new System.Data.SqlClient.SqlDataAdapter();
            this.dataSet11 = new _17.Exam_task.DataSet1();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.UpdateValueButton = new System.Windows.Forms.Button();
            this.AcceptChangesButton = new System.Windows.Forms.Button();
            this.RejectChangesButton = new System.Windows.Forms.Button();
            this.CellValueTextBox = new System.Windows.Forms.TextBox();
            this.OriginalDRVTextBox = new System.Windows.Forms.TextBox();
            this.CurrentDRVTextBox = new System.Windows.Forms.TextBox();
            this.RowStateTextBox = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataSet11)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(138, 33);
            this.button1.TabIndex = 0;
            this.button1.Text = "Получить данные";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 135);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 27;
            this.dataGridView1.Size = new System.Drawing.Size(776, 303);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.Click += new System.EventHandler(this.dataGridView1_Click);
            // 
            // sqlSelectCommand1
            // 
            this.sqlSelectCommand1.CommandText = "SELECT * FROM  CustomerDetails.Customers";
            this.sqlSelectCommand1.Connection = this.sqlConnection1;
            // 
            // sqlConnection1
            // 
            this.sqlConnection1.ConnectionString = "Data Source=WIN-CDJM1LM10O7\\SQLEXPRESS;Initial Catalog=ApressFinancial;Integrated" +
    " Security=True";
            this.sqlConnection1.FireInfoMessageEventOnUserErrors = false;
            // 
            // sqlInsertCommand1
            // 
            this.sqlInsertCommand1.CommandText = resources.GetString("sqlInsertCommand1.CommandText");
            this.sqlInsertCommand1.Connection = this.sqlConnection1;
            this.sqlInsertCommand1.Parameters.AddRange(new System.Data.SqlClient.SqlParameter[] {
            new System.Data.SqlClient.SqlParameter("@CostomerId", System.Data.SqlDbType.BigInt, 0, "CostomerId"),
            new System.Data.SqlClient.SqlParameter("@CostomerTitleID", System.Data.SqlDbType.Int, 0, "CostomerTitleID"),
            new System.Data.SqlClient.SqlParameter("@CostomerFirstName", System.Data.SqlDbType.NChar, 0, "CostomerFirstName"),
            new System.Data.SqlClient.SqlParameter("@CostomerOtherInitials", System.Data.SqlDbType.NChar, 0, "CostomerOtherInitials"),
            new System.Data.SqlClient.SqlParameter("@CostomerLastName", System.Data.SqlDbType.NChar, 0, "CostomerLastName"),
            new System.Data.SqlClient.SqlParameter("@AddressID", System.Data.SqlDbType.BigInt, 0, "AddressID"),
            new System.Data.SqlClient.SqlParameter("@AccountNumber", System.Data.SqlDbType.NChar, 0, "AccountNumber"),
            new System.Data.SqlClient.SqlParameter("@AccountTypeID", System.Data.SqlDbType.Int, 0, "AccountTypeID"),
            new System.Data.SqlClient.SqlParameter("@CleareBallance", System.Data.SqlDbType.Money, 0, "CleareBallance"),
            new System.Data.SqlClient.SqlParameter("@UncleareBallance", System.Data.SqlDbType.Money, 0, "UncleareBallance"),
            new System.Data.SqlClient.SqlParameter("@DateAdded", System.Data.SqlDbType.Date, 0, "DateAdded")});
            // 
            // sqlUpdateCommand1
            // 
            this.sqlUpdateCommand1.CommandText = resources.GetString("sqlUpdateCommand1.CommandText");
            this.sqlUpdateCommand1.Connection = this.sqlConnection1;
            this.sqlUpdateCommand1.Parameters.AddRange(new System.Data.SqlClient.SqlParameter[] {
            new System.Data.SqlClient.SqlParameter("@CostomerId", System.Data.SqlDbType.BigInt, 0, "CostomerId"),
            new System.Data.SqlClient.SqlParameter("@CostomerTitleID", System.Data.SqlDbType.Int, 0, "CostomerTitleID"),
            new System.Data.SqlClient.SqlParameter("@CostomerFirstName", System.Data.SqlDbType.NChar, 0, "CostomerFirstName"),
            new System.Data.SqlClient.SqlParameter("@CostomerOtherInitials", System.Data.SqlDbType.NChar, 0, "CostomerOtherInitials"),
            new System.Data.SqlClient.SqlParameter("@CostomerLastName", System.Data.SqlDbType.NChar, 0, "CostomerLastName"),
            new System.Data.SqlClient.SqlParameter("@AddressID", System.Data.SqlDbType.BigInt, 0, "AddressID"),
            new System.Data.SqlClient.SqlParameter("@AccountNumber", System.Data.SqlDbType.NChar, 0, "AccountNumber"),
            new System.Data.SqlClient.SqlParameter("@AccountTypeID", System.Data.SqlDbType.Int, 0, "AccountTypeID"),
            new System.Data.SqlClient.SqlParameter("@CleareBallance", System.Data.SqlDbType.Money, 0, "CleareBallance"),
            new System.Data.SqlClient.SqlParameter("@UncleareBallance", System.Data.SqlDbType.Money, 0, "UncleareBallance"),
            new System.Data.SqlClient.SqlParameter("@DateAdded", System.Data.SqlDbType.Date, 0, "DateAdded"),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerId", System.Data.SqlDbType.BigInt, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerId", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerTitleID", System.Data.SqlDbType.Int, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerTitleID", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerFirstName", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerFirstName", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@IsNull_CostomerOtherInitials", System.Data.SqlDbType.Int, 0, System.Data.ParameterDirection.Input, ((byte)(0)), ((byte)(0)), "CostomerOtherInitials", System.Data.DataRowVersion.Original, true, null, "", "", ""),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerOtherInitials", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerOtherInitials", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerLastName", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerLastName", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_AddressID", System.Data.SqlDbType.BigInt, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "AddressID", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_AccountNumber", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "AccountNumber", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_AccountTypeID", System.Data.SqlDbType.Int, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "AccountTypeID", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CleareBallance", System.Data.SqlDbType.Money, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CleareBallance", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_UncleareBallance", System.Data.SqlDbType.Money, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "UncleareBallance", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_DateAdded", System.Data.SqlDbType.Date, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "DateAdded", System.Data.DataRowVersion.Original, null)});
            // 
            // sqlDeleteCommand1
            // 
            this.sqlDeleteCommand1.CommandText = resources.GetString("sqlDeleteCommand1.CommandText");
            this.sqlDeleteCommand1.Connection = this.sqlConnection1;
            this.sqlDeleteCommand1.Parameters.AddRange(new System.Data.SqlClient.SqlParameter[] {
            new System.Data.SqlClient.SqlParameter("@Original_CostomerId", System.Data.SqlDbType.BigInt, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerId", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerTitleID", System.Data.SqlDbType.Int, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerTitleID", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerFirstName", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerFirstName", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@IsNull_CostomerOtherInitials", System.Data.SqlDbType.Int, 0, System.Data.ParameterDirection.Input, ((byte)(0)), ((byte)(0)), "CostomerOtherInitials", System.Data.DataRowVersion.Original, true, null, "", "", ""),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerOtherInitials", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerOtherInitials", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CostomerLastName", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CostomerLastName", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_AddressID", System.Data.SqlDbType.BigInt, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "AddressID", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_AccountNumber", System.Data.SqlDbType.NChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "AccountNumber", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_AccountTypeID", System.Data.SqlDbType.Int, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "AccountTypeID", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_CleareBallance", System.Data.SqlDbType.Money, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "CleareBallance", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_UncleareBallance", System.Data.SqlDbType.Money, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "UncleareBallance", System.Data.DataRowVersion.Original, null),
            new System.Data.SqlClient.SqlParameter("@Original_DateAdded", System.Data.SqlDbType.Date, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "DateAdded", System.Data.DataRowVersion.Original, null)});
            // 
            // sqlDataAdapter1
            // 
            this.sqlDataAdapter1.DeleteCommand = this.sqlDeleteCommand1;
            this.sqlDataAdapter1.InsertCommand = this.sqlInsertCommand1;
            this.sqlDataAdapter1.SelectCommand = this.sqlSelectCommand1;
            this.sqlDataAdapter1.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
            new System.Data.Common.DataTableMapping("Table", "Customers", new System.Data.Common.DataColumnMapping[] {
                        new System.Data.Common.DataColumnMapping("CostomerId", "CostomerId"),
                        new System.Data.Common.DataColumnMapping("CostomerTitleID", "CostomerTitleID"),
                        new System.Data.Common.DataColumnMapping("CostomerFirstName", "CostomerFirstName"),
                        new System.Data.Common.DataColumnMapping("CostomerOtherInitials", "CostomerOtherInitials"),
                        new System.Data.Common.DataColumnMapping("CostomerLastName", "CostomerLastName"),
                        new System.Data.Common.DataColumnMapping("AddressID", "AddressID"),
                        new System.Data.Common.DataColumnMapping("AccountNumber", "AccountNumber"),
                        new System.Data.Common.DataColumnMapping("AccountTypeID", "AccountTypeID"),
                        new System.Data.Common.DataColumnMapping("CleareBallance", "CleareBallance"),
                        new System.Data.Common.DataColumnMapping("UncleareBallance", "UncleareBallance"),
                        new System.Data.Common.DataColumnMapping("DateAdded", "DateAdded")})});
            this.sqlDataAdapter1.UpdateCommand = this.sqlUpdateCommand1;
            // 
            // dataSet11
            // 
            this.dataSet11.DataSetName = "DataSet1";
            this.dataSet11.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(12, 51);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(138, 29);
            this.button2.TabIndex = 2;
            this.button2.Text = "Добавить строку";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(12, 86);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(138, 26);
            this.button3.TabIndex = 3;
            this.button3.Text = "Удалить";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // UpdateValueButton
            // 
            this.UpdateValueButton.Location = new System.Drawing.Point(183, 12);
            this.UpdateValueButton.Name = "UpdateValueButton";
            this.UpdateValueButton.Size = new System.Drawing.Size(196, 33);
            this.UpdateValueButton.TabIndex = 4;
            this.UpdateValueButton.Text = "Обновить";
            this.UpdateValueButton.UseVisualStyleBackColor = true;
            this.UpdateValueButton.Click += new System.EventHandler(this.button4_Click);
            // 
            // AcceptChangesButton
            // 
            this.AcceptChangesButton.Location = new System.Drawing.Point(183, 51);
            this.AcceptChangesButton.Name = "AcceptChangesButton";
            this.AcceptChangesButton.Size = new System.Drawing.Size(196, 29);
            this.AcceptChangesButton.TabIndex = 5;
            this.AcceptChangesButton.Text = "Принять";
            this.AcceptChangesButton.UseVisualStyleBackColor = true;
            this.AcceptChangesButton.Click += new System.EventHandler(this.AcceptChangesButton_Click);
            // 
            // RejectChangesButton
            // 
            this.RejectChangesButton.Location = new System.Drawing.Point(183, 86);
            this.RejectChangesButton.Name = "RejectChangesButton";
            this.RejectChangesButton.Size = new System.Drawing.Size(196, 26);
            this.RejectChangesButton.TabIndex = 6;
            this.RejectChangesButton.Text = "Отклонить";
            this.RejectChangesButton.UseVisualStyleBackColor = true;
            this.RejectChangesButton.Click += new System.EventHandler(this.RejectChangesButton_Click);
            // 
            // CellValueTextBox
            // 
            this.CellValueTextBox.Location = new System.Drawing.Point(411, 12);
            this.CellValueTextBox.Name = "CellValueTextBox";
            this.CellValueTextBox.Size = new System.Drawing.Size(353, 25);
            this.CellValueTextBox.TabIndex = 7;
            // 
            // OriginalDRVTextBox
            // 
            this.OriginalDRVTextBox.Location = new System.Drawing.Point(411, 43);
            this.OriginalDRVTextBox.Name = "OriginalDRVTextBox";
            this.OriginalDRVTextBox.Size = new System.Drawing.Size(353, 25);
            this.OriginalDRVTextBox.TabIndex = 8;
            // 
            // CurrentDRVTextBox
            // 
            this.CurrentDRVTextBox.Location = new System.Drawing.Point(411, 73);
            this.CurrentDRVTextBox.Name = "CurrentDRVTextBox";
            this.CurrentDRVTextBox.Size = new System.Drawing.Size(353, 25);
            this.CurrentDRVTextBox.TabIndex = 9;
            // 
            // RowStateTextBox
            // 
            this.RowStateTextBox.Location = new System.Drawing.Point(411, 104);
            this.RowStateTextBox.Name = "RowStateTextBox";
            this.RowStateTextBox.Size = new System.Drawing.Size(353, 25);
            this.RowStateTextBox.TabIndex = 10;
            // 
            // Database
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.RowStateTextBox);
            this.Controls.Add(this.CurrentDRVTextBox);
            this.Controls.Add(this.OriginalDRVTextBox);
            this.Controls.Add(this.CellValueTextBox);
            this.Controls.Add(this.RejectChangesButton);
            this.Controls.Add(this.AcceptChangesButton);
            this.Controls.Add(this.UpdateValueButton);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button1);
            this.Name = "Database";
            this.Text = "Database";
            this.Load += new System.EventHandler(this.Database_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataSet11)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Data.SqlClient.SqlCommand sqlSelectCommand1;
        private System.Data.SqlClient.SqlConnection sqlConnection1;
        private System.Data.SqlClient.SqlCommand sqlInsertCommand1;
        private System.Data.SqlClient.SqlCommand sqlUpdateCommand1;
        private System.Data.SqlClient.SqlCommand sqlDeleteCommand1;
        private System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
        private DataSet1 dataSet11;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button UpdateValueButton;
        private System.Windows.Forms.Button AcceptChangesButton;
        private System.Windows.Forms.Button RejectChangesButton;
        private System.Windows.Forms.TextBox CellValueTextBox;
        private System.Windows.Forms.TextBox OriginalDRVTextBox;
        private System.Windows.Forms.TextBox CurrentDRVTextBox;
        private System.Windows.Forms.TextBox RowStateTextBox;
    }
}