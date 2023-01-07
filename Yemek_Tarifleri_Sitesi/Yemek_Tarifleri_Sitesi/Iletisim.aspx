<%@ Page Language="C#" MasterPageFile="Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Iletisim" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="second" runat="server">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table class="auto-style4">
    <tr>
        <td class="auto-style7" colspan="2">BİZE MESAJ GÖNDERİN...</td>
    </tr>
    <tr>
        <td class="auto-style5">Ad-Soyad:</td>
        <td class="auto-style2">
            <asp:TextBox ID="tbxAdSoyad" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td class="auto-style2">
            <asp:TextBox ID="tbxMall" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:</td>
        <td class="auto-style2">
            <asp:TextBox ID="tbxKonu" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mesaj:</td>
        <td class="auto-style3">
            <asp:TextBox ID="tbxMessage" runat="server" Height="81px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="2">
            <asp:Button ID="btnGonder" runat="server"  OnClick="btnGonder_Click" Text="Gönder" Width="386px" CssClass="auto-style9" Height="36px" />
        </td>
    </tr>
</table>


</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style2 {
        margin-left: 40px;
    }
    .auto-style3 {
        margin-left: 80px;
    }
    .auto-style4 {
        width: 100%;
        height: 342px;
    }
    .auto-style5 {
        width: 116px;
    }
    .auto-style7 {
        text-align: center;
        background-color: #FFFFCC;
    }
    .auto-style8 {
        text-align: center;
    }
    
        .auto-style9 {
            background-color: #FFFFCC;
        }
    
    </style>
</asp:Content>
