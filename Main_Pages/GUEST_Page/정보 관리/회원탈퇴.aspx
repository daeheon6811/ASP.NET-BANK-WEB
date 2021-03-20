<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="회원탈퇴.aspx.cs" Inherits="Main_Pages_GUEST_Page_정보_관리_회원탈퇴" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 500px;
            height: 254px;
        }
        .auto-style17 {
            height: 21px;
        }
        .auto-style18 {
            width: 249px;
            height: 21px;
        }
        .auto-style19 {
            height: 22px;
        }
        .auto-style20 {
            width: 249px;
            height: 22px;
        }
        .auto-style21 {
            height: 21px;
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style22 {
            height: 21px;
            font-family: "Baskerville Old Face";
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style21" colspan="2">Member Leave</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Name</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Password</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="300px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Identity Number</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Phone Num</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2">
                <asp:Button ID="Button2" runat="server" BackColor="Black" BorderColor="#CCCCCC" ForeColor="White" Height="50px" OnClick="Button2_Click" style="font-size: xx-large; font-family: 'Baskerville Old Face'" Text="L E A V E" Width="350px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

