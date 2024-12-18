using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;


namespace _22.WindowsFormsChart__6_3_
{
    public partial class Form1 : Form
    {
        static int k = 10;
        dat d1 = new dat(k);
        public Form1()
        {
            InitializeComponent();
            for (int i = 1; i <= k; i++)
            {
                chart1.Series["Series1"].Points.AddXY(i, d1.random(10));
                chart1.Series["Series1"].ChartType = SeriesChartType.Spline;
                chart1.Series["Series1"].IsValueShownAsLabel = true;
                chart1.Series["Series1"].LegendText = "Ветер м/с";
            }
        }

        private void chartPlot(int d, string leg)
        {
            chart1.Series["Series1"].Points.Clear();
            for (int i = 1; i <= k; i++)
            {
                chart1.Series["Series1"].Points.AddXY(i, d1.random(d));
            }
            if (checkBox1.Checked == true)
                chart1.Series["Series1"].ChartType = SeriesChartType.Column;
            else
                chart1.Series["Series1"].ChartType = SeriesChartType.Spline;
            chart1.Series["Series1"].IsValueShownAsLabel = true;
            chart1.Series["Series1"].LegendText = leg;
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
            {
                chartPlot(100, "Влажность");
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
            {
                chartPlot(30, "Температура");
            }
        }
    }
}
