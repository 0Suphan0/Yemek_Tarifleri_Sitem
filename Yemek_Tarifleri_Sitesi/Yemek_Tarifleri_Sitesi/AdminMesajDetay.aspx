<%@ Page Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.AdminMesajDetay" %>

<asp:Content runat="server" ContentPlaceHolderID="second">
    

    
    &nbsp;&nbsp;&nbsp;
<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Mesaj Gönderen</td>
        <td class="auto-style3">
            <asp:TextBox ID="tbxMesajGonderen" runat="server" Height="36px" Width="264px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Başlık:</td>
        <td class="auto-style5">
            <asp:TextBox ID="tbxBaslik" runat="server" Height="30px" Width="267px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adresi:</td>
        <td class="auto-style6">
            <asp:TextBox ID="tbxMail" runat="server" Height="30px" Width="266px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mesaj İçerik:</td>
        <td class="auto-style5">
            <asp:TextBox ID="tbxMesajIcerik" runat="server" Height="227px" TextMode="MultiLine" Width="267px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="SİL" Width="250px" />
        </td>
    </tr>
</table>
    

    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style3 {
        height: 29px;
        margin-left: 40px;
    }
    .auto-style4 {
        height: 29px;
    }
    .auto-style5 {
        height: 29px;
        margin-left: 120px;
    }
        .auto-style6 {
            height: 29px;
            margin-left: 200px;
        }
        .auto-style7 {
            height: 29px;
            text-align: center;
        }
    </style>
</asp:Content>
