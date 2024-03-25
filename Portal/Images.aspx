<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Images.aspx.vb" Inherits="Portal.Images" %>
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
                    <asp:Label ID="Label3" runat="server" ForeColor="black" Text="<strong>IMAGES<strong>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="Ad "></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="Imgad" runat="server" Height="35px" Width="308px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" ForeColor="black" Text="Image Data"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="black" Text="Description"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="imgdes" runat="server" TextMode="MultiLine" Width="308px" Height="159px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btimg" runat="server" ForeColor="black" BackColor="#FFCC00" Text="Upload" Width="162px" Height="46px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
