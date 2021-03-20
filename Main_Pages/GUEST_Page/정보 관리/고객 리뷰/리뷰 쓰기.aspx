<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="리뷰 쓰기.aspx.cs" Inherits="Main_Pages_GUEST_Page_정보_관리_고객_리뷰_리뷰_쓰기" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 700px;
        }
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: x-large;
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style6" colspan="4">Review</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="nameTextBox" runat="server" BackColor="#CCCCCC" Height="25px" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="260px"></asp:TextBox>
            </td>
            <td class="auto-style4">ID</td>
            <td class="auto-style2">
                <asp:TextBox ID="idTextBox" runat="server" BackColor="#CCCCCC" Height="25px" OnTextChanged="TextBox2_TextChanged" ReadOnly="True" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Title</td>
            <td class="auto-style5" colspan="3">
                <asp:TextBox ID="titleTextBox" runat="server" Height="25px" OnTextChanged="TextBox2_TextChanged" Width="590px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Body</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: left">
                <asp:TextBox ID="bodyTextBox" runat="server" Height="231px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="672px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button1_Click" style="font-size: x-large; font-family: 'Baskerville Old Face'" Text="W R I T E" Width="200px" />
            </td>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="Button2" runat="server" BackColor="White" ForeColor="Black" Height="40px" OnClick="Button2_Click" style="font-size: x-large; font-family: 'Baskerville Old Face'" Text="C A N C E L" Width="200px" BorderColor="#CCCCCC" />
            </td>
        </tr>
    </table>
</asp:Content>

