<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Rating.aspx.vb" Inherits="Portal.Rating" %>
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
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="<strong>RATING</strong>"></asp:Label>
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
                    <asp:Label ID="Label2" runat="server" ForeColor="black" Text="Ad"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="Radid" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" ForeColor="black" Text="User"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="Ruser" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="black" Text="Rating Value"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="Rvalue" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" ForeColor="black" Text="Feedback"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:TextBox ID="rfeedback" runat="server" Height="130px" TextMode="MultiLine" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btrating" runat="server" ForeColor="black" BackColor="#FFCC00" Text="Save" Width="154px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
