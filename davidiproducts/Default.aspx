<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <link href="css/products.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 197px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 197px;
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <header>
            
            <h1><asp:Image ID="DogGoneGood" runat="server" Height="71px" ImageUrl="~/images/Dog Gone Good!.png" Width="191px" AlternateText="DGG" ImageAlign="Middle" /></h1>
            <h1>Doggie Prizes - Choose Wisely!</h1>
        </header>
        <section>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="Name" runat="server" Width="400px" Height="20px" Wrap="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td>
                    <asp:TextBox ID="Address" runat="server" Height="20px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">City:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="City" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">State:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="State" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Phone" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Products:</td>
                <td>
                    <asp:ListBox ID="Products_List" runat="server" AutoPostBack="True" Width="173px">
                        <asp:ListItem Value="15.00">Leather Leash</asp:ListItem>
                        <asp:ListItem Value="12.50">Food Bowl</asp:ListItem>
                        <asp:ListItem Value="35.00">Bite Sleeve</asp:ListItem>
                        <asp:ListItem Value="6.00">Whistle</asp:ListItem>
                        <asp:ListItem Value="14.95">Leather Collar</asp:ListItem>
                        <asp:ListItem Value="6.75">Choke Collar</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Quantity:</td>
                <td>
                    <asp:TextBox ID="Quantity" runat="server">1</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Shipping:</td>
                <td>
                    <asp:DropDownList ID="Shipping" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="5.99">USPS</asp:ListItem>
                        <asp:ListItem Value="0">PickUp</asp:ListItem>
                        <asp:ListItem Value="12.95">UPS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>           
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="CalculateButton" runat="server" Height="20px" Text="Calculate" Width="100px" />
&nbsp;<asp:Button ID="ConfirmButton" runat="server" Height="20px" Text="Confirm" Width="100px" />
&nbsp;<asp:Button ID="ClearButton" runat="server" Height="20px" Text="Clear" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ListBox ID="ListSummary" runat="server" Height="175px" Width="415px">
                        <asp:ListItem>Subtotal:</asp:ListItem>
                        <asp:ListItem Value="7%">Sales Tax:</asp:ListItem>
                        <asp:ListItem>Shipping:</asp:ListItem>
                        <asp:ListItem>TOTAL:</asp:ListItem>
                        <asp:ListItem>Purchase:</asp:ListItem>
                        <asp:ListItem>Name:</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Message" runat="server" Height="20px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </section>
        <footer>
            <br />
            <a href="http://www.kennesaw.edu">KSU regular hyperlink </a> <br />
            Delails hyperlink control 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Details.aspx">Details</asp:HyperLink>
            <br />
            Linkbutton control

            <asp:LinkButton ID="LinkButton1" runat="server">KSU Site</asp:LinkButton>

        </footer>
    </div>
    </form>
</body>
</html>