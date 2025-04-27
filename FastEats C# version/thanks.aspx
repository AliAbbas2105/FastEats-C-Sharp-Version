<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="FastEats.thanks" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Thank You</title>
    <style>
        body {
          background-image: url("bg7.png");
          background-size: cover;
          background-repeat: no-repeat;
          width: 100%;
          font-family: Arial, sans-serif; /* Set a more modern font */
          margin: 0; /* Remove default body margin */
        }
        #submit {
          border: 5px solid black;
          background-color: rgba(255, 165, 0, 0.5); /* Adjust transparency */
          font-size: 20px;
          padding: 10px 20px; /* Add padding for better button appearance */
          text-decoration: none;
          color: black; /* Change button text color */
          transition: background-color 0.3s ease; /* Add transition effect */
        }
        #submit:hover {
          background-color: rgba(255, 165, 0, 0.8); /* Darken button on hover */
        }
        table {
          border-collapse: collapse;
          width: 80%;
          margin: 0 auto; /* Center the table horizontally */
        }
        th, td {
          border: 2px solid black;
          background-color: rgba(255, 165, 0, 0.5); /* Adjust transparency */
          color: white;
          padding: 10px;
          text-align: center;
        }
        #text {
          font-size: 70px;
          color: #170F84; /* Change text color */
          font-family: 'Brush Script MT', cursive; /* Change font to Brush Script MT */
        }
        .copyright {
          text-align: center;
          padding-top: 60px;
          color: white;
          font-family: Georgia, 'Times New Roman', Times, serif;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <center>
            <table>
                <tr>
                    <td id="text"><strong>Thank You for ordering from us.</strong></td>
                </tr>
            </table>
        </center>
        <br /><br /><br /><br /><br />
        <center><asp:HyperLink ID="GoToMenuLink" runat="server" NavigateUrl="homepage.aspx" CssClass="submit">Go To Menu</asp:HyperLink></center>
        <div class="container">
            <div class="row">
                <div class="col-12 copyright">
                    <p>&copy;- At Your DoorStep. All rights reserved</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
