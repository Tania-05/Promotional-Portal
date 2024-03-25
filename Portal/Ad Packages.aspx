<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Ad Packages.aspx.vb" Inherits="Portal.Ad_Packages" %>
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
     <table align="center" border="0" class="auto-style1">
            <tr style="border-color:black">
                <td class="auto-style2" style="border-color:black">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="<strong>PACKAGES</strong>" ForeColor="black"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Package Name" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtpgname" runat="server" Height="35px" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="txtdays" runat="server" Text="Duration Days" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtduraction" runat="server" Height="35px" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Price" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server" Height="35px" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btpk" runat="server" BackColor="#FFCC00" Text="Save" Width="140px" ForeColor="black" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
