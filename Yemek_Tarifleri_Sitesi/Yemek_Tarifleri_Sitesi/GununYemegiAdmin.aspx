<%@ Page Language="C#"  MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegiAdmin" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    
    <div>
        <div class="auto-style4">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        YEMEK LİSTESİ&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <hr />
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" Width="400px">
                <ItemTemplate>
           
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("yemek_ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <a href='YemekAdminDetay.aspx?yemek_id=<%#Eval("yemek_id")%>'>
                                <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/tik.jpg" Width="50px" />
                                </a>
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
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</asp:Content>
