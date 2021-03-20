<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="Information_Management.aspx.cs" Inherits="Main_Pages_GUEST_Page_Information_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        height: 567px;
    }
    .auto-style3 {
        width: 1300px;
        text-align: center;
        height: 267px;
    }
    .auto-style6 {
        width: 1300px;
        text-align: center;
        height: 37px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#CCCCCC" Height="50px" style="font-size: 20pt; font-weight: 700; font-family: 'Baskerville Old Face'" Text="상 세 정 보" Width="300px" PostBackUrl="~/Main_Pages/GUEST_Page/정보 관리/상세정보.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="#CCCCCC" Height="50px" PostBackUrl="~/Main_Pages/GUEST_Page/정보 관리/거래내역조회.aspx" style="font-size: 20pt; font-family: 'Baskerville Old Face'; font-weight: 700" Text="거래내역조회" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button5" runat="server" BackColor="Gray" BorderColor="#666666" Height="50px" style="font-size: 20pt; font-weight: 700; font-family: 'Baskerville Old Face'" Text="고 객 리 뷰" Width="300px" PostBackUrl="~/Main_Pages/GUEST_Page/정보 관리/고객 리뷰/고객 리뷰.aspx" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="50px" style="font-size: 20pt; font-family: 'Baskerville Old Face'; font-weight: 700" Text="회원정보변경" Width="300px" PostBackUrl="~/Main_Pages/GUEST_Page/정보 관리/회원정보변경.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="50px" style="font-size: 20pt; font-family: 'Bell MT'; font-weight: 700" Text="회원탈퇴" Width="300px" PostBackUrl="~/Main_Pages/GUEST_Page/정보 관리/회원탈퇴.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

