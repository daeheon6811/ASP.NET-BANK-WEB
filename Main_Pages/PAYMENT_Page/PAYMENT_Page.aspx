<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="PAYMENT_Page.aspx.cs" Inherits="Main_Pages_PAYMENT_Page_PAYMENT_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
            text-align: center;
        }
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
            height: 18px;
        }
        .auto-style7 {
            width: 100%;
            height: 535px;
        }
        .auto-style8 {
            text-align: center;
            height: 108px;
        }
        .auto-style9 {
            text-align: center;
            height: 26px;
        }
        .auto-style10 {
            text-align: center;
            height: 24px;
        }
        .auto-style11 {
            text-align: center;
            height: 16px;
        }
        .auto-style12 {
            height: 39px;
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
            height: 52px;
        }
        .auto-style14 {
            text-align: center;
            }
        .auto-style15 {
            height: 50px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style8">
                <br />
                <span class="auto-style4">PAYMENT<br />
                </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="30px" Width="200px" style="font-size: medium">
                    <asp:ListItem Value="경남_Bank">경 남 은 행</asp:ListItem>
                    <asp:ListItem Value="광주_Bank">광 주 은 행</asp:ListItem>
                    <asp:ListItem Value="국민_Bank">국 민 은 행</asp:ListItem>
                    <asp:ListItem Value="기업_Bank">기 업 은 행</asp:ListItem>
                    <asp:ListItem Value="대구_Bank">부 산 은 행</asp:ListItem>
                    <asp:ListItem Value="부산_Bank">산 업 은 행</asp:ListItem>
                    <asp:ListItem Value="산업_Bank">시 티 은 행</asp:ListItem>
                    <asp:ListItem Value="시티_Bank">외 환 은 행</asp:ListItem>
                    <asp:ListItem Value="신한_Bank">우 리 은 행</asp:ListItem>
                    <asp:ListItem Value="외환_Bank">전 북 은 행</asp:ListItem>
                    <asp:ListItem Value="우리_Bank">제 일 은 행</asp:ListItem>
                    <asp:ListItem Value="전북_Bank">제 주 은 행</asp:ListItem>
                    <asp:ListItem Value="제일_Bank">하 나 은 행</asp:ListItem>
                    <asp:ListItem Value="수협_Bank">신 한 은 행</asp:ListItem>
                    <asp:ListItem Value="농협_Bank">대 구 은 행</asp:ListItem>
                    <asp:ListItem Value="제주_Bank">수         협</asp:ListItem>
                    <asp:ListItem Value="하나_Bank">농         협</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" style="font-size: medium" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="300px" style="text-align: right; font-size: xx-large"></asp:TextBox>
                <span class="auto-style5"><strong>&nbsp;￦</strong></span></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="White" ForeColor="White" Height="50px" OnClick="Button1_Click" style="font-weight: 700; font-size: large; font-family: 'Baskerville Old Face'" Text="S  E  N  D" Width="160px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#CCCCCC" ForeColor="Black" Height="50px" OnClick="Button1_Click" style="font-weight: 700; font-size: large; font-family: 'Baskerville Old Face'" Text="C  A  N  C  E  L" Width="160px" PostBackUrl="~/Main_Pages/Main_Page.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: x-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

