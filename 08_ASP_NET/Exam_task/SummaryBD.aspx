<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="Exam_task.SummaryBD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Список студентов</h2>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="Имя" ReadOnly="True" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Фамилиия" ReadOnly="True" SortExpression="LastName" />
                <asp:BoundField DataField="Group" HeaderText="Группа" ReadOnly="True" SortExpression="Group" />
                <asp:BoundField DataField="Trigonometry" HeaderText="Тригонометрия" ReadOnly="True" SortExpression="Trigonometry" />
                <asp:BoundField DataField="Chemistry" HeaderText="Химия" ReadOnly="True" SortExpression="Chemistry" />
                <asp:BoundField DataField="Literature" HeaderText="Литература" ReadOnly="True" SortExpression="Literature" />
                <asp:BoundField DataField="ForeignLanguage" HeaderText="Иностранный язык" ReadOnly="True" SortExpression="ForeignLanguage" />
                <asp:BoundField DataField="Phisics" HeaderText="Физика" ReadOnly="True" SortExpression="Phisics" />
                <asp:BoundField DataField="Sumsubject" HeaderText="Сумма баллов" ReadOnly="True" SortExpression="Sumsubject" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Exam_task.SampleContext" EntityTypeName="" Select="new (FirstName, LastName, Group, Trigonometry, Chemistry, Literature, ForeignLanguage, Phisics, Sumsubject)" TableName="StudentRecords">
        </asp:LinqDataSource>
    </form>
</body>
</html>
