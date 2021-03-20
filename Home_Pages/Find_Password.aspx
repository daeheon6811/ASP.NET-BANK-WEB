<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Find_Password.aspx.cs" Inherits="박대헌_Find_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 606px;
        }
    .auto-style5 {
        height: 216px;
    }
    .auto-style3 {
        height: 24px;
        text-align: center;
    }
    .auto-style11 {
            height: 25px;
            width: 151px;
            text-align: center;
            font-size: xx-large;
        }
    .auto-style9 {
        height: 25px;
        text-align: center;
    }
        .auto-style12 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style5" colspan="3">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image2" runat="server" Height="170px" ImageUrl="~/image/Home_Page_Image/FIND PASS.jpg" Width="700px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">&nbsp;<br />
&nbsp;<br />
&nbsp;<br />
&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:TextBox ID="TextBox3" runat="server" Width="490px" Height="30px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:TextBox ID="TextBox4" runat="server" Width="490px" Height="30px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:TextBox ID="TextBox5" runat="server" Width="490px" Height="30px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">&nbsp;<br />
&nbsp;<br />
&nbsp;<br />
&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" style="font-weight: 700; font-size: x-large; color: #FFFFFF; background-color: #000000" Text="F  I  N  D" Width="250px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="White" ForeColor="Black" Height="40px" OnClick="Button2_Click" PostBackUrl="~/Home_Pages/LogIn.aspx" style="font-size: x-large; font-weight: 700" Text="L  O  G  I  N" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">&nbsp;<br />
&nbsp;<br />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">[</td>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style12"></asp:Label>
            </td>
            <td class="auto-style11">]</td>
        </tr>
    </table>
</asp:Content>

