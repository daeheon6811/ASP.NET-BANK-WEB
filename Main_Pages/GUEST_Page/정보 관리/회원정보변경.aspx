<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="회원정보변경.aspx.cs" Inherits="Main_Pages_GUEST_Page_정보_관리_회원정보변경" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 710px;
        }
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: x-large;
        }
        .auto-style5 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style5" colspan="4">Chage Guest Data</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Password</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="400px"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="30px" Text="U p d a t e" Width="120px" BorderColor="#CCCCCC" style="font-size: medium; font-weight: 700; font-family: 'Baskerville Old Face';" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{4,10}">* 4자 ~ 8자 사이로 입력해주시기 바랍니다.</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Phone Number</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="400px"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="Button3" runat="server" BackColor="Black" ForeColor="White" Height="30px" Text="U p d a t e" Width="120px" BorderColor="#CCCCCC" style="font-size: medium; font-weight: 700; font-family: 'Baskerville Old Face';" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{3}-\d{3,4}-\d{3,4}">* 전화번호의 형식이 올바르지 않습니다.</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Home Number</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="400px"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="Button4" runat="server" BackColor="Black" ForeColor="White" Height="30px" Text="U p d a t e" Width="120px" BorderColor="#CCCCCC" style="font-size: medium; font-weight: 700; font-family: 'Baskerville Old Face';" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{3}-\d{3,4}-\d{3,4}">* 전화번호의 형식이 올바르지 않습니다.</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Address</strong></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="400px"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="Button5" runat="server" BackColor="Black" ForeColor="White" Height="30px" Text="U p d a t e" Width="120px" BorderColor="#CCCCCC" style="font-size: medium; font-weight: 700; font-family: 'Baskerville Old Face';" OnClick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="4">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

