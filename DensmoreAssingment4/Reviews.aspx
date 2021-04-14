<%@ Page Title="" Language="VB" MasterPageFile="~/balloonmainMasterPage2.master" AutoEventWireup="false" CodeFile="Reviews.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add a Review!</h2>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Full Name:</td>
            <td>
                <asp:TextBox ID="tbname" runat="server" Width="495px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbname" ErrorMessage="This is a required field!" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event:</td>
            <td>
                <asp:DropDownList ID="ddevent" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EventName" DataValueField="EventName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [EventName] FROM [Events]"></asp:SqlDataSource>
                <asp:Label ID="lbldate" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Review:</td>
            <td>
                <asp:TextBox ID="tbreview" runat="server" Height="120px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbreview" ErrorMessage="This is a required field!" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btsubmit" runat="server" Text="Submit" />
            &nbsp;<asp:Button ID="btclear" runat="server" Text="Clear" CausesValidation="False" />
&nbsp;<asp:Label ID="lblsubmit" runat="server" Font-Bold="True" ForeColor="#00CCFF"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Select an Event from the dropdown to See Reviews for that event!</h2>
    <asp:DropDownList ID="ddeventreview" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="EventName" DataValueField="EventName">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataEvent" TypeName="DataSetTableAdapters.EventTableAdapter"></asp:ObjectDataSource>
    <br />
    <br />
    <asp:FormView ID="fvreviews" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ReviewId" DataSourceID="ObjectDataSource2" GridLines="Vertical">
        <EditItemTemplate>
            ReviewId:
            <asp:Label ID="ReviewIdLabel1" runat="server" Text='<%# Eval("ReviewId") %>' />
            <br />
            CustomerName:
            <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
            <br />
            EventName:
            <asp:TextBox ID="EventNameTextBox" runat="server" Text='<%# Bind("EventName") %>' />
            <br />
            ReviewDate:
            <asp:TextBox ID="ReviewDateTextBox" runat="server" Text='<%# Bind("ReviewDate") %>' />
            <br />
            Review:
            <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            CustomerName:
            <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
            <br />
            EventName:
            <asp:TextBox ID="EventNameTextBox" runat="server" Text='<%# Bind("EventName") %>' />
            <br />
            ReviewDate:
            <asp:TextBox ID="ReviewDateTextBox" runat="server" Text='<%# Bind("ReviewDate") %>' />
            <br />
            Review:
            <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <strong>Customer Name:</strong>
            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Bind("CustomerName") %>' />
            <br />
            <strong>Event Name:</strong>
            <asp:Label ID="EventNameLabel" runat="server" Text='<%# Bind("EventName") %>' />
            <br />
            <strong>Review Date:</strong>
            <asp:Label ID="ReviewDateLabel" runat="server" Text='<%# Bind("ReviewDate", "{0:d}") %>' />
            <br />
            <strong>Review: </strong>
            <asp:Label ID="ReviewLabel" runat="server" Text='<%# Bind("Review") %>' />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataReviews" TypeName="DataSetTableAdapters.ReviewsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ReviewId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="EventName" Type="String" />
            <asp:Parameter Name="ReviewDate" Type="DateTime" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Expr1" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddeventreview" Name="EventName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="EventName" Type="String" />
            <asp:Parameter Name="ReviewDate" Type="DateTime" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Expr1" Type="String" />
            <asp:Parameter Name="Original_ReviewId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>

