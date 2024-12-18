namespace _03.MDI_Applications__1_4_
{
    partial class ChildForm
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
            this.ChildTextBox = new System.Windows.Forms.RichTextBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.FormatMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ToggleMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // ChildTextBox
            // 
            this.ChildTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ChildTextBox.Location = new System.Drawing.Point(0, 28);
            this.ChildTextBox.Name = "ChildTextBox";
            this.ChildTextBox.Size = new System.Drawing.Size(800, 422);
            this.ChildTextBox.TabIndex = 0;
            this.ChildTextBox.Text = "";
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.FormatMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // FormatMenuItem
            // 
            this.FormatMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToggleMenuItem});
            this.FormatMenuItem.MergeAction = System.Windows.Forms.MergeAction.Insert;
            this.FormatMenuItem.MergeIndex = 1;
            this.FormatMenuItem.Name = "FormatMenuItem";
            this.FormatMenuItem.Size = new System.Drawing.Size(74, 24);
            this.FormatMenuItem.Text = "Format";
            // 
            // ToggleMenuItem
            // 
            this.ToggleMenuItem.Name = "ToggleMenuItem";
            this.ToggleMenuItem.Size = new System.Drawing.Size(225, 26);
            this.ToggleMenuItem.Text = "&Toggle Foreground";
            this.ToggleMenuItem.Click += new System.EventHandler(this.ToggleMenuItem_Click);
            // 
            // ChildForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.ChildTextBox);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "ChildForm";
            this.Text = "Child Form";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RichTextBox ChildTextBox;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem FormatMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ToggleMenuItem;
    }
}