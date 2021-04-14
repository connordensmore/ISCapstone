<%@ Page Title="Balloons" Language="VB" MasterPageFile="~/balloonmainMasterPage2.master" AutoEventWireup="false" CodeFile="Balloons.aspx.vb" Inherits="Balloons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Balloons</h1>
    <p>
        <span style="color: rgb(0, 0, 0); font-family: "</p>
        </span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Area to complete database functions</p>
    <p>
        Display balloons in a gridview from the Balloons Table</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Balloons_id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="648px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Balloons_id" HeaderText="Balloons_id" InsertVisible="False" ReadOnly="True" SortExpression="Balloons_id" />
                <asp:BoundField DataField="Balloon_Name" HeaderText="Balloon_Name" SortExpression="Balloon_Name" />
                <asp:BoundField DataField="Balloon_Desc" HeaderText="Balloon_Desc" SortExpression="Balloon_Desc" />
                <asp:BoundField DataField="Balloon_Image" HeaderText="Balloon_Image" SortExpression="Balloon_Image" />
                <asp:BoundField DataField="Balloon_Pilot" HeaderText="Balloon_Pilot" SortExpression="Balloon_Pilot" />
                <asp:BoundField DataField="Homeplace" HeaderText="Homeplace" SortExpression="Homeplace" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Balloons] ORDER BY [Homeplace]"></asp:SqlDataSource>
    </p>
    <p>
        Display balloons table data in a&nbsp; formview or details view</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" AllowPaging="True">
            <EditItemTemplate>
                Balloon_Name:
                <asp:TextBox ID="Balloon_NameTextBox" runat="server" Text='<%# Bind("Balloon_Name") %>' />
                <br />
                Homeplace:
                <asp:TextBox ID="HomeplaceTextBox" runat="server" Text='<%# Bind("Homeplace") %>' />
                <br />
                Balloon_Desc:
                <asp:TextBox ID="Balloon_DescTextBox" runat="server" Text='<%# Bind("Balloon_Desc") %>' />
                <br />
                Balloon_Pilot:
                <asp:TextBox ID="Balloon_PilotTextBox" runat="server" Text='<%# Bind("Balloon_Pilot") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Balloon_Name:
                <asp:TextBox ID="Balloon_NameTextBox" runat="server" Text='<%# Bind("Balloon_Name") %>' />
                <br />
                Homeplace:
                <asp:TextBox ID="HomeplaceTextBox" runat="server" Text='<%# Bind("Homeplace") %>' />
                <br />
                Balloon_Desc:
                <asp:TextBox ID="Balloon_DescTextBox" runat="server" Text='<%# Bind("Balloon_Desc") %>' />
                <br />
                Balloon_Pilot:
                <asp:TextBox ID="Balloon_PilotTextBox" runat="server" Text='<%# Bind("Balloon_Pilot") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Balloon_Name:
                <asp:Label ID="Balloon_NameLabel" runat="server" Text='<%# Bind("Balloon_Name") %>' />
                <br />
                Homeplace:
                <asp:Label ID="HomeplaceLabel" runat="server" Text='<%# Bind("Homeplace") %>' />
                <br />
                Balloon_Desc:
                <asp:Label ID="Balloon_DescLabel" runat="server" Text='<%# Bind("Balloon_Desc") %>' />
                <br />
                Balloon_Pilot:
                <asp:Label ID="Balloon_PilotLabel" runat="server" Text='<%# Bind("Balloon_Pilot") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Balloon_Name], [Homeplace], [Balloon_Desc], [Balloon_Pilot] FROM [Balloons] ORDER BY [Balloon_Name]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Balloons_id" DataSourceID="SqlDataSource3" GridLines="Vertical" Height="50px" Width="220px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Balloons_id" HeaderText="Balloons_id" InsertVisible="False" ReadOnly="True" SortExpression="Balloons_id" />
                <asp:BoundField DataField="Balloon_Name" HeaderText="Balloon_Name" SortExpression="Balloon_Name" />
                <asp:BoundField DataField="Balloon_Desc" HeaderText="Balloon_Desc" SortExpression="Balloon_Desc" />
                <asp:BoundField DataField="Balloon_Image" HeaderText="Balloon_Image" SortExpression="Balloon_Image" />
                <asp:BoundField DataField="Balloon_Pilot" HeaderText="Balloon_Pilot" SortExpression="Balloon_Pilot" />
                <asp:BoundField DataField="Homeplace" HeaderText="Homeplace" SortExpression="Homeplace" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Balloons] WHERE [Balloons_id] = @Balloons_id" InsertCommand="INSERT INTO [Balloons] ([Balloon_Name], [Balloon_Desc], [Balloon_Image], [Balloon_Pilot], [Homeplace]) VALUES (@Balloon_Name, @Balloon_Desc, @Balloon_Image, @Balloon_Pilot, @Homeplace)" SelectCommand="SELECT * FROM [Balloons]" UpdateCommand="UPDATE [Balloons] SET [Balloon_Name] = @Balloon_Name, [Balloon_Desc] = @Balloon_Desc, [Balloon_Image] = @Balloon_Image, [Balloon_Pilot] = @Balloon_Pilot, [Homeplace] = @Homeplace WHERE [Balloons_id] = @Balloons_id">
            <DeleteParameters>
                <asp:Parameter Name="Balloons_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Balloon_Name" Type="String" />
                <asp:Parameter Name="Balloon_Desc" Type="String" />
                <asp:Parameter Name="Balloon_Image" Type="String" />
                <asp:Parameter Name="Balloon_Pilot" Type="Int32" />
                <asp:Parameter Name="Homeplace" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Balloon_Name" Type="String" />
                <asp:Parameter Name="Balloon_Desc" Type="String" />
                <asp:Parameter Name="Balloon_Image" Type="String" />
                <asp:Parameter Name="Balloon_Pilot" Type="Int32" />
                <asp:Parameter Name="Homeplace" Type="String" />
                <asp:Parameter Name="Balloons_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

