<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="GUEST_Page.aspx.cs" Inherits="정하성_GUEST_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 300px;
            height: 330px;
        }
        .auto-style4 {
            height: 20px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            height: 16px;
        }
        .auto-style8 {
            height: 106px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            height: 106px;
            font-family: "Baskerville Old Face";
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style11 {
            height: 35px;
            font-family: "Baskerville Old Face";
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style12 {
            font-family: "Baskerville Old Face";
            font-size: large;
        }
        .auto-style13 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td style="text-align: center">
                <br />
                <span class="auto-style13">GUEST</span><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <table align="center" class="auto-style3">
                    <tr>
                        <td class="auto-style11">Name</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" CssClass="auto-style12" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">ID</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" CssClass="auto-style12" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Phone_Num</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" CssClass="auto-style12" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Home_Num</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" CssClass="auto-style12" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Address</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCCC" CssClass="auto-style12" Height="100px" ReadOnly="True" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="50px" PostBackUrl="~/Main_Pages/GUEST_Page/Information_Management.aspx" style="font-size: xx-large" Text="정 보 관 리" Width="350px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#CCCCCC" Height="50px" OnClick="Button1_Click" PostBackUrl="~/Home_Pages/Home.aspx" style="font-size: xx-large" Text="로 그 아 웃" Width="350px" />
            </td>
        </tr>
        </table>
</asp:Content>

