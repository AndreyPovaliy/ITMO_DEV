using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Exam_task
{
    public class StudentRecord
    {
        public int StudentRecordId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Group { get; set; }
        
        public string Trigonometry { get; set; }
        public string Chemistry { get; set; }
        public string Literature { get; set; }
        public string ForeignLanguage { get; set; }
        public string Phisics { get; set; }

        public int Sumsubject { get; set; }


        public StudentRecord(string firstName, string lastName, string group, string trigonometry, string chemistry, string literature, string foreignLanguage, string phisics) 
        {
            FirstName = firstName;
            LastName = lastName;
            Group = group;
            Trigonometry= trigonometry;
            Chemistry = chemistry;
            Literature = literature;
            ForeignLanguage = foreignLanguage;
            Phisics = phisics;
            Sumsubject = Convert.ToInt32(trigonometry) + Convert.ToInt32(chemistry) + Convert.ToInt32(literature) + Convert.ToInt32(foreignLanguage) + Convert.ToInt32(phisics);

        }
    }
}