<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="City Wise Service.aspx.vb" Inherits="Portal.City_Wise_Service" %>
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
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="<strong>CITY WISE SERVICE LISTING</strong>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Ad" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="Sadid" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="City" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style3">
                    <asp:DropDownList ID="Scity" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btservice" runat="server" BackColor="#FFCC00" Text="Save" Width="161px" ForeColor="black" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
