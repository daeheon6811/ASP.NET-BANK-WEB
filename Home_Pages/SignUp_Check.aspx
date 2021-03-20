<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp_Check.aspx.cs" Inherits="박대헌_SignUp_Check" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3" style="font-size: 80px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                <br />
                <br />
                W e l c o m<br />
                y o u r&nbsp;&nbsp; v e r y&nbsp;&nbsp; s m a r t</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="50px" PostBackUrl="~/Home_Pages/LogIn.aspx" Text="L   O   G   I   N" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>

