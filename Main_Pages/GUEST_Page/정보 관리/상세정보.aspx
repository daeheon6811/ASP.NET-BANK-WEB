<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="상세정보.aspx.cs" Inherits="Main_Pages_GUEST_Page_정보_관리_상세정보" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 1300px;
            height: 810px;
        }
        .auto-style4 {
            text-align: center;
            width: 432px;
            height: 24px;
        }
        .auto-style6 {
        font-family: "Baskerville Old Face";
        font-size: 50pt;
        height: 78px;
    }
    .auto-style7 {
        height: 20px;
    }
        .auto-style10 {
            width: 500px;
        }
        .auto-style11 {
            font-family: "Baskerville Old Face";
            font-size: x-large;
        }
        .auto-style12 {
            height: 20px;
            font-family: "Baskerville Old Face";
            font-size: x-large;
        }
        .auto-style13 {
            height: 484px;
        }
        .auto-style14 {
            text-align: center;
            height: 16px;
        }
        .auto-style16 {
            text-align: center;
            height: 24px;
        }
        .auto-style17 {
            text-align: center;
            width: 433px;
            height: 24px;
        }
        .auto-style18 {
            text-align: center;
            height: 62px;
        }
        .auto-style19 {
            text-align: center;
            height: 24px;
            font-family: 궁서;
            font-size: x-large;
        }
        .auto-style20 {
            font-family: "Baskerville Old Face";
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
    <tr>
        <td colspan="3" style="text-align: center" class="auto-style6">Detail Imformation</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center" class="auto-style13">
            <table align="center" class="auto-style10">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>NAME</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>ID</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Password</strong></td>
                    <td style="font-weight: 700">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Identity Number</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Phone Num</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCCC" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Home Num</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCCCCC" Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Address</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCCC" Height="100px" ReadOnly="True" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style18" colspan="3">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18" colspan="3">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/image/로코코 무늬 라인.jpg" Width="700px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style19" colspan="3">
                &lt; 은 행 정 보 &gt;</td>
    </tr>
    <tr>
        <td class="auto-style19" colspan="3">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16" colspan="3">
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="30px" Width="200px" style="font-size: medium" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
        <td class="auto-style14" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style17">
            <asp:Table ID="Table1" runat="server" GridLines="Both" Width="1100px" style="font-size: 15pt">
            </asp:Table>
        </td>
        <td class="auto-style17">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14" colspan="3">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" colspan="3">
            &nbsp;<br />
&nbsp;<br />
            <br />
&nbsp;<br />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="250px" ImageUrl="~/image/로코코 무늬.jpg" Width="700px" />
            <br />
&nbsp;<br />
            <span class="auto-style11">&nbsp;</span><span class="auto-style20">B r a i n&nbsp; .&nbsp; B a n k&nbsp; .&nbsp; H o t e l</span><span class="auto-style11"><br />
            </span>
            <br class="auto-style11" />
            <span class="auto-style11">B.B.H</span><br />
&nbsp;<br />
&nbsp;<br />
&nbsp;<br />
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

