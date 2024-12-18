namespace _17.Exam_task
{
    partial class Password
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.PasswordtextBox = new System.Windows.Forms.TextBox();
            this.LogintextBox = new System.Windows.Forms.TextBox();
            this.Enterbutton = new System.Windows.Forms.Button();
            this.Closebutton = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(17, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Логин";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(17, 77);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "Пароль";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.PasswordtextBox);
            this.groupBox1.Controls.Add(this.LogintextBox);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(61, 36);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(313, 130);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Введите данные";
            // 
            // PasswordtextBox
            // 
            this.PasswordtextBox.Location = new System.Drawing.Point(118, 77);
            this.PasswordtextBox.Name = "PasswordtextBox";
            this.PasswordtextBox.Size = new System.Drawing.Size(172, 25);
            this.PasswordtextBox.TabIndex = 3;
            // 
            // LogintextBox
            // 
            this.LogintextBox.Location = new System.Drawing.Point(118, 42);
            this.LogintextBox.Name = "LogintextBox";
            this.LogintextBox.Size = new System.Drawing.Size(172, 25);
            this.LogintextBox.TabIndex = 2;
            // 
            // Enterbutton
            // 
            this.Enterbutton.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.Enterbutton.Location = new System.Drawing.Point(61, 196);
            this.Enterbutton.Name = "Enterbutton";
            this.Enterbutton.Size = new System.Drawing.Size(104, 41);
            this.Enterbutton.TabIndex = 3;
            this.Enterbutton.Text = "Войти";
            this.Enterbutton.UseVisualStyleBackColor = true;
            this.Enterbutton.Click += new System.EventHandler(this.Enterbutton_Click);
            // 
            // Closebutton
            // 
            this.Closebutton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Closebutton.Location = new System.Drawing.Point(250, 196);
            this.Closebutton.Name = "Closebutton";
            this.Closebutton.Size = new System.Drawing.Size(124, 41);
            this.Closebutton.TabIndex = 4;
            this.Closebutton.Text = "Закрыть";
            this.Closebutton.UseVisualStyleBackColor = true;
            this.Closebutton.Click += new System.EventHandler(this.Closebutton_Click);
            // 
            // Password
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(465, 265);
            this.Controls.Add(this.Closebutton);
            this.Controls.Add(this.Enterbutton);
            this.Controls.Add(this.groupBox1);
            this.Name = "Password";
            this.Text = "Вход";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox PasswordtextBox;
        private System.Windows.Forms.TextBox LogintextBox;
        private System.Windows.Forms.Button Enterbutton;
        private System.Windows.Forms.Button Closebutton;
    }
}

