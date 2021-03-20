<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="은행연동.aspx.cs" Inherits="Main_Pages_PAYMENT_Page_은행연동" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        width: 517px;
        height: 413px;
    }
    .auto-style4 {
        height: 51px;
    }
    .auto-style5 {
        font-family: "Baskerville Old Face";
        font-size: 50pt;
        height: 67px;
    }
    .auto-style7 {
        height: 16px;
    }
    .auto-style8 {
        font-size: x-large;
        font-family: "Baskerville Old Face";
        height: 31px;
    }
    .auto-style9 {
        height: 31px;
    }
    .auto-style10 {
        height: 16px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
    <tr>
        <td class="auto-style5" colspan="2">은행 연동</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}-\d{2,}-\d{2,}">* 계좌번호의 형식이 잘못 되었습니다.</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Account Number</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{4}">* 계좌 비밀번호는 숫자 4자리만 가능합니다.</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Account Password</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="2000000000" MinimumValue="0" Type="Integer">* 계좌 최대 금액은 20억원 까지 입니다.</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Price for Acoount</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="200000000" MinimumValue="0" Type="Integer">* 대출 최대 금액은 -2억원 까지 입니다.</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Loan Amount</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="2">
            <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: medium"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="2">
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="70px" Text="계  정  연  동" Width="350px" PostBackUrl="~/Main_Pages/ROOM_Page/은행연동.aspx" BorderColor="#CCCCCC" style="font-size: x-large; font-weight: 700" OnClick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
</table>
</asp:Content>

