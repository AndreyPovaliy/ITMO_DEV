namespace _25.WinAsynchMethod__7_34_
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.btnRun = new System.Windows.Forms.Button();
            this.btnWork = new System.Windows.Forms.Button();
            this.lblA = new System.Windows.Forms.Label();
            this.lblB = new System.Windows.Forms.Label();
            this.txbA = new System.Windows.Forms.TextBox();
            this.txbB = new System.Windows.Forms.TextBox();
            this.lblResult = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.SuspendLayout();
            // 
            // btnRun
            // 
            this.btnRun.Location = new System.Drawing.Point(12, 60);
            this.btnRun.Name = "btnRun";
            this.btnRun.Size = new System.Drawing.Size(122, 31);
            this.btnRun.TabIndex = 0;
            this.btnRun.Text = "Сумма";
            this.toolTip1.SetToolTip(this.btnRun, "Sum");
            this.btnRun.UseVisualStyleBackColor = true;
            this.btnRun.Click += new System.EventHandler(this.btnRun_Click);
            // 
            // btnWork
            // 
            this.btnWork.Location = new System.Drawing.Point(162, 108);
            this.btnWork.Name = "btnWork";
            this.btnWork.Size = new System.Drawing.Size(108, 33);
            this.btnWork.TabIndex = 1;
            this.btnWork.Text = "Работа";
            this.toolTip1.SetToolTip(this.btnWork, "Start work");
            this.btnWork.UseVisualStyleBackColor = true;
            this.btnWork.Click += new System.EventHandler(this.btnWork_Click);
            // 
            // lblA
            // 
            this.lblA.AutoSize = true;
            this.lblA.Location = new System.Drawing.Point(12, 9);
            this.lblA.Name = "lblA";
            this.lblA.Size = new System.Drawing.Size(81, 17);
            this.lblA.TabIndex = 2;
            this.lblA.Text = "Значение А";
            // 
            // lblB
            // 
            this.lblB.AutoSize = true;
            this.lblB.Location = new System.Drawing.Point(207, 9);
            this.lblB.Name = "lblB";
            this.lblB.Size = new System.Drawing.Size(80, 17);
            this.lblB.TabIndex = 3;
            this.lblB.Text = "Значение Б";
            // 
            // txbA
            // 
            this.txbA.Location = new System.Drawing.Point(64, 29);
            this.txbA.Name = "txbA";
            this.txbA.Size = new System.Drawing.Size(142, 25);
            this.txbA.TabIndex = 4;
            this.toolTip1.SetToolTip(this.txbA, "For input integer A");
            // 
            // txbB
            // 
            this.txbB.Location = new System.Drawing.Point(256, 29);
            this.txbB.Name = "txbB";
            this.txbB.Size = new System.Drawing.Size(139, 25);
            this.txbB.TabIndex = 5;
            this.toolTip1.SetToolTip(this.txbB, "For input integer B");
            // 
            // lblResult
            // 
            this.lblResult.AutoSize = true;
            this.lblResult.Location = new System.Drawing.Point(224, 74);
            this.lblResult.Name = "lblResult";
            this.lblResult.Size = new System.Drawing.Size(106, 17);
            this.lblResult.TabIndex = 6;
            this.lblResult.Text = "Результат здесь";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 97);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(122, 39);
            this.button1.TabIndex = 7;
            this.button1.Text = "Разность";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(407, 153);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lblResult);
            this.Controls.Add(this.txbB);
            this.Controls.Add(this.txbA);
            this.Controls.Add(this.lblB);
            this.Controls.Add(this.lblA);
            this.Controls.Add(this.btnWork);
            this.Controls.Add(this.btnRun);
            this.Name = "Form1";
            this.Text = "Асинхронный запуск";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnRun;
        private System.Windows.Forms.Button btnWork;
        private System.Windows.Forms.Label lblA;
        private System.Windows.Forms.Label lblB;
        private System.Windows.Forms.TextBox txbA;
        private System.Windows.Forms.TextBox txbB;
        private System.Windows.Forms.Label lblResult;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}

