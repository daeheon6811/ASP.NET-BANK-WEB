<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="거래내역조회.aspx.cs" Inherits="Main_Pages_GUEST_Page_정보_관리_거래내역조회" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
        .auto-style3 {
            width: 1300px;
        }
        .auto-style4 {
            text-align: center;
            width: 432px;
        }
        .auto-style5 {
            text-align: center;
            width: 433px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
    <tr>
        <td colspan="3" style="text-align: center">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="거 래 내 역 확 인 하 기 " BackColor="Black" ForeColor="White" Height="50px" style="font-size: large; font-weight: 700" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <asp:Table ID="Table1" runat="server" GridLines="Both" Width="1100px" style="font-size: 15pt">
            </asp:Table>
        </td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: x-large"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

