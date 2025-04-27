<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="FastEats.payment" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment Details</title>
    <!-- Include CSS files -->
    <link rel="stylesheet" href="stylehc.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  
    <style>
        body {
            /* background-image: url("imagess/bg2.jpg"); */
            background: linear-gradient(120deg,#9a0909, #4a2525);
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
        }

        .form-label{
            color: white;
            font-weight: bold;
        }

        #submitbtn {
            background-color: rgb(61, 44, 44);
            color: white;
            padding: 10px 20px;
            border: 2px solid;
            border-color: #9a0909;
            border-radius: 5px;
            cursor: pointer;
        }

        #submitbtn:hover {
            background-color: darkblue;
        }

        #payment h1{
            color: white;
            text-align: center;
            
        }
        nav{
            display: flex;
            align-items: le;
            justify-content: space-around;
            background-color: #7c091c;
        }
        nav .navigation{
            display: flex;
        }
        h2{
            margin-left: -300px;
            padding: 11px;
            margin-top: 11px;
            color: white;
        }
        nav h2{
            font-family: "Nosifer", sans-serif;
            margin-top: 1px;
            margin-left: -400px;
            color: white;
        }
        nav h2:hover{
            font-weight: 80;
            color: black;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <nav>
            <div class="navigation">
                <h2>Fast Eats</h2>
            </div>
        </nav>

        <section id="payment">
            <br />
            <!--Payment -->
            <div class="container">
                <div class="row">
                    <h1>Payment Details</h1>
                    <br />
                    <div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="txtName" CssClass="form-label">Your Name</asp:Label>
                            <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Name Here"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="form-label">Email</asp:Label>
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="name@example.com" type="email"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="txtBankName" CssClass="form-label">Bank Name</asp:Label>
                            <asp:TextBox runat="server" ID="txtBankName" CssClass="form-control" placeholder="Name Here"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="txtAccountNumber" CssClass="form-label">Account Number</asp:Label>
                            <asp:TextBox runat="server" ID="txtAccountNumber" CssClass="form-control" placeholder="00000000000000" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="txtMessage" CssClass="form-label">Leave a Message</asp:Label>
                            <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </div>

                        <asp:Button runat="server" ID="submitbtn" Text="Submit" CssClass="btn btn-primary" OnClick="submitbtn_Click" />
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <hr />

            <!--Footer-->
            <div class="container">
                <div class="row">
                    <div class="col-12 copyright">
                        <p style="text-align: center; font-family: Georgia, 'Times New Roman', Times, serif; padding-top: 60px; color:white">&copy;- At Your DoorStep. All right reserved</p>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
