<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="FlightBooking.BookingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Label ID="FlightName" runat="server" Text="Flight Name"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   <asp:Label ID="FlightTime" runat="server" Text="Flight Time"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Submit" runat="server" Text="Fetch" OnClick="Submit_Click" />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

     <asp:Label ID="AddName" runat="server" Text="Flight Name"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
     <asp:Button ID="Button1" runat="server" Text="Add Flight" OnClick="Submit_Click1" />

    <asp:Label ID="DeleteName" runat="server" Text="Delete Flight"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
     <asp:Button ID="Button2" runat="server" Text="Delete Flight" OnClick="Submit_Click2" />

</asp:Content>
