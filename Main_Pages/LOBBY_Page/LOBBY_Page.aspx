<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="LOBBY_Page.aspx.cs" Inherits="Main_Pages_LOBBY_Page_LOBBY_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 2500px;
        }
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style16 {
            font-weight: normal;
            font-size: 40pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3" style="width: 1800px">
        <tr>
            <td class="auto-style4" colspan="2">L O B B Y</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image10" runat="server" ImageUrl="~/image/Main_Page_Image/DOG_POINT.jpg" />
                <span class="auto-style16">
                <br />
                            &lt; 소 개 글 &gt;</span></td>
            <td class="auto-style16">
                <asp:Image ID="Image11" runat="server" ImageUrl="~/image/Main_Page_Image/DOG_POINT.jpg" />
                <br />
                            &lt; 기 능 &gt;</td>
        </tr>
        <tr>
            <td>
                            <asp:Image ID="Image4" runat="server" Height="1000px" ImageUrl="~/image/Main_Page_Image/LOBBY_Frame/LOBBY(1).jpg" Width="650px" />
                        </td>
            <td>
                            <asp:Image ID="Image5" runat="server" Height="1000px" ImageUrl="~/image/Main_Page_Image/LOBBY_Frame/LOBBY(2).jpg" Width="650px" />
                        </td>
        </tr>
    </table>
</asp:Content>

