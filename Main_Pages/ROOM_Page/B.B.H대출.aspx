<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="B.B.H대출.aspx.cs" Inherits="Main_Pages_ROOM_Page_B_B_H대출" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 900px;
            height: 186px;
        }
        .auto-style14 {
            height: 62px;
        }
        .auto-style15 {
            height: 62px;
            width: 299px;
            text-align: right;
        }
        .auto-style11 {
            width: 300px;
            height: 62px;
            text-align: left;
        }
        .auto-style13 {
            height: 62px;
        }
        .auto-style7 {
            height: 62px;
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
                <asp:Image ID="Image1" runat="server" Height="200px" Width="600px" />
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
                <asp:Button ID="Button2" runat="server" BackColor="#990000" ForeColor="White" Height="60px" Text="대 출 하 러 가기" Width="300px" BorderColor="#CCCCCC" style="font-size: xx-large; font-weight: 700; font-family: HY목각파임B;" OnClick="Button2_Click" PostBackUrl="~/Main_Pages/ROOM_Page/B_B_H 대출/대출 본인 인증.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

