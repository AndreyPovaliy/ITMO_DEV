<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="_01.RSVP.Reg"  MasterPageFile="~/Site.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
 <div> 
            <h1>Приглашаем на семинар</h1> 
            <p></p> 

        </div>
        <div> 
            <label>Ваше имя:</label>
            <asp:TextBox ID="name" runat="server">

            </asp:TextBox> 

            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ErrorMessage="Заполните поле имени" 
                ControlToValidate="name" 
                ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>

        </div> 
        <div> 
            <label>Ваш email:</label>
            <asp:TextBox ID="email" runat="server">

            </asp:TextBox> 
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ErrorMessage="Заполните поле адреса" ControlToValidate="email" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="E-mail is not in a valid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Адрес введен неверно!!!</asp:RegularExpressionValidator>
    </div> 
        <div> 
            <label>Ваш телефон:</label>
            <asp:TextBox ID="phone" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Заполните поле ввода телефона" ControlToValidate="phone" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        </div> 
        <div> 
            <label>Вы будете делать доклад?</label> 
            <asp:CheckBox ID="CheckBoxYN" runat="server" /> 

        </div>
    <div> Введите название доклада: 
        <asp:TextBox ID="TextBoxTitle" runat="server" Width="345px">

        </asp:TextBox> 

    </div>
    <div> Введите аннотацию доклада: 
        <asp:TextBox ID="TextBoxTextAnnot" runat="server" Width="345px">

        </asp:TextBox> 

    </div>
    <div> Введите название доклада: 
        <asp:TextBox ID="TextBoxTitle2" runat="server" Width="345px">

        </asp:TextBox> 

    </div>
    <div> Введите аннотацию доклада: 
        <asp:TextBox ID="TextBoxTextAnnot2" runat="server" Width="345px">

        </asp:TextBox> 

    </div>

<div>
<button type="submit">Отправить ответ на приглашение RSVP</button>
</div>

</asp:Content>

        

 