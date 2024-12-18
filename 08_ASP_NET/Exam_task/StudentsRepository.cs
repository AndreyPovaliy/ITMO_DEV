using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exam_task
{
    public class StudentsRepository
    {
        private static StudentsRepository repository = new StudentsRepository();
        private List<StudentRecord> responses = new List<StudentRecord>();
        public static StudentsRepository GetRepository()
        {
            return repository;
        }
        public IEnumerable<StudentRecord> GetAllResponses()
        {
            return responses;
        }
        public void AddResponse(StudentRecord response)
        {
            responses.Add(response);
        }
    }
}