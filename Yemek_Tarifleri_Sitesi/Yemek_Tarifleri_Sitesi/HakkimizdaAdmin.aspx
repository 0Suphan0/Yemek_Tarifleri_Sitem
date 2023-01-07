<%@ Page Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.HakkimizdaAdmin" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    
    

    
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">Hakkımızda</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" Height="174px" TextMode="MultiLine" Width="380px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" Width="199px" OnClick="btnGuncelle_Click" />
        </td>
    </tr>
</table>
    
    

    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
</style>
</asp:Content>
