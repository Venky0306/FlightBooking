<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="FlightBooking.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:Label runat="server" Text="First Name "></asp:Label><asp:TextBox runat="server" Text="FirstName"></asp:TextBox>
<asp:Label runat="server" Text="Last Name "></asp:Label><asp:TextBox runat="server" Text="LastName"></asp:TextBox>
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />

</asp:Content>
