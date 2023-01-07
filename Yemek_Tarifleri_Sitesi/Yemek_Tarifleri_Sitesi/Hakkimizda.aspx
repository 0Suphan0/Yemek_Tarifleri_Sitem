<%@ Page Language="C#" MasterPageFile="Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Hakkimizda" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="second" runat="server">
    
    
    
    
    <p>
        <div class="auto-style2">
            <br />
            <h2 class="hakkimizda">-HAKKIMIZDA-</h2>
            <br />
    </div>
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style4" Width="354px">
            <ItemTemplate>
                <em>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("hakkimizda_mesaj") %>'></asp:Label>
                </em>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/Images/team2.jpg" Width="338px" CssClass="auto-style3" />
    </p>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 31px;
        }
        .auto-style4 {
            margin-left: 20px;
        }
        .hakkimizda:hover {
            background-color: white;
            color: #00fa9a;
        }
    </style>
</asp:Content>
