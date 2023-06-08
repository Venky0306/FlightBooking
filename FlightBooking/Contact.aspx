<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FlightBooking.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"> 
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Contact -->
  <div class="w3-container">
    <h2>Contact</h2>
    <p>Let us book your next trip!</p>
    <i class="fa fa-map-marker" style="width:30px"></i> Chicago, US<br>
    <i class="fa fa-phone" style="width:30px"></i> Phone: +00 151515<br>
    <i class="fa fa-envelope" style="width:30px"> </i> Email: mail@mail.com<br>
    <form>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p><button class="w3-button w3-black w3-padding-large" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>
       <!-- Newsletter -->
  <div class="w3-container">
    <div class="w3-panel w3-padding-16 w3-black w3-opacity w3-card w3-hover-opacity-off">
      <h2>Get the best offers first!</h2>
      <p>Join our newsletter.</p>
      <label>E-mail</label>
      <input class="w3-input w3-border" type="text" placeholder="Your Email address">
      <button type="button" class="w3-button w3-red w3-margin-top">Subscribe</button>
    </div>
  </div>
    </main>
</asp:Content>
