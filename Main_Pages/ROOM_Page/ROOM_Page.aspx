<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="ROOM_Page.aspx.cs" Inherits="Main_Pages_ROOM_Page_ROOM_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
        width: 1200px;
    }
    .auto-style5 {
        font-family: "Baskerville Old Face";
        font-size: 50pt;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style4" style="width: 1000px">
    <tr>
        <td class="auto-style5" colspan="5">ROOM</td>
    </tr>
    <tr>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/신한은행.jpg" OnClick="ImageButton3_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton4" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/국민은행.jpg" OnClick="ImageButton4_Click1" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton5" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/하나은행.jpg" OnClick="ImageButton5_Click" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton6" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/IBK기업은행.jpg" OnClick="ImageButton6_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton7" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/DGB대구은행.jpg" OnClick="ImageButton7_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton8" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/CITYBANK.jpg" OnClick="ImageButton8_Click" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton9" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/JB전북은행.jpg" OnClick="ImageButton9_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton10" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/BMK경남은행.jpg" OnClick="ImageButton10_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton11" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/우리은행.jpg" OnClick="ImageButton11_Click" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton12" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/KJB광주은행.jpg" OnClick="ImageButton12_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton13" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/수협은행.jpg" OnClick="ImageButton13_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton14" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/BNK부산은행.jpg" OnClick="ImageButton14_Click" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton15" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/NH농협은행.jpg" OnClick="ImageButton15_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton16" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/KEB외환은행.jpg" OnClick="ImageButton16_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton17" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/SC제일은행.jpg" OnClick="ImageButton17_Click" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton18" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/제주은행.jpg" OnClick="ImageButton18_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border: thin solid #C0C0C0">
            <asp:ImageButton ID="ImageButton19" runat="server" Height="80px" ImageUrl="~/image/BANK_MARK/KDB산업은행.jpg" OnClick="ImageButton19_Click" Width="300px" />
        </td>
        <td style="border-style: none">&nbsp;</td>
        <td style="border-style: none;">
                <asp:Button ID="Button1" runat="server" BackColor="#990000" ForeColor="White" Text="Quick 대 출" OnClick="Button1_Click" Height="50px" Width="180px" BorderColor="#CCCCCC" style="font-size: x-large; font-weight: 700; font-family: HY목각파임B;" />
            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: none">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

