<%@ Page Language="C#" MasterPageFile="Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegi" %>


<asp:Content ID="HeadContent" ContentPlaceHolderID="second" runat="server">



    <div style="width: 230px">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style5" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" style="margin-right: 0px" Width="236px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style5">
                            <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl='<%# Eval("yemek_resim") %>' Width="218px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <h1>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("yemek_ad") %>'></asp:Label>
                            </h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2>MALZEMELER</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemek_malzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2>Tarifi:</h2>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemek_tarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PUAN:<asp:Label ID="Label6" runat="server" Text='<%# Eval("yemek_puan") %>'></asp:Label>
                            <br />
                            TARİH:<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemek_tarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>

 





</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            height: 21px;
        }
        .auto-style4 {
            width: 170%;
            height: 255px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
