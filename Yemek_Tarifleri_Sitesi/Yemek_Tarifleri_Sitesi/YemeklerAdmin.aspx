<%@ Page Language="C#"  MasterPageFile=Admin.Master AutoEventWireup="true" CodeBehind="YemeklerAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YemeklerAdmin" %>



<asp:Content runat="server" ContentPlaceHolderID="second">
    
    
    <div>
    <div class="auto-style3">
        <table class="auto-style1">
            <tr>
                <td>
                    YEMEK LİSTESİ&nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
        <asp:Panel ID="Panel1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("yemek_ad") %>'></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <a href="YemeklerAdmin.aspx?yemek_id=<%#Eval("yemek_id")%>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/delete.jpg" Width="50px" /></a>
                    </td>
                    <td>
                       <a href="YemekAdminDetay.aspx?yemek_id=<%#Eval("yemek_id")%>"> <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/update.png" Width="50px" /></a>
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
                        YEMEK EKLE&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        &nbsp;</td>
               
                <tr>
                <td class="auto-style11">Yemek&nbsp; Adı:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="tbxyemekAdi" runat="server" Width="270px"></asp:TextBox>
                    </td>
               
                <tr>
                <td class="auto-style11">Malzemeler</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="tbxMalzemeler" runat="server" Height="95px" TextMode="MultiLine" Width="269px"></asp:TextBox>
                    </td>
               
                <tr>
                <td class="auto-style11">Yemek Tarifi:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="tbxYemekTarifi" runat="server" CssClass="auto-style12" Width="271px" Height="98px"></asp:TextBox>
                    </td>
               
                <tr>
                <td class="auto-style11">Yemek Resmi</td>
                    <td class="auto-style9">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
               
                <tr>
                <td class="auto-style11">Kategori:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="277px">
                        </asp:DropDownList>
                    </td>
               
                <tr>
                <td colspan="2">
                    <asp:Button ID="btnEkle" runat="server" OnClick="btnEkle_Click" Text="Ekle" />
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
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style13 {
            width: 407px;
            margin-left: 200px;
        }
    </style>
</asp:Content>
