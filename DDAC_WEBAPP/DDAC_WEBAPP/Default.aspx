<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDAC_WEBAPP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to Maersk Line</h1>
        <p class="lead">Maersk Line is the global container division and the largest operating unit of the A.P. Moller – Maersk Group, a Danish business conglomerate. It is the world's largest container shipping company having customers through 374 offices in 116 countries.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add Shipping Schedule</h2>
            <p>
                Mearsk Line client can add every shipment detail into the shipping schedule here.
            </p>
            <p>
                <a class="btn btn-default" href="Add_shipment.aspx">Add here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Update Schedule</h2>
            <p>
                Update, edit, and delete the shipping schedule here with ease.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Shipping schedule list</h2>
            <p>
                Maersk Line allow their client to view their shipping schedule.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Show list &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
