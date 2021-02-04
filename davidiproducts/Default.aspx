
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
            text-align: right;
        }
        .auto-style3 {
            width: 197px;
            height: 26px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 197px;
            height: 20px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style6 {
            height: 20px;
            font-weight: 700;
        }
        .auto-style7 {
            width: 197px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style8 {
            width: 197px;
            height: 25px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style9 {
            height: 25px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <header>
            <h1 class="logo"><a href="default.aspx"><img src="images/Dog Gone Good!.png" alt ="DGG" style="height: 64px; width: 195px" /></a></h1>
            
            <h1>Doggie Prizes - Choose Wisely!</h1>
        </header>
        <section>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Name:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="Name" runat="server" Width="200px" Height="20px" Wrap="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" ControlToValidate="Name" ErrorMessage="Full Name" ForeColor="Red">* required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Address:</td>
                <td>
                    <asp:TextBox ID="Address" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldAddress" runat="server" ControlToValidate="Address" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">City:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="City" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldCity" runat="server" ControlToValidate="City" ErrorMessage="City is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">State:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="State" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldState" runat="server" ControlToValidate="State" ErrorMessage="State is required" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ZipCode: </td>
                <td class="auto-style6">
                    <asp:TextBox ID="ZipCode" runat="server" Width="116px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Phone" runat="server" Width="200px"></asp:TextBox>
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
                    <asp:RangeValidator ID="RangeValidatorQty" runat="server" ControlToValidate="Quantity" ErrorMessage="Enter a value greater than zero" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
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
                    <asp:Button ID="CalculateButton" runat="server" Height="20px" Text="Calculate" Width="100px" BackColor="#99CCFF" BorderWidth="2px" />
&nbsp;<asp:Button ID="ConfirmButton" runat="server" Height="20px" Text="Confirm" Width="100px" BorderWidth="2px" CssClass="button" />
&nbsp;<asp:Button ID="ClearButton" runat="server" Height="20px" Text="Clear" Width="100px" BackColor="#CCFF99" BorderColor="Black" BorderWidth="2px" CausesValidation="False" />
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="You must enter a valide value in the following fields:" />
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