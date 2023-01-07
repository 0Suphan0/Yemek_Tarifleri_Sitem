<%@ Page Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="AdminOneriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.AdminOneriler" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    


    
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style3">
            Onaysız Tarif Listesi<hr /> </div>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("tarif_ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style4">
                               <a href="AdminOnerilerDetay.aspx?tarif_id=<%#Eval("tarif_id") %>"> <asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/icons/oneri.png" Width="34px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    
    <div class="auto-style5">
    </div>
    
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style3">
            Onaylı Tarif Listesi<br />
            <hr />
        </div>
        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("tarif_ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/icons/oneri.png" Width="34px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <hr />
        </asp:Panel>
    </asp:Panel>
    


    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            height: 45px;
            background-color: aliceblue
        }
    </style>
</asp:Content>
