<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Button.aspx.cs" Inherits="FlightBooking.Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="FlightName" runat="server" Text="Flight Name"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="DepatureD" runat="server" Text="Departure Date"></asp:Label>><asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <asp:Label ID="DepatureT" runat="server" Text="DepatureTime"></asp:Label><asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
    <asp:Label ID="ArrivalD" runat="server" Text="ArrivalDdate"></asp:Label><asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
    <asp:Label ID="ArrivalT" runat="server" Text="ArrivalTime"></asp:Label><asp:Calendar ID="Calendar4" runat="server"></asp:Calendar>
    <asp:Button ID="Submit" runat="server" Text="Button" OnClick="Submit_Click" />
</asp:Content>
