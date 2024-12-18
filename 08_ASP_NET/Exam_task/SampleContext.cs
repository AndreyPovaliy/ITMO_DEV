using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Exam_task
{
    public class SampleContext : DbContext
    {
        public SampleContext() : base("SchoolBD") { }
        public DbSet<StudentRecord> StudentRecords { get; set; }
        
    }
}