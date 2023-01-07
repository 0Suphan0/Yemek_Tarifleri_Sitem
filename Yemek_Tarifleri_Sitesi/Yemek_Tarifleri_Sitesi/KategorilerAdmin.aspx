<%@ Page Language="C#" MasterPageFile=Admin.Master AutoEventWireup="true" CodeBehind="KategorilerAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.KategorilerAdmin" %>


<asp:Content runat="server" ContentPlaceHolderID="second">
    
    
    <div>
    <div class="auto-style3">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="+" />
                </td>
                <td>KATEGORİ LİSTESİ&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="-" />
                </td>
            </tr>
        </table>
        <br />
    </div>
        <asp:Panel ID="Panel1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6">
        <ItemTemplate>
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("kategori_adı") %>'></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <a href="KategorilerAdmin.aspx?kategori_id=<%#Eval("kategori_id")%>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/delete.jpg" Width="50px" /></a>
                    </td>
                    <td>
                       <a href="KategoriAdminDetay.aspx?kategori_id=<%#Eval("kategori_id")%>"> <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/update.png" Width="50px" /></a>
                    </td>
                </tr>
            </table>
           
        </ItemTemplate>
    </asp:DataList>
        </asp:Panel>
</div>
    
    <div>
        <div class="auto-style3">
            <table class="auto-style8">
                <tr>
                    <td colspan="2">
                        KATEGORİ LİSTESİ&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        &nbsp;</td>
               
                <tr>
                <td class="auto-style11">Kategori Adı:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="tbxkategoriName" runat="server"></asp:TextBox>
                    </td>
               
                <tr>
                <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnEkle" runat="server" Text="EKLE" OnClick="btnEkle_Click" />
                    </td>
               
            </table>
        </div>
      
    </div>
    
    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        width: 173px;
    }
    .auto-style5 {
        width: 122px;
    }
        .auto-style6 {
            margin-right: 41px;
        }
        .auto-style8 {
            width: 100%;
            height: 64px;
        }
        .auto-style9 {
            width: 407px;
            margin-left: 120px;
        }
        .auto-style11 {
            width: 18px;
        }
    </style>
</asp:Content>
