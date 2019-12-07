<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRUD.aspx.cs" Inherits="CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
        }
        .auto-style2 {
            width: 99px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Update Product"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Product Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Price:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="152px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Product Image:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="246px" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label2" runat="server" ForeColor="#33CC33" Text="Label2"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Log Out</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ShowProduct.aspx">View All Product</asp:HyperLink>

        </div>
    </form>
</body>
</html>
