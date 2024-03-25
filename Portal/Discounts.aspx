<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Discounts.aspx.vb" Inherits="Portal.Discounts" %>
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
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="<strong>DISCOUNTS</strong>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" ForeColor="black" Text="Ad"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="disad" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" ForeColor="black" Text="Discount Percentage"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtper" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" ForeColor="black" Text="Offer Description"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtoffer" runat="server" Height="164px" TextMode="MultiLine" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2">
                    <asp:Button ID="btdiscount" runat="server" ForeColor="black" BackColor="#FFCC00" Text="Save" Width="172px" />
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
</asp:Content>
