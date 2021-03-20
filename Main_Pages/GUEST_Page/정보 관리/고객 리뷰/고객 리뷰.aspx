<%@ Page Title="" Language="C#" MasterPageFile="~/BB_Main_MasterPage.master" AutoEventWireup="true" CodeFile="고객 리뷰.aspx.cs" Inherits="Main_Pages_GUEST_Page_정보_관리_고객_리뷰_고객_리뷰" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            width: 900px;
        }
        .auto-style6 {
            font-family: "Baskerville Old Face";
            font-size: 50pt;
        }
        .auto-style7 {
            height: 20px;
        }
        .auto-style8 {
            width: 900px;
            text-align: left;
        }
        .auto-style9 {
            width: 880px;
        }
        .auto-style11 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style5">
        <tr>
            <td class="auto-style6">Guest Reviw</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" OnClick="LinkButton1_Click" PostBackUrl="~/Main_Pages/GUEST_Page/정보 관리/고객 리뷰/리뷰 쓰기.aspx">리뷰 작성하기</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/XMLFile.xml"></asp:XmlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="#333333" Width="900px">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <ItemTemplate>
                        <div class="auto-style8" style="border: medium double #CCCCCC">
                            <br />
                            <span class="auto-style4">글 쓴 이 : </span>
                            <asp:Label ID="nameLabel" runat="server" CssClass="auto-style4" Text='<%# Eval("name") %>' />
                            <span class="auto-style4">&nbsp; ( </span>
                            <asp:Label ID="IDLabel" runat="server" CssClass="auto-style4" Text='<%# Eval("ID") %>' />
                            <span class="auto-style4">&nbsp;)</span><br class="auto-style4" />
                            <br class="auto-style4" />
                            <span class="auto-style4">제 목 : </span>
                            <asp:Label ID="titleLabel" runat="server" CssClass="auto-style4" Text='<%# Eval("title") %>' />
                            <br class="auto-style4" />
                            <br class="auto-style4" />
                            <span class="auto-style4">내 용 : </span>
                            <asp:Label ID="bodyLabel" runat="server" CssClass="auto-style4" Text='<%# Eval("body") %>' />
                            <br class="auto-style4" />
                            <table class="auto-style9">
                                <tr>
                                    <td style="text-align: right"><span class="auto-style11">- 작 성 날 짜 -</span><br class="auto-style11" />
                                        <asp:Label ID="dataLabel" runat="server" CssClass="auto-style11" Text='<%# Eval("data") %>' />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
        </tr>
    </table>
</asp:Content>

