<%@ Page Language="C#" MasterPageFile="Kullanici.Master" AutoEventWireup="true"  CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.TarifOner" %>


<asp:Content ID="HeadContent" ContentPlaceHolderID="second" runat="server">



    <table class="auto-style1">
        <tr>
            <div style="height: 10px"></div>
        </tr>
    <tr>
        <td class="auto-style7" colspan="2">-Bize Tarif Önerin-</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2"><hr/></td>
    </tr>
    <tr>
        <td>Tarif Ad:</td>
        <td>
            <asp:TextBox  ID="tbxTarifad" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Malzemeler</td>
        <td>
            <asp:TextBox ID="tbxMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Yapılışı:</td>
        <td>
            <asp:TextBox ID="tbxYapilisi" runat="server" Height="218px" Width="250px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Resim:</td>
        <td class="auto-style3">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td>Tarif Öneren:</td>
        <td>
            <asp:TextBox ID="tbxOneren" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Mail Adresi:</td>
        <td class="auto-style2">
            <asp:TextBox ID="tbxMailAddress" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <asp:Button ID="btnTarifOner" runat="server" BackColor="#FFFFCC" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" />
        </td>
    </tr>
</table>



</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
       

        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style5 {
            text-align: center;
            font-size: large;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
