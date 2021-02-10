<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Soup Shop</title>
    <link href="/css/StyleSheet.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="images/soup.png" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="fixed-header">
        <div class="auto-style6">	
		<h1 class="logo"><a href="default.aspx"><img src="images/soup.png" /> SOUP SHOP</a></h1>
		</div>
			<div id="learn-more">
				<div>
					<div class="major">
                        <asp:Label ID="SubmitLabel" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#00CC00" CssClass="submitlabel"></asp:Label>
						<h2 class="souphead">Select Your Favorite Soup!</h2>
						<p>Select one soup and the continue down to input your delivery information.<br/>
                            Once you have your information entered hit confirm to review your order! The press submit!</p>
					</div>
				</div>
			</div>
	    <div class="major">
		<div class="container" id="allproducts">
				<div class="threeimages">
					<div class="column3">
                        <div class="product">
                            <h3>Chicken & Gnocchi</h3>
                            <br />
                            <img src="images/cgs.jpg" title="Chicken & Gnocchi" alt="chickengnocchi" style="height: 240px; width: 240px" />
                            <br />
                            <br />
                            <p class="button">$6.99</p>
                        </div>
					</div>
					<div class="column3">
                        <div class="product">
                            <h3>Minestrone</h3>
                            <br />
                            <img src="images/minesoup.jpg" title="Minestrone" alt="minestrone" style="height: 240px; width: 240px" />
                            <br />
                            <br />
                            <p class="button">$4.99</p>
                        </div>
					</div>
					<div class="column3">
                        <div class="product">
                            <h3>Pasta e Fagioli</h3>
                            <br />
                            <img src="images/Pasta-e-Fagioli-Soup.jpg" title="Pasta e Fagioli" alt="pastaefagioli" style="height: 240px; width: 240px" />
                            <br />
                            <br />
                            <p class="button">$8.99</p>
                        </div>
					</div>
				</div>
            	<div class="threeimages">
					<div class="column3">
                        <div class="product">
                            <h3>Zuppa Toscana</h3>
                            <br />
                            <img src="images/ZuppaToscana.jpg" title="Zuppa Toscana" alt="zuppatoscana" style="height: 240px; width: 240px" />
                            <br />
                            <br />
                            <p class="button">$9.99</p>
                        </div>
					</div>
					<div class="column3">
                        <div class="product">
                            <h3>Chicken Tortilla</h3>
                            <br />
                            <img src="images/chickentortilla.jpg" title="Chicken Tortilla" alt="chickentortilla" style="height: 240px; width: 240px" />
                            <br />
                            <br />
                            <p class="button">$7.99</p>
                        </div>
					</div>
					<div class="column3">
                        <div class="product">
                            <h3>Clam Chowder</h3>
                            <br />
                            <img src="images/clamchowder.jpg" title="Clam Chowder" alt="clamchowder" style="height: 240px; width: 240px" />
                            <br />
                            <br />
                            <p class="button">$10.99</p>
                        </div>
					</div>
				</div>
			</div>
        <div class="container">
            <div class="major">
            <table style="width: 100%;">
                 <tr>
                    <td class="auto-style3">Soup Selection:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="SoupSelection" runat="server" Width="1000px" CssClass="auto-style7">
                            <asp:ListItem Value="6.99">Chicken &amp; Gnocchi</asp:ListItem>
                            <asp:ListItem Value="4.99">Minestrone</asp:ListItem>
                            <asp:ListItem Value="8.99">Pasta e Fagioli</asp:ListItem>
                            <asp:ListItem Value="9.99">Zuppa Toscana</asp:ListItem>
                            <asp:ListItem Value="7.99">Chicken Tortilla</asp:ListItem>
                            <asp:ListItem Value="10.99">Clam Chowder</asp:ListItem>
                        </asp:DropDownList><br />
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style3">Quantity:<br />
                        <br />
                     </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Quantity" runat="server" Width="1000px">1</asp:TextBox><br />
                        <asp:RangeValidator ID="QuantityRangeValidator" runat="server" ErrorMessage="Quantity Must Be More Than 1!" Font-Bold="True" MinimumValue="1" ControlToValidate="Quantity" ForeColor="Red" MaximumValue="99"></asp:RangeValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Name:<br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="NameText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="NameText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Address:<br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="AddressText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="NameText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">City:<br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="CityText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="CityText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">State:<br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="StateText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredState" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="StateText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">ZIP Code:<br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ZIPText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredZIP" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="ZIPText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Phone Number:<br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="PhoneText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="PhoneText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:<br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="EmailText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="EmailText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" ErrorMessage="Please Enter a Valid Email Address!" ControlToValidate="EmailText" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Email:<br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ConfirmEmailText" runat="server" Width="1000px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldEmailConfirm" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="ConfirmEmailText" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionEmailConfirm" runat="server" ErrorMessage="Please Enter a Valid Email Address!" ControlToValidate="ConfirmEmailText" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                        <asp:CompareValidator ID="CompareValidatorConfirmEmail" runat="server" ErrorMessage="Email Addresses Must Match!" ControlToCompare="EmailText" ControlToValidate="ConfirmEmailText" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Delivery Method:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DeliveryOptions" runat="server" Width="1000px">
                            <asp:ListItem Value="4.99">Soup Shop Delivery</asp:ListItem>
                            <asp:ListItem Value="9.95">Uber Eats</asp:ListItem>
                            <asp:ListItem Value="7.95">GrubHub</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;<br />
                        <asp:Label ID="TotalLabel" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2" id="endbuttons">
                        <asp:Button ID="ClearButton" runat="server" CssClass="button2" Text="Clear" Width="200px" CausesValidation="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="CalcButton" runat="server" CssClass="button2" Text="Calculate" Width="200px" />
                            </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        <asp:ListBox ID="SummaryBox" runat="server" Height="300px" Width="690px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2" id="endbuttons">
                        <asp:Button ID="SubmitButton" runat="server" CssClass="button2" Text="Submit" Width="200px" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2" id="endbuttons">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2" id="endbuttons">
                        &nbsp;</td>
                </tr>
                </table>
		    </div>
        </div>
        </div>
    </div>
        </div>
    </form>
</body>
</html>
