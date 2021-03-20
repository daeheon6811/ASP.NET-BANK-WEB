<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="은행 연동및해지 인증.aspx.cs" Inherits="Main_Pages_PAYMENT_Page_은행_연동및해지_인증" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
            height: 76px;
        }
        .auto-style5 {
            font-size: medium;
            color: #CCCCCC;
            height: 16px;
        }
        .auto-style6 {
            font-size: x-large;
            font-family: "Baskerville Old Face";
            height: 31px;
        }
        .auto-style7 {
            width: 500px;
            height: 92px;
        }
        .auto-style9 {
            width: 850px;
            height: 400px;
        }
        .auto-style14 {
            height: 60px;
        }
        .auto-style15 {
            height: 164px;
        }
        .auto-style17 {
            font-size: x-large;
            font-family: "Baskerville Old Face";
            height: 30px;
        }
        .auto-style18 {
            height: 30px;
        }
        .auto-style20 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9" align="center">
        <tr>
            <td class="auto-style4">Check In</td>
        </tr>
        <tr>
            <td class="auto-style5">(은행 연동 및 해지를 위하여 본인 인증을 해주시기 바랍니다.)</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <br />
                <table align="center" class="auto-style7">
                    <tr>
                        <td class="auto-style17"><strong>Name</strong></td>
                        <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><strong>Identity Number</strong></td>
                        <td class="auto-style20">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Height="60px" Text="C h e c k" Width="400px" BorderColor="#CCCCCC" OnClick="Button2_Click" style="font-weight: 700; font-size: xx-large; font-family: 'Baskerville Old Face';" />
            </td>
        </tr>
    </table>
</asp:Content>

