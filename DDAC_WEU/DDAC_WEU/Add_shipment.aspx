<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_shipment.aspx.cs" Inherits="DDAC_WEU.Add_shipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> New Shipment Information </h1>
    <h3>Shipment Details</h3>
    <p>From&nbsp;
        <asp:TextBox ID="From" runat="server" Width="142px"></asp:TextBox>
    </p>
    <p>To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="To" runat="server" Width="142px"></asp:TextBox>
    </p>
    
    <p> Date:
        <asp:TextBox ID="Date" runat="server"></asp:TextBox>
    </p>
  
    <p> Client name:
        <asp:TextBox ID="Client" runat="server"></asp:TextBox>
    </p>
    <p> Weight (kg):
        <asp:TextBox ID="weight" runat="server"></asp:TextBox>
    </p>
    <br />
    <br />
    <asp:Button Style="margin-right:20px" ID="btnAdd" runat="server" Text="Add Shipment" OnClick="btnAdd_Click"/>
    <asp:Button ID="btnClear" runat="server" Text="Cancel Shipment" OnClick="btnClear_Click"/>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" DeleteCommand="DELETE FROM [ShipmentInfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ShipmentInfo] ([From], [To], [Date], [Client Name], [Weight(kg)]) VALUES (@From, @To, @Date, @Client_Name, @column1)" SelectCommand="SELECT * FROM [ShipmentInfo]" UpdateCommand="UPDATE [ShipmentInfo] SET [From] = @From, [To] = @To, [Date] = @Date, [Client Name] = @Client_Name, [Weight(kg)] = @column1 WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="From" Name="From" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="To" Name="To" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Date" Name="Date" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Client" Name="Client_Name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Weight" Name="column1" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="From" Name="From" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="To" Name="To" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Date" Name="Date" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Client" Name="Client_Name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Weight" Name="column1" PropertyName="Text" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

