<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="Main_Page.aspx.cs" Inherits="Main_Pages_Main_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        height: 32px;
    }
    .auto-style5 {
        width: 1300px;
        height: 540px;
    }
    .auto-style6 {
        width: 410px;
        height: 252px;
        text-align: right;
    }
    .auto-style7 {
        width: 473px;
        height: 395px;
    }
    .auto-style8 {
        width: 411px;
        height: 252px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/image/Main_Page_Image/LOBBY_MENU.jpg" PostBackUrl="~/Main_Pages/LOBBY_Page/LOBBY_Page.aspx" Width="300px" />
        </td>
        <td class="auto-style7" rowspan="2">
            <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/image/Main_Page_Image/Main_Page_Center.jpg" Width="350px" />
        </td>
        <td class="auto-style8">
            <asp:ImageButton ID="ImageButton4" runat="server" Height="100px" ImageUrl="~/image/Main_Page_Image/ROOM_MENU.jpg" PostBackUrl="~/Main_Pages/ROOM_Page/ROOM_Page.aspx" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="100px" ImageUrl="~/image/Main_Page_Image/PAYMENT_MENU.jpg" PostBackUrl="~/Main_Pages/PAYMENT_Page/PAYMENT_Page.aspx" Width="300px" />
        </td>
        <td class="auto-style8">
            <asp:ImageButton ID="ImageButton5" runat="server" Height="100px" ImageUrl="~/image/Main_Page_Image/GUEST_MENU.jpg" PostBackUrl="~/Main_Pages/GUEST_Page/GUEST_Page.aspx" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3">
            <br />
            <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

