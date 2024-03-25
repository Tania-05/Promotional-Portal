<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Social Media.aspx.vb" Inherits="Portal.Social_Media" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            height: 27px;
             background-color: gray;
              border: 3.5px solid #012970;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="<strong>SOCIAL MEDIA INTERACTION</strong>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" ForeColor="black" Text="Ad"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style2">
                    <asp:DropDownList ID="mediaad" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" ForeColor="black" Text="Likes"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="mlike" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" ForeColor="black" Text="Share"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="mshare" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" ForeColor="black" Text="Comment"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="mcomment" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btmedia" runat="server" ForeColor="black" BackColor="#FFCC00" Text="Save" Width="133px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
