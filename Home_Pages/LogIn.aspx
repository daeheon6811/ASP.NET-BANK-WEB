<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style2 {
        width: 100%;
    }
        .auto-style6 {
            height: 19px;
            text-align: center;
            font-size: x-large;
            color: #858585;
        }
        .auto-style3 {
        height: 20px;
            text-align: center;
        }
        .auto-style12 {
            width: 335px;
            height: 179px;
        }
        .auto-style15 {
            width: 100px;
            text-align: center;
            height: 36px;
        }
        .auto-style16 {
            text-align: center;
            height: 36px;
        }
        .auto-style19 {
            text-align: center;
            height: 35px;
        }
        .auto-style20 {
            width: 99px;
            text-align: center;
            height: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="auto-style2">
    <tr>
        <td style="font-family: 'Edwardian Script ITC'; font-size: 120px; font-weight: bolder; color: #000000; text-align: center;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/MainBaner.jpg" Height="400px" Width="1000px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">당신의 금융 활동을 더욱 넓게</td>
    </tr>
    <tr>
        <td>
            <br />
            <table align="center" class="auto-style12">
                <tr>
                    <td class="auto-style19" colspan="4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-relevant="25" class="auto-style19" colspan="4">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="350px" OnTextChanged="TextBox2_TextChanged1" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="4">
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="4">
                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="4">
                        <asp:Button ID="Button3" runat="server" BackColor="White" ForeColor="Black" Height="40px" Text="인 증 번 호   받 기" Width="200px" style="font-weight: 700" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">[</td>
                    <td class="auto-style20" colspan="2">
                        <asp:Label ID="Label1" runat="server" style="font-size: large"></asp:Label>
                    </td>
                    <td class="auto-style15">] </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" style="font-size: small" PostBackUrl="~/Home_Pages/Find_ID.aspx">아이디 찾기</asp:LinkButton>
                    </td>
                    <td class="auto-style16" colspan="2">
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" style="font-size: small" PostBackUrl="~/Home_Pages/Find_Password.aspx">비밀전호 찾기</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="60px" Text="L  O  G  I  N" Width="400px" BorderColor="#CCCCCC" OnClick="Button2_Click" style="font-weight: 700; font-size: xx-large" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="Black" Height="60px" Text="C  E  N  C  E  L" Width="400px" PostBackUrl="~/Home_Pages/Home.aspx" BorderColor="#CCCCCC" style="font-size: xx-large; font-weight: 700" />
            <br />
        </td>
    </tr>
    </table>
        <br />
    </p>
    </asp:Content>

