<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FastEats.login" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Animated Login & Signup Form</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nosifer&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="login.css" />
    <script src="login.js"></script>
</head>
<body>
    <form id="form2" runat="server">
        <nav>
            <div class="navigation">
                <h1>Fast Eats</h1>
            </div>
        </nav>

        <div class="center" id="login-container">
            <h1>Welcome!</h1>
            <asp:Panel ID="loginPanel" runat="server">
                <div class="txt_field">
                    <asp:TextBox ID="loginUsername" runat="server" Required="true"></asp:TextBox>
                    <span></span>
                    <label>Username</label>
                </div>

                <div class="txt_field">
                    <asp:TextBox ID="loginPassword" runat="server" TextMode="Password" Required="true"></asp:TextBox>
                    <span></span>
                    <label>Password</label>
                </div>
                <div class="pass">Forgot Password?</div>
                <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                <div class="signup_link">
                    Not a member? <a href="#" id="signup-link">Signup</a>
                </div>
            </asp:Panel>
            <!-- Error message label -->
            <asp:Label ID="Label1" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
        </div>

        <div class="center" id="signup-container" style="display: none;">
            <h1>Sign Up</h1>
            <asp:Panel ID="signupPanel" runat="server">
                <div class="txt_field">
                    <asp:TextBox ID="signupUsername" runat="server" Required="true"></asp:TextBox>
                    <span></span>
                    <label>Username</label>
                </div>

                <div class="txt_field">
                    <asp:TextBox ID="signupEmail" runat="server" TextMode="Email" Required="true"></asp:TextBox>
                    <span></span>
                    <label>Email</label>
                </div>

                <div class="txt_field">
                    <asp:TextBox ID="signupPassword" runat="server" TextMode="Password" Required="true"></asp:TextBox>
                    <span></span>
                    <label>Password</label>
                </div>
                <asp:Button ID="signupButton" runat="server" Text="Sign Up" OnClick="SignupButton_Click" />
                <br />
                <div class="login_link">
                    Already have an account? <a href="#" id="login-link">Log in here</a>
                </div>
            </asp:Panel>
            <!-- Error message label -->
            <asp:Label ID="errorMessage" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
