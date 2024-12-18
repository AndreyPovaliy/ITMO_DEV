<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="Exam_task.Summary"  MasterPageFile="~/Site.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
        <h2>Студенты</h2>
        <h3>Внесенные данные студентов </h3>
        <table>
            <thead>
                <tr>
                    <th>Имя</th>
                    <th>Фамилия</th>
                    <th>Группа</th>
                    <th>Сумма баллов</th>

                </tr>

            </thead>
            <tbody>
                <% 
                    var yesData = Exam_task.StudentsRepository.GetRepository().GetAllResponses();
                    foreach (var record in yesData) 
                    { 
                        
                        string htmlString = 
                            String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td>", 
                            record.FirstName, record.LastName, record.Group, record.Sumsubject);
                        Response.Write(htmlString); 
                    } 
                    %>

            </tbody>

        </table>

    </div>



</asp:Content>
    
