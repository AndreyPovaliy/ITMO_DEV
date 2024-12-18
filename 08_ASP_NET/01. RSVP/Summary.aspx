<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="_01.RSVP.Summary"  MasterPageFile="~/Site.master" %>


<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
<div>
                <h2>Приглашения</h2>
                <h3>Выступающие с докладом: </h3>
                <table>
                    <thead>
                        <tr>
                            <th>Имя</th>
                            <th>Email</th>
                            <th>Телефон</th>

                        </tr>

                    </thead>
                    <tbody>
                        <%= GetNoShowHtml()%>
                        <% var yesData = _01.RSVP.ResponseRepository.GetRepository().GetAllResponses()
                                .Where(r => r.WillAttend.Value);
                            foreach (var rsvp in yesData) { string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td>", rsvp.Name, rsvp.Email, rsvp.Phone, rsvp.Rdata);
                                Response.Write(htmlString); } %>
                    </tbody>

                </table>

            </div>


</asp:Content>

            
      
