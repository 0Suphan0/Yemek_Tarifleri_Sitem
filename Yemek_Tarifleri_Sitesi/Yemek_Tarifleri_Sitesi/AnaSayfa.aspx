<%@ Page  MasterPageFile="Kullanici.Master" Language="C#" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.AnaSayfa" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="second" runat="server">



    <p>
        <asp:DataList ID="DataList2" runat="server" Width="394px">
            <ItemTemplate>
                <table class="auto-style7">
                    
                    
                    <tr>
                        <td class="auto-style4">
                            <a href="YemekDetay.aspx?yemekId=<%#Eval("yemek_id") %>">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("yemek_ad") %>' Font-Size="18pt"></asp:Label>

                            </a>
                        </td>
                    </tr>
                    
                    <tr>
                        
                        <td class="auto-style11">
                            <span class="auto-style8"><strong><span class="auto-style9">MALZEMELER</span></strong></span><br /></td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yemek_malzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style11">
                            <span class="auto-style9">Yemek Tarifi</span></td>
                        
                    </tr>
                    <tr>
                        
                        <td class="auto-style6">
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemek_tarif") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                        
                    </tr>
                    <tr>
                        
                        <td class="auto-style5">
                            <span class="auto-style9">Eklenme Tarihi:</span><asp:Label ID="Label6" runat="server" Text='<%# Eval("yemek_tarih") %>'></asp:Label>
                            <span class="auto-style9">
                            <br />
                            </span>
                        </td>
                        
                    </tr>
                   
                    <tr>

                        <td class="auto-style12" style="border-bottom-style: groove; border-width: thick; border-color: #C0C0C0"><span class="auto-style9">Puan: &nbsp;<asp:Label ID="Label7" runat="server" Font-Italic="True" Text='<%# Eval("yemek_puan") %>'></asp:Label>
                            </span></td>
                    </tr>
                   
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                    </tr>
                   
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>



</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
        .auto-style4 {
            height: 27px;
            width: 219px;
            background-color:ghostwhite;
            text-align: center;
        }
        .auto-style5 {
            width: 219px;
            text-align: left;
            height: 73px;
        }
        .auto-style6 {
            height: 26px;
            width: 219px;
        }
        .auto-style7 {
            width: 102%;
        }
        .auto-style8 {
            color: #000000;
            font-weight: normal;
        }
        .auto-style9 {
            background-color: #FFFFFF;
        }
        .auto-style11 {
            width: 219px;
            height: 27px;
            text-align: center;
        }
        .auto-style12 {
            height: 26px;
            width: 219px;
            text-align: center;
        }
    </style>
</asp:Content>
