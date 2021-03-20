<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="Member_Leave_Page.aspx.cs" Inherits="Main_Pages_Member_Leave_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            font-family: HY궁서B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="width: 1000px; height: 500px">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/image/HOME_BUTTON.png" PostBackUrl="~/Home_Pages/Home.aspx" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl="~/image/회원탈퇴 인사.jpg" Width="200px" />
            </td>
            <td class="auto-style3">그동한 저희 사이트를 이용해주셔서<br />
                <br />
                감사합니다.</td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="350px" ImageUrl="~/image/회원탈퇴 인사.jpg" Width="200px" />
            </td>
        </tr>
    </table>
</asp:Content>

