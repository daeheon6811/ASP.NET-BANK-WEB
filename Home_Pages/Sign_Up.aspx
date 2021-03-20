<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sign_Up.aspx.cs" Inherits="Sign_Up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 1226px;
            height: 100%;
        }
        .auto-style5 {
            width: 820px;
        }
        .auto-style6 {
            width: 200px;
            height: 20px;
        }
        .auto-style7 {
            width: 820px;
            height: 20px;
        }
        .auto-style9 {
        width: 200px;
        height: 23px;
    }
    .auto-style10 {
        width: 820px;
        height: 23px;
    }
    .auto-style13 {
        width: 820px;
        text-align: center;
            font-size: 70pt;
            font-family: "Baskerville Old Face";
        }
    .auto-style14 {
        text-align: center;
    }
    .auto-style16 {
        width: 200px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style16" style="font-size: 60px; font-weight: bolder; font-family: 돋움체;" colspan="2">&nbsp;</td>
            <td class="auto-style5" style="border-style: none; font-size: 80px; font-weight: bolder; font-family: 돋움체; " colspan="2">&nbsp;</td>
            <td style="font-size: 60px; font-weight: bolder; font-family: 돋움체;" class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-size: 60px; font-weight: bolder; font-family: 돋움체;" colspan="2">&nbsp;</td>
            <td class="auto-style13" style="border-bottom: medium solid #E3E3E3; font-weight: bolder; " colspan="2">J&nbsp; O&nbsp; I&nbsp; N</td>
            <td style="font-size: 60px; font-weight: bolder; font-family: 돋움체;" class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2"></td>
            <td class="auto-style7" colspan="2"></td>
            <td class="auto-style6" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>이름</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2"></td>
            <td class="auto-style10" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="785px" style="margin-top: 0px" OnTextChanged="TextBox1_TextChanged" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style9" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2"></td>
            <td class="auto-style7" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* 한글 3~4자로 입력하시오" ForeColor="Red" ValidationExpression="[가-힣]{3,4}" Font-Bold="True" style="font-size: medium; font-weight: 400;"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>주민등록번호</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Width="785px" OnTextChanged="TextBox2_TextChanged" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* 형식이 올바르지 않습니다." ForeColor="#F200F2" ValidationExpression="\d{6}-\d{7}" Font-Bold="True" style="font-size: medium; color: #FF0000; font-weight: 400;"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>아이디</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Width="785px" OnTextChanged="TextBox3_TextChanged" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2"></td>
            <td class="auto-style7" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* 4자 ~ 10자 이내로 입력하세요" ForeColor="#F200F2" ValidationExpression="[a-zA-Z0-9]{4,10}" Font-Bold="True" style="font-size: medium; color: #FF0000; font-weight: 400;"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2"></td>
            <td class="auto-style7" colspan="2"><strong>비밀번호</strong></td>
            <td class="auto-style6" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" Width="785px" OnTextChanged="TextBox4_TextChanged" TextMode="Password" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2"></td>
            <td class="auto-style7" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* 8자 이상으로 입력해주세요" ForeColor="#F200F2" ValidationExpression="[a-zA-Z0-9]{8,20}" Font-Bold="True" style="font-size: medium; color: #FF0000; font-weight: 400;"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>비밀번호 확인</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox5" runat="server" Width="785px" OnTextChanged="TextBox5_TextChanged" TextMode="Password" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2"></td>
            <td class="auto-style7" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="* 비밀번호가 틀렸습니다" ForeColor="#F200F2" Font-Bold="True" style="font-size: medium; color: #FF0000; font-weight: 400;"></asp:CompareValidator>
            </td>
            <td class="auto-style6" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>Phone_Number</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox6" runat="server" Width="785px" OnTextChanged="TextBox6_TextChanged" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="* 형식이 올바르지 않습니다." ForeColor="#F200F2" ValidationExpression="\d{3}-\d{3,4}-\d{3,4}" Font-Bold="True" style="font-size: medium; font-weight: 400; color: #FF0000;"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>Home_Number</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox7" runat="server" Width="785px" OnTextChanged="TextBox7_TextChanged" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="* 형식이 올바르지 않습니다." ValidationExpression="\d{3}-\d{3,4}-\d{3,4}" Font-Bold="True" ForeColor="#F200F2" style="font-size: medium; color: #FF0000; font-weight: 400;"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2"><strong>주소</strong></td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2"></td>
            <td class="auto-style10" colspan="2">
                <asp:TextBox ID="TextBox8" runat="server" Width="785px" OnTextChanged="TextBox8_TextChanged" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style9" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">&nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Text="J  O  I  N" OnClick="Button1_Click" Height="60px" Width="300px" BorderColor="#CCCCCC" style="font-size: x-large; font-weight: 700" />
            </td>
            <td class="auto-style14" colspan="2">
                <asp:Button ID="Button2" runat="server" BackColor="White" ForeColor="Black" Text="C  E  N  C  E  L" Height="60px" PostBackUrl="~/Home_Pages/Home.aspx" Width="300px" OnClick="Button2_Click" BorderColor="#CCCCCC" style="font-size: x-large; font-weight: 700; text-align: center" CausesValidation="False" />
            </td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="6">
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

