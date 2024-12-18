<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Exam_task.Form"  MasterPageFile="~/Site.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
      <div>
            <div> <label>Имя студента:</label><asp:TextBox ID="FirstName" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Фамилия студента:</label><asp:TextBox ID="LastName" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Группа:</label><asp:TextBox ID="Group" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Оценка по тригонометрии:</label><asp:TextBox ID="Trigonometry" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Оценка по химии:</label><asp:TextBox ID="Chemistry" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Оценка по литературе:</label><asp:TextBox ID="Literature" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Оценка по иностранному языку:</label><asp:TextBox ID="ForeignLanguage" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <div> <label>Оценка по физике:</label><asp:TextBox ID="Phisics" runat="server"></asp:TextBox> </div>
        </div>
        <div>
            <button type="submit">Отправить данные студента</button>

        </div>




</asp:Content>
      