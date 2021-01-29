<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practice</title>
    <link href="css/ksudinner.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style3 {
            width: 184px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 184px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <header>
            
    <h1>KSU Meeting Dinner Selections</h1>
     
    <h2>Choose your dinner preferences below.</h2>
    </header>
    <section>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name:</td>
                <td>
                    <asp:TextBox ID="Name" runat="server" Width="400px" Height="20px" Wrap="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone:</td>
                <td>
                    <asp:TextBox ID="Phone" runat="server" Height="20px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Platter Choice:</td>
                <td>
                    <asp:RadioButtonList ID="PlatterChoice" runat="server" AutoPostBack="True" Height="20px" RepeatDirection="Horizontal" Width="210px">
                        <asp:ListItem Selected="True" Value="12.00">Chicken</asp:ListItem>
                        <asp:ListItem Value="10.00">Fish</asp:ListItem>
                        <asp:ListItem Value="8.00">Veggie</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Drink:</td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="DrinkChoice" runat="server" AutoPostBack="True" Height="20px" RepeatDirection="Horizontal" Width="210px">
                        <asp:ListItem Selected="True" Value="1.25">Soda</asp:ListItem>
                        <asp:ListItem Value="0.00">Water</asp:ListItem>
                        <asp:ListItem Value="1.00">Tea</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bread:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="SelectBread" runat="server" AutoPostBack="True" Height="20px" Width="218px">
                        <asp:ListItem Selected="True">Select Bread</asp:ListItem>
                        <asp:ListItem Value="White Bread">White Bread</asp:ListItem>
                        <asp:ListItem>Garlic Bread</asp:ListItem>
                        <asp:ListItem>Wheat Bread</asp:ListItem>
                        <asp:ListItem>No Bread</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Quantity:</td>
                <td>
                    <asp:TextBox ID="Quantity" runat="server" Height="20px" Width="210px">1</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Allergies:</td>
                <td>
                    <asp:CheckBox ID="AllergyCheckBox" runat="server" Height="20px" Width="210px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="Delivery" runat="server" AutoPostBack="True" Height="20px" RepeatDirection="Horizontal" Width="170px">
                        <asp:ListItem Selected="True" Value="1.50">Delivery</asp:ListItem>
                        <asp:ListItem Value="0.00">PickUp</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Condiments:</td>
                <td>
                    <asp:CheckBoxList ID="Condiments" runat="server" Height="20px" RepeatDirection="Horizontal" Width="350px">
                        <asp:ListItem Value="0">Ketchup</asp:ListItem>
                        <asp:ListItem Value="0">Mayo</asp:ListItem>
                        <asp:ListItem Value="0">Tartar Sauce</asp:ListItem>
                        <asp:ListItem Value="0">Silverware</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblTotal" runat="server" Height="20px" Width="210px"></asp:Label>
                </td>
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
                <td>error summary</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ListBox ID="ListSummary" runat="server" Height="175px" Width="415px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="LabelMessage" runat="server" Height="20px"></asp:Label>
                </td>
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
