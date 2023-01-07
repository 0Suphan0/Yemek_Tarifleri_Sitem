<%@ Page Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="YorumAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YorumAdminDetay" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    

    
    
    
    &nbsp;&nbsp;&nbsp;
<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Ad-Soyad:</td>
        <td class="auto-style3">
            <asp:TextBox ID="tbxAdSoyad" runat="server" Width="280px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mail Adres:</td>
        <td class="auto-style4">
            <asp:TextBox ID="tbxMailAdresi" runat="server" Width="280px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>İçerik:</td>
        <td class="auto-style5">
            <asp:TextBox ID="tbxIcerik" runat="server" Height="95px" TextMode="MultiLine" Width="280px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Yemek:</td>
        <td class="auto-style8">
            <asp:TextBox ID="tbxYemek" runat="server" Width="280px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="btnOnay" runat="server" OnClick="btnOnay_Click" Text="Onayla" />
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
        margin-left: 120px;
    }
    .auto-style6 {
        text-align: center;
        margin-left: 160px;
    }
    .auto-style7 {
        height: 29px;
    }
    .auto-style8 {
        height: 29px;
        margin-left: 160px;
    }
</style>
</asp:Content>
