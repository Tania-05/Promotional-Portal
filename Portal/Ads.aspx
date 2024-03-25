<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Ads.aspx.vb" Inherits="Portal.Ads" %>
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
                    <asp:Label ID="Label1" runat="server" Text="<strong>ADS</strong>" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Business" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dbid" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Title" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txttitle" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Description" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="desads" runat="server" Height="126px" TextMode="MultiLine" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Country" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dadcy" runat="server" Height="35px" Width="306px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="State" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dstate" runat="server" Height="35px" Width="306px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="City" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dcity" runat="server" Height="35px" Width="306px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Featured Business" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dadfea" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Package" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dpgid" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Category Name" ForeColor="black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="dcat" runat="server" Height="35px" Width="306px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style6">
                    <asp:Button ID="btads" runat="server" BackColor="#FFCC00" Text="Save" Width="145px" ForeColor="black" />
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            </table>
</asp:Content>
