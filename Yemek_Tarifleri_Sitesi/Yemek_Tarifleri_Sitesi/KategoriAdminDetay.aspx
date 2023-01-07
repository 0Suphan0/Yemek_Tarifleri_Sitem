<%@ Page Language="C#" MasterPageFile=Admin.Master AutoEventWireup="true" CodeBehind="KategoriAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Pages.AdminPages.KategoriAdminDetay" %>



<asp:Content runat="server" ContentPlaceHolderID="second">
    

    
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ ADET:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>RESİM</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Button ID="btnUpdate" runat="server" OnClick="Button1_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
    

    
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 98%;
            height: 238px;
        }
    </style>
</asp:Content>
