<%@ Page Title="Mortgageify | Home" Language="VB" MasterPageFile="~/Mortgageify.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="wrapper">
    <div class="fixed-header">
        <div class="container">
		<a href="Default.aspx" class="logo"><img src="images/MortgageifySmall.png" class="auto-style1" /></a>
            <nav>
                <a class="active" href="Default.aspx">Home</a>
                <a href="mortgage-news.aspx">Mortgage News</a>
                <a href="reverse-mortgage.aspx">Reverse Mortgage</a>
   		    </nav>
		</div>
    </div>
    <div class="major">
        <div class="container">
        <div class="container-content">
            <h1>Calculate Your Mortgage Rate</h1>
        <div class="container">
        <div class="textleft">
            <table style="width: 100%;">
                <tr>
                    <td><p>Principle Ammount:</p>
                        <p>&nbsp;</p></td>
                    <td><a><asp:TextBox ID="txtprinciple" runat="server" CssClass="txtbox"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is a required field!" ControlToValidate="txtprinciple" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtprinciple" ErrorMessage="Value must be a whole number!" Font-Bold="True" ForeColor="Red" />
                        </a></td>
                </tr>
                <tr>
                    <td><p>Yearly Intrest Rate:</p>
                        <p>&nbsp;</p></td>
                    <td><a><asp:TextBox ID="txtyearlypercent" runat="server" CssClass="txtbox"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is a required field!" ControlToValidate="txtyearlypercent" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RangeValidator runat="server" Type="Double" MinimumValue="1" MaximumValue="100" ControlToValidate="txtyearlypercent" ErrorMessage="Value must be number between 1 and 100%!" Font-Bold="True" ForeColor="Red" /></a></td>
                </tr>
                <tr>
                    <td><p>Loan Term (In Months):</p>
                        <p>&nbsp;</p></td>
                    <td><a><asp:TextBox ID="txtmonths" runat="server" CssClass="txtbox"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This is a required field!" ControlToValidate="txtmonths" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RangeValidator runat="server" Type="Integer" MinimumValue="12" MaximumValue="360" ControlToValidate="txtmonths" ErrorMessage="Value must be a whole number between 12 and 360!" Font-Bold="True" ForeColor="Red" ID="RangeValidator1" />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><p>Monthly Pyaments:</p></td>
                    <td><a><asp:Label ID="lblmonpayments" runat="server" CssClass="lbl"></asp:Label></a></td>
                </tr>
                <tr>
                    <td><p>Sum of All Payments:</p></td>
                    <td><a><asp:Label ID="lblsumofpayments" runat="server" CssClass="lbl"></asp:Label></a></td>
                </tr>
                <tr>
                    <td><p>Total Intrest Paid:</p></td>
                    <td><a><asp:Label ID="lblintrestpaid" runat="server" CssClass="lbl"></asp:Label></a></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a><asp:Button ID="btnclear" runat="server" Text="Clear" CssClass="button"/>&nbsp;&nbsp;<asp:Button ID="btncalculate" runat="server" Text="Calculate" CssClass="button"/></a></td>
                </tr>
            </table>
        </div>
        </div>
      </div>
      </div>
    </div>
</div>
<div class="bottompad"></div>
</asp:Content>

