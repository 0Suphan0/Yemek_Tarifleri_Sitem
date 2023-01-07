<%@ Page Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="AdminOnerilerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.AdminOnerilerDetay" %>


<asp:Content runat="server" ContentPlaceHolderID="second">
    
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
    
    <table class="auto-style1">
        <tr>
            <td>Tarif Adı:</td>
            <td>
                <asp:TextBox ID="tbxTarifAdi" runat="server" Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tarif Malzemeler</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbxMalzemeler" runat="server" Height="144px" TextMode="MultiLine" Width="278px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yapılışı:</td>
            <td class="auto-style4">
                <asp:TextBox ID="tbxYapilisi" runat="server" Height="77px" TextMode="MultiLine" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Tarif Resim:</td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Tarif öneren:</td>
            <td class="auto-style6">
                <asp:TextBox ID="tbxTarifOnerenAd" runat="server" Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Öneren Mail:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbxTarifOnerenMail" runat="server" Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Kategori:</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="284px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnOnayla" runat="server" OnClick="btnOnayla_Click" Text="Onayla" />
            </td>
        </tr>
    </table>
    
    

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
