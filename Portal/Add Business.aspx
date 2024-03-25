<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Add Business.aspx.vb" Inherits="Portal.Add_Business" %>
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
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="<strong>ADD BUSINESS</strong>" ForeColor="black"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="User" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="duser" runat="server" Height="35px" Width="308px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Business Name" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtbname" runat="server" Height="35px" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Description" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtbdes" runat="server" Height="118px" TextMode="MultiLine" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Contact Info" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtinfo" runat="server" Height="35px" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btb" runat="server" BackColor="#FFCC00" Text="Save" Width="143px" ForeColor="black" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
