<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
        .auto-style6 {
            height: 19px;
            text-align: center;
        }
        .auto-style8 {
            font-size: x-large;
            color: #858585;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td style="font-family: 'Edwardian Script ITC'; font-size: 100px; font-weight: bolder; color: #000000; text-align: center;">
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/MainBaner.jpg" Height="400px" Width="1000px" />
            </td>
    </tr>
    <tr>
        <td class="auto-style6" style="color: #C1C1C1; font-size: small"><span class="auto-style8">당신의 금융 활동을 더욱 넓게<br />
            <br />
            <br />
            </span></td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="60px" Text="L  O  G  I  N" Width="400px" PostBackUrl="~/Home_Pages/LogIn.aspx" BorderColor="#CCCCCC" style="font-size: xx-large; font-weight: 700" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="Black" Height="60px" Text="J  O  I  N" Width="400px" PostBackUrl="~/Home_Pages/Sign_Up.aspx" BorderColor="#CCCCCC" style="font-weight: 700; font-size: xx-large" />
            <br />
            <br />
        </td>
    </tr>
    </table>
</asp:Content>

