<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="대출 본인 인증.aspx.cs" Inherits="Main_Pages_ROOM_Page_B_B_H_대출_대출_본인_인증" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 500px;
        }
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style10 {
            width: 392px;
        }
        .auto-style11 {
            font-family: "Baskerville Old Face";
            font-size: x-large;
            width: 392px;
        }
        .auto-style12 {
            width: 392px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style4" colspan="2">confirmation</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Name</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* 한글 3~4자로 입력하시오" ForeColor="Red" ValidationExpression="[가-힣]{3,4}" Font-Bold="True" style="font-size: small; font-weight: 400;" EnableClientScript="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">ID</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="* 4자 ~ 10자 이내로 입력하세요" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{4,10}" Font-Bold="True" style="font-size: small; font-weight: 400;" EnableClientScript="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Password</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" TextMode="Password" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="* 8자 이상으로 입력해주세요" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{8,20}" Font-Bold="True" style="font-size: small; font-weight: 400;" EnableClientScript="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Identity Number</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="* 형식이 올바르지 않습니다." ForeColor="Red" ValidationExpression="\d{6}-\d{7}" Font-Bold="True" style="font-size: small; font-weight: 400;" EnableClientScript="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Phone Num</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="* 형식이 올바르지 않습니다." ForeColor="Red" ValidationExpression="\d{3}-\d{3,4}-\d{3,4}" Font-Bold="True" style="font-size: small; font-weight: 400;" EnableClientScript="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button1_Click" style="font-size: x-large; font-family: HY목각파임B" Text="본 인 인 증" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: large"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

