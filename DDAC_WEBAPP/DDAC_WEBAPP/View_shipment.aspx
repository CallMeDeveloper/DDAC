<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_shipment.aspx.cs" Inherits="DDAC_WEBAPP.View_shipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3> View your shipment here</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="From" HeaderText="From" SortExpression="From"></asp:BoundField>
                <asp:BoundField DataField="To" HeaderText="To" SortExpression="To"></asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"></asp:BoundField>
                <asp:BoundField DataField="Client Name" HeaderText="Client Name" SortExpression="Client Name"></asp:BoundField>
                <asp:BoundField DataField="Weight(kg)" HeaderText="Weight(kg)" SortExpression="Weight(kg)"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" DeleteCommand="DELETE FROM [ShipmentInfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ShipmentInfo] ([From], [To], [Date], [Client Name], [Weight(kg)]) VALUES (@From, @To, @Date, @Client_Name, @column1)" SelectCommand="SELECT * FROM [ShipmentInfo]" UpdateCommand="UPDATE [ShipmentInfo] SET [From] = @From, [To] = @To, [Date] = @Date, [Client Name] = @Client_Name, [Weight(kg)] = @column1 WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="From" Type="String" />
                <asp:Parameter Name="To" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Client_Name" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="From" Type="String" />
                <asp:Parameter Name="To" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Client_Name" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Back to Home page" OnClick="Button1_Click" />
    </p>
</asp:Content>
