<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Categories.aspx.vb" Inherits="Portal.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            height: 27px;
             background-color: gray;
              border: 3.5px solid #012970;
        }
         /*.auto-style2 {
             width: 108px;
         }
         .auto-style3 {
             width: 108px;
             height: 27px;
         }
         .auto-style4 {
             height: 27px;
         }
         .auto-style5 {
             height: 27px;
             width: 140px;
         }
         .auto-style6 {
             width: 140px;
         }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
            
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"  ForeColor="black" Text="<strong>CATEGORIES</strong>"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Category Name" ForeColor="black" ></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtcatname" runat="server" Height="35px" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btcat" runat="server" BackColor="#FFCC00" Text="Submit" Width="118px" ForeColor="black" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
