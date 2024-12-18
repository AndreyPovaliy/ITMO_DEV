using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Reflection;
using WordObj = Microsoft.Office.Interop.Word;

namespace _19.Word1__5_4_
{
    public partial class Form1 : Form

    {
        WordObj.Application winword;

        public Form1()
        {
            InitializeComponent();
        }

        private void NewDocument()
        {
            winword = new WordObj.Application();
            winword.Visible = true;
            WordObj.Document document = winword.Documents.Add();
            foreach (WordObj.Section section in document.Sections)
            {
                WordObj.Range headerRange = section.Headers[WordObj.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range;
                headerRange.Fields.Add(headerRange, WordObj.WdFieldType.wdFieldPage);
                headerRange.ParagraphFormat.Alignment = WordObj.WdParagraphAlignment.wdAlignParagraphCenter;
                headerRange.Font.ColorIndex = WordObj.WdColorIndex.wdBlue;
                headerRange.Font.Size = 10;
                headerRange.Text = "Это верхний колонтитул:" + Environment.NewLine + "Отчет";
            }
            foreach (WordObj.Section wordSection in document.Sections)
            {
                WordObj.Range footerRange =
                wordSection.Footers[WordObj.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range;
                footerRange.Font.ColorIndex = WordObj.WdColorIndex.wdDarkRed;
                footerRange.Font.Size = 10;
                footerRange.ParagraphFormat.Alignment =
                WordObj.WdParagraphAlignment.wdAlignParagraphCenter;
                footerRange.Text = "Это нижний колонтитул:" + Environment.NewLine + "Отчет";

            }

            document.Content.SetRange(0, 0);
            document.Content.Text = "Отчет" + Environment.NewLine; ;
            WordObj.Paragraph para1 = document.Content.Paragraphs.Add();
            object styleHeading1 = "Заголовок 1";
            para1.Range.set_Style(styleHeading1);
            para1.Range.Text = "Результаты";
            para1.Range.InsertParagraphAfter();

            //Создание таблицы 5х5
            WordObj.Table firstTable = document.Tables.Add(para1.Range, 5, 5);
            firstTable.Borders.Enable = 1;
            foreach (WordObj.Row row in firstTable.Rows)
            {
                foreach (WordObj.Cell cell in row.Cells)
                {
                    //Заголовок таблицы
                    if (cell.RowIndex == 1)
                    {
                        cell.Range.Text = "Колонка " + cell.ColumnIndex.ToString();
                        cell.Range.Font.Bold = 1;
                        //Задаем шрифт и размер текста
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 10;
                        cell.Shading.BackgroundPatternColor = WordObj.WdColor.wdColorGray25;
                        //Выравнивание текста в заголовках столбцов по центру
                        cell.VerticalAlignment =
                        WordObj.WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                        cell.Range.ParagraphFormat.Alignment =
                        WordObj.WdParagraphAlignment.wdAlignParagraphCenter;
                    }
                    //Значения ячеек
                    else
                    {
                        cell.Range.Text = (cell.RowIndex - 2 + cell.ColumnIndex).ToString();
                    }

                    
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                NewDocument();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
