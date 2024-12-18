namespace SimpleCalculator
{
    partial class Add_functions
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
            this.components = new System.ComponentModel.Container();
            this.KeySquaring = new System.Windows.Forms.Button();
            this.KeyReverse = new System.Windows.Forms.Button();
            this.KeySquareRoot = new System.Windows.Forms.Button();
            this.KeyExponentiation = new System.Windows.Forms.Button();
            this.keyСubicRoot = new System.Windows.Forms.Button();
            this.keyFactorial = new System.Windows.Forms.Button();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.SuspendLayout();
            // 
            // KeySquaring
            // 
            this.KeySquaring.Font = new System.Drawing.Font("Courier New", 10F, System.Drawing.FontStyle.Bold);
            this.KeySquaring.ForeColor = System.Drawing.Color.Red;
            this.KeySquaring.Location = new System.Drawing.Point(198, 25);
            this.KeySquaring.Name = "KeySquaring";
            this.KeySquaring.Size = new System.Drawing.Size(56, 55);
            this.KeySquaring.TabIndex = 16;
            this.KeySquaring.TabStop = false;
            this.KeySquaring.Text = "x^2";
            this.toolTip1.SetToolTip(this.KeySquaring, "Определение квадрата числа");
            this.KeySquaring.Click += new System.EventHandler(this.KeySquaring_Click);
            // 
            // KeyReverse
            // 
            this.KeyReverse.Font = new System.Drawing.Font("Courier New", 10F, System.Drawing.FontStyle.Bold);
            this.KeyReverse.ForeColor = System.Drawing.Color.Red;
            this.KeyReverse.Location = new System.Drawing.Point(136, 24);
            this.KeyReverse.Name = "KeyReverse";
            this.KeyReverse.Size = new System.Drawing.Size(56, 55);
            this.KeyReverse.TabIndex = 17;
            this.KeyReverse.TabStop = false;
            this.KeyReverse.Text = "1/x";
            this.toolTip1.SetToolTip(this.KeyReverse, "Расчет обратного значения");
            this.KeyReverse.Click += new System.EventHandler(this.KeyReverse_Click);
            // 
            // KeySquareRoot
            // 
            this.KeySquareRoot.Font = new System.Drawing.Font("Courier New", 10F, System.Drawing.FontStyle.Bold);
            this.KeySquareRoot.ForeColor = System.Drawing.Color.Red;
            this.KeySquareRoot.Location = new System.Drawing.Point(74, 24);
            this.KeySquareRoot.Name = "KeySquareRoot";
            this.KeySquareRoot.Size = new System.Drawing.Size(56, 56);
            this.KeySquareRoot.TabIndex = 18;
            this.KeySquareRoot.TabStop = false;
            this.KeySquareRoot.Text = "√x";
            this.toolTip1.SetToolTip(this.KeySquareRoot, "Корень");
            this.KeySquareRoot.Click += new System.EventHandler(this.KeySquareRoot_Click);
            // 
            // KeyExponentiation
            // 
            this.KeyExponentiation.Font = new System.Drawing.Font("Courier New", 10F, System.Drawing.FontStyle.Bold);
            this.KeyExponentiation.ForeColor = System.Drawing.Color.Red;
            this.KeyExponentiation.Location = new System.Drawing.Point(12, 24);
            this.KeyExponentiation.Name = "KeyExponentiation";
            this.KeyExponentiation.Size = new System.Drawing.Size(56, 55);
            this.KeyExponentiation.TabIndex = 19;
            this.KeyExponentiation.TabStop = false;
            this.KeyExponentiation.Text = "x^y";
            this.toolTip1.SetToolTip(this.KeyExponentiation, "Возведение в степень");
            this.KeyExponentiation.Click += new System.EventHandler(this.KeyExponentiation_Click);
            // 
            // keyСubicRoot
            // 
            this.keyСubicRoot.Font = new System.Drawing.Font("Courier New", 10F, System.Drawing.FontStyle.Bold);
            this.keyСubicRoot.ForeColor = System.Drawing.Color.Red;
            this.keyСubicRoot.Location = new System.Drawing.Point(74, 85);
            this.keyСubicRoot.Name = "keyСubicRoot";
            this.keyСubicRoot.Size = new System.Drawing.Size(56, 56);
            this.keyСubicRoot.TabIndex = 20;
            this.keyСubicRoot.TabStop = false;
            this.keyСubicRoot.Text = "∛x";
            this.toolTip1.SetToolTip(this.keyСubicRoot, "Кубический корень");
            this.keyСubicRoot.Click += new System.EventHandler(this.keyСubicRoot_Click);
            // 
            // keyFactorial
            // 
            this.keyFactorial.Font = new System.Drawing.Font("Courier New", 10F, System.Drawing.FontStyle.Bold);
            this.keyFactorial.ForeColor = System.Drawing.Color.Red;
            this.keyFactorial.Location = new System.Drawing.Point(12, 85);
            this.keyFactorial.Name = "keyFactorial";
            this.keyFactorial.Size = new System.Drawing.Size(56, 55);
            this.keyFactorial.TabIndex = 21;
            this.keyFactorial.TabStop = false;
            this.keyFactorial.Text = "x!";
            this.toolTip1.SetToolTip(this.keyFactorial, "Факториал");
            this.keyFactorial.Click += new System.EventHandler(this.keyFactorial_Click);
            // 
            // toolStrip1
            // 
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(282, 31);
            this.toolStrip1.TabIndex = 22;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // Add_functions
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(282, 153);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.keyСubicRoot);
            this.Controls.Add(this.keyFactorial);
            this.Controls.Add(this.KeySquaring);
            this.Controls.Add(this.KeyReverse);
            this.Controls.Add(this.KeySquareRoot);
            this.Controls.Add(this.KeyExponentiation);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximumSize = new System.Drawing.Size(300, 200);
            this.MinimumSize = new System.Drawing.Size(300, 200);
            this.Name = "Add_functions";
            this.StartPosition = System.Windows.Forms.FormStartPosition.WindowsDefaultBounds;
            this.Text = "More functions";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button KeySquaring;
        private System.Windows.Forms.Button KeyReverse;
        private System.Windows.Forms.Button KeySquareRoot;
        private System.Windows.Forms.Button KeyExponentiation;
        private System.Windows.Forms.Button keyСubicRoot;
        private System.Windows.Forms.Button keyFactorial;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}