<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="City.aspx.vb" Inherits="Portal.City" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         .auto-style1 {
            height: 88px;
             background-color: gray;
              border: 3.5px solid #012970;
             width: 635px;
         }
         .auto-style2 {
             width: 316px;
         }
         .auto-style3 {
             width: 318px;
         }
         .auto-style4 {
             width: 205px;
         }
         .auto-style5 {
             width: 316px;
             height: 20px;
         }
         .auto-style6 {
             width: 318px;
             height: 20px;
         }
         .auto-style7 {
             width: 205px;
             height: 20px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" ForeColor="black" Text="<strong>CITY</strong>"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="Country"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="dd1" runat="server" Height="35px" Width="306px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" ForeColor="black" Text="State"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="dsid" runat="server" AutoPostBack="True" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="black" Text="City Name"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtcity" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btcity" runat="server" ForeColor="black" BackColor="#FFCC00" Text="Save" Width="135px" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
            </tr>
        </table>
</asp:Content>
