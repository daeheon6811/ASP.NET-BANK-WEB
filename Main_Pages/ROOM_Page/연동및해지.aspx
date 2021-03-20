<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="연동및해지.aspx.cs" Inherits="Main_Pages_PAYMENT_Page_연동및해지" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 900px;
            height: 186px;
        }
        .auto-style7 {
            height: 62px;
        }
        .auto-style11 {
            width: 300px;
            height: 62px;
            text-align: left;
        }
        .auto-style13 {
            height: 62px;
        }
        .auto-style14 {
            height: 62px;
        }
        .auto-style15 {
            height: 62px;
            width: 299px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style14" colspan="3">
                <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/image/로코코 무늬.jpg" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td style="border: thin none #C0C0C0;">
                <asp:Image ID="Image1" runat="server" Height="80px" Width="350px" />
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="3">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="3">
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="70px" Text="계  정  연  동" Width="350px" PostBackUrl="~/Main_Pages/ROOM_Page/은행연동.aspx" BorderColor="#CCCCCC" style="font-size: x-large; font-weight: 700" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="Black" Height="70px" Text="연  동  해  지" Width="350px" BorderColor="#CCCCCC" style="font-weight: 700; font-size: x-large" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

