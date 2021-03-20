<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="대출 하기.aspx.cs" Inherits="Main_Pages_ROOM_Page_B_B_H_대출_대출_하기" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 433px;
        }
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style5 {
            font-family: "Baskerville Old Face";
            font-size: x-large;
        }
        .auto-style8 {
            width: 300px;
        }
        .auto-style9 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style4" colspan="2">USE Loan</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="30px" Width="200px" style="font-size: medium">
                    <asp:ListItem Value="경남_Bank">경 남 은 행</asp:ListItem>
                    <asp:ListItem Value="광주_Bank">광 주 은 행</asp:ListItem>
                    <asp:ListItem Value="국민_Bank">국 민 은 행</asp:ListItem>
                    <asp:ListItem Value="기업_Bank">기 업 은 행</asp:ListItem>
                    <asp:ListItem Value="대구_Bank">대 구 은 행</asp:ListItem>
                    <asp:ListItem Value="부산_Bank">부 산 은 행</asp:ListItem>
                    <asp:ListItem Value="산업_Bank">산 업 은 행</asp:ListItem>
                    <asp:ListItem Value="시티_Bank">시 티 은 행</asp:ListItem>
                    <asp:ListItem Value="신한_Bank">신 한 은 행</asp:ListItem>
                    <asp:ListItem Value="외환_Bank">외 환 은 행</asp:ListItem>
                    <asp:ListItem Value="우리_Bank">우 리 은 행</asp:ListItem>
                    <asp:ListItem Value="전북_Bank">전 북 은 행</asp:ListItem>
                    <asp:ListItem Value="제일_Bank">제 일 은 행</asp:ListItem>
                    <asp:ListItem Value="제주_Bank">제 주 은 행</asp:ListItem>
                    <asp:ListItem Value="하나_Bank">하 나 은 행</asp:ListItem>
                    <asp:ListItem Value="수협_Bank">수         협</asp:ListItem>
                    <asp:ListItem Value="농협_Bank">농         협</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px" style="font-size: xx-large"></asp:TextBox>
                <span class="auto-style5"><strong>&nbsp;￦</strong></span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                        <asp:Button ID="Button3" runat="server" BackColor="White" ForeColor="Black" Height="40px" Text="인 증 번 호   받 기" Width="200px" style="font-weight: 700" OnClick="Button3_Click" />
                    </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table align="center" class="auto-style8">
                    <tr>
                        <td>[</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td>]</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button4" runat="server" BackColor="Black" ForeColor="White" Height="40px" OnClick="Button4_Click" style="font-size: xx-large; font-family: 'Baskerville Old Face'" Text="Loan" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="White" ForeColor="Black" Height="40px" OnClick="Button5_Click" style="font-size: xx-large; font-family: 'Baskerville Old Face'" Text="Cancel" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                <asp:Label ID="Label2" runat="server" ForeColor="Red" style="font-size: large"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

