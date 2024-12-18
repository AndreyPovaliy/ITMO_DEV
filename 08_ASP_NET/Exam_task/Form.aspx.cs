using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Exam_task
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                StudentRecord record = new StudentRecord (FirstName.Text, LastName.Text, Group.Text, Trigonometry.Text, Chemistry.Text, Literature.Text, ForeignLanguage.Text, Phisics.Text);
                StudentsRepository.GetRepository().AddResponse(record);
                try
                {

                    SampleContext context = new SampleContext();
                    context.StudentRecords.Add(record);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    Response.Redirect("Ошибка " + ex.Message);
                }
                Response.Redirect("ReportRecord.html");
                
            }
        }
    }
}