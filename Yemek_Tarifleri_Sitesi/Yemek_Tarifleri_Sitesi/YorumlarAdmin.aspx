<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Admin.Master" CodeBehind="YorumlarAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YorumlarAdmin" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    <div>
        <div class="auto-style4">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server"  Text="+" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style4">ONAYLANMIŞ YORUMLAR</td>
                    <td>&nbsp;<asp:Button ID="Button2" runat="server"  Text="-" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6">
                <ItemTemplate>
           
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("yorum_ad_soyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <a href="YorumlarAdmin.aspx?yorum_id=<%#Eval("yorum_id")%>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/delete.jpg" Width="50px" /></a>
                            </td>
                            <td>
                                <a href="YorumAdminDetay.aspx?yorum_id=<%#Eval("yorum_id")%>"> <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/update.png" Width="50px" /></a>
                            </td>
                        </tr>
                    </table>
           
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
    
    
    
    <div>
        <div class="auto-style4">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server"  Text="+" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style4">ONAYLANMAMIŞ YORUMLAR</td>
                    <td>&nbsp;<asp:Button ID="Button4" runat="server"  Text="-" OnClick="Button4_Click"  />
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" CssClass="auto-style6">
                <ItemTemplate>
           
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("yorum_ad_soyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <a href="YorumlarAdmin.aspx?yorum_id=<%#Eval("yorum_id")%>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/delete.jpg" Width="50px" /></a>
                            </td>
                            <td>
                                <a href="YorumAdminDetay.aspx?yorum_id=<%#Eval("yorum_id")%>"> <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/update.png" Width="50px" /></a>
                            </td>
                        </tr>
                    </table>
           
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
    
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
