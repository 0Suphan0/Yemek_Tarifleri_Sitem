<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="Kullanici.Master" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YemekDetay" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="second" runat="server">
    
    
    
    
    
    
    
    
    
    
    
    

    <table class="auto-style1">
        <tr>
            <td class="auto-style5">    
    
    
    
    
    
    
    
    
    
    
    

    <asp:Label ID="Label3" runat="server" Font-Size="36pt" Text='<%# Eval("yemek_ad") %>' CssClass="auto-style8"></asp:Label>
    
    
    
    
    
    
    
    
    
    
    
    

            </td>
        </tr>
    </table>
    
    
    
    
    
    
    
    
    
    
    
    

    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style9" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" style="margin-top: 79px" Width="396px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Font-Size="16pt" Text='<%# Eval("yorum_icerik") %>'></asp:Label>
                        -<asp:Label ID="Label6" runat="server" Font-Size="10pt" Text='<%# Eval("yorum_tarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Font-Size="20pt" Text='<%# Eval("yorum_ad_soyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border-bottom-style: inset; border-bottom-width: thin"><hr/></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style7"></div>
    <div class="auto-style5">&nbsp;Yorum Yap</div>

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"><strong>Ad-Soyad:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbxAdSoyad" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Mail:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbxMail" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Yorumunuz:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbxYorum" runat="server" Height="94px" Width="278px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btnGonder" runat="server" Text="Gönder" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    
    
    
    
    
    
    
    

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
            font-weight: normal;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            margin-left: 80px;
        }
    .auto-style7 {
        height: 150px;
            text-align: left;
        }
        .auto-style9 {
            height: 37px;
            margin-left: 2px;
        }
        .auto-style10 {
            height: 51px;
        }
        .auto-style8 {
            font-size: 25pt;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            font-size: 16pt;
        }
        .auto-style13 {
            font-size: x-large;
        }
    </style>
</asp:Content>
