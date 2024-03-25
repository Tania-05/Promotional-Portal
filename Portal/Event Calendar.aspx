<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Event Calendar.aspx.vb" Inherits="Portal.Event_Calendar" %>
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
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="<strong>EVENT CALENDAR</strong>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" ForeColor="black" Text="Business"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="eventbus" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" ForeColor="black" Text="Event Name"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtevent" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="black" Text="Event Date"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtevdate" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" ForeColor="black" Text="Event Description"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtevdes" runat="server" Height="159px" TextMode="MultiLine" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btevent" runat="server" ForeColor="black" BackColor="#FFCC00" Text="Save" Width="182px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
