<%@ Page MasterPageFile="Admin.Master" Language="C#" AutoEventWireup="true" CodeBehind="IletisimAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.IletisimAdmin" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    
    <div>
        <div class="auto-style4">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server"  Text="+" />
                    </td>
                    <td class="auto-style6">Mesaj Listesi</td>
                    <td class="auto-style6">&nbsp;<asp:Button ID="Button2" runat="server"  Text="-"  />
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" Width="397px">
                <ItemTemplate>
           
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("mesaj_gonderen") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style4">
                                          <a href="AdminMesajDetay.aspx?mesaj_id=<%#Eval("mesaj_id") %>"> <img class="auto-style3" src="icons/read.png" /></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <%--<td class="auto-style3">
                                <a href="YorumAdminDetay.aspx?yorum_id=<%#Eval("yorum_id")%>"> <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/read.png" Width="50px" /></a>
                            </td>--%>
                        </tr>
                    </table>
           
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>

    
    

    
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 34px;
            height: 43px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
