<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Admin.Master" CodeBehind="YemekAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YemekAdminDetay" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    
    

    
    &nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td>Yemek Adı:</td>
            <td>
                <asp:TextBox ID="tbxYemekAdi" runat="server" Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Malzemeler</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbxMalzemeler" runat="server" Height="144px" TextMode="MultiLine" Width="278px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tarif:</td>
            <td class="auto-style4">
                <asp:TextBox ID="tbxTarif" runat="server" Height="77px" TextMode="MultiLine" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Kategori:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="282px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Yemek Resim:</td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="btnGununYemegi" runat="server" OnClick="btnGununYemegi_Click" Text="Günün Yemeği Olarak Ayarla" Width="254px" />
            </td>
        </tr>
    </table>
    
    
    

    
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            margin-left: 80px;
        }
        .auto-style5 {
            height: 29px;
            margin-left: 120px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 29px;
        }
    </style>
</asp:Content>
