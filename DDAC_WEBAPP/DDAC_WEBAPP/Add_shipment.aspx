<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_shipment.aspx.cs" Inherits="DDAC_WEBAPP.Add_shipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> New Shipment Information </h1>
    <h3>Destination</h3>
    <p>From&nbsp;
        <asp:TextBox ID="From" runat="server" Width="142px"></asp:TextBox>
    </p>
    <p>To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="To" runat="server" Width="142px"></asp:TextBox>
    </p>
    <h3>Date</h3>
    <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
  
    <p> Client name:
        <asp:TextBox ID="Client" runat="server"></asp:TextBox>
    </p>
    <p> Weight (kg):
        <asp:TextBox ID="weight" runat="server"></asp:TextBox>
    </p>
    <br />
    <br />
    <asp:Button Style="margin-right:20px" ID="btnAdd" runat="server" Text="Add Shipment"/>
    <asp:Button ID="btnClear" runat="server" Text="Cancel Shipment"/>
    &nbsp;</asp:Content>
