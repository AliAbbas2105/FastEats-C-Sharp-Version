<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="FastEats.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fast Eats</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nosifer&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="homepage.css" />
</head>
<body>
    <form id="form2" runat="server">
        <nav>
            <div class="navigation">
                <h2>Fast Eats</h2>
                <h4>Menu</h4>
                <h4>Deals</h4>
            </div>
            <h4>Sign up</h4>
            <a href="#" id="cart-icon">
                <img src="https://images.ctfassets.net/wtodlh47qxpt/6qtBVFuno7pdwOQ9RIvYm9/d13e9b7242980972cf49beddde2cc295/bucket_cart_icon.svg" />
            </a>
        </nav>

        <div class="navbar">
            <h3>LET'S ORDER FOR DELIVERY, PICK UP, OR DINE-IN</h3>
            <asp:Button ID="StartOrderButton" runat="server" Text="Start Order" />
        </div>

        <div class="main">
            <img src="front.jpg" alt="" />
        </div>

        <h2>BROWSE CATEGORIES</h2>

        <div class="card">
            <div class="crd">
                <img src="wing1.jpeg" alt="" />
                <h3>Hot Wings</h3>
                <p>Price: $5.99</p>
                <asp:Button ID="btnHotWings" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Hot Wings" data-price="5.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="new.png" alt="" />
                <h3>Burger</h3>
                <p>Price: $6.99</p>
                <asp:Button ID="btnBurger" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Burger" data-price="6.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="fries2.png"  Height="110px" Width="170px" alt="" />
                <h3>Loaded Fries</h3>
                <p>Price: $7.99</p>
                <asp:Button ID="btnLoadedFries" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Loaded Fries" data-price="7.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="pepsi.jpeg" alt="" />
                <h3>Pepsi</h3>
                <p>Price: $8.99</p>
                <asp:Button ID="btnPepsi" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Pepsi" data-price="8.99" OnClick="AddToCart_Click" />
            </div>
        </div>

        <div class="card">
            <div class="crd">
                 <img src="chocSundae.jpg" alt="" />
                <h3>Choc Sundae</h3>
                <p>Price: $7.99</p>
                <asp:Button ID="btnChocSundae" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Chocolate Sundae" data-price="7.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="cone.png" alt="" />
                <h3>Strawberry Cone</h3>
                <p>Price: $6.99</p>
                <asp:Button ID="btnStrawberryCone" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Strawberry Cone" data-price="6.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="coffee.png" alt="" />
                <h3>Cold Coffee</h3>
                <p>Price: $6.99</p>
                <asp:Button ID="btnColdCoffee" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Cold Coffee" data-price="6.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="fanta.jpg" alt="" />
                <h3>Fanta</h3>
                <p>Price: $8.99</p>
                <asp:Button ID="btnFanta" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Fanta" data-price="8.99" OnClick="AddToCart_Click" />
            </div>
        </div>

        <div class="card">
            <div class="crd">
                <img src="wing1.jpeg" alt="" />
                <h3>Hot Wings</h3>
                <p>Price: $5.99</p>
                <asp:Button ID="Button1" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Hot Wings" data-price="5.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="new.png" alt="" />
                <h3>Burger</h3>
                <p>Price: $6.99</p>
                <asp:Button ID="btnBurger1" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Burger" data-price="6.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="new.png" alt="" />
                <h3>Burger</h3>
                <p>Price: $6.99</p>
                <asp:Button ID="btnBurger2" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Burger" data-price="6.99" OnClick="AddToCart_Click" />
            </div>
            <div class="crd">
                <img src="sprite.png" alt="" />
                <h3>Sprite</h3>
                <p>Price: $8.99</p>
                <asp:Button ID="btnSprite" runat="server" CssClass="add-to-cart" Text="Add to Cart"
                    data-item="Sprite" data-price="8.99" OnClick="AddToCart_Click" />
            </div>
        </div>

        <div class="s-card">
            <div class="s-crd">
                <img src="ff1.JPG" alt="" />
                <div class="inner">
                    <h3>Delicious From FastEats</h3>
                    <asp:Button ID="btnCheckDeal1" runat="server" CssClass="checkdeal" Text="Check" OnClick="CheckDeal_Click" />
                </div>
            </div>
            <div class="s-crd">
                <img src="ff1.JPG" alt="" />
                <div class="inner">
                    <h3>Delicious From FastEats</h3>
                    <asp:Button ID="btnCheckDeal2" runat="server" Text="Check" OnClick="CheckDeal_Click" />
                </div>
            </div>
            <div class="s-crd">
                <img src="ff1.JPG" alt="" />
                <div class="inner">
                    <h3>Delicious From FastEats</h3>
                    <asp:Button ID="btnCheckDeal3" runat="server" Text="Check" OnClick="CheckDeal_Click" />
                </div>
            </div>
        </div>


        <div class="footer">
            <div class="list">
                <asp:HyperLink ID="hlFastEatsFood" runat="server" Text="FastEats Food" NavigateUrl="#" /><br />
                <asp:HyperLink ID="hlOrderLookup" runat="server" Text="Order Lookup" NavigateUrl="#" /><br />
                <asp:HyperLink ID="hlGiftCard" runat="server" Text="Gift Card" NavigateUrl="#" /><br />
            </div>
            <div class="list">
                <asp:HyperLink ID="hlSupport" runat="server" Text="Support" NavigateUrl="#" /><br />
                <asp:HyperLink ID="hlContactUs" runat="server" Text="Contact Us" NavigateUrl="#" /><br />
                <asp:HyperLink ID="hlFeedback" runat="server" Text="Feedback" NavigateUrl="#" /><br />
            </div>
        </div>


        <!-- Modal for showing cart status -->
        <asp:Panel ID="CartModal" runat="server" CssClass="modal" Visible="false">
            <div class="modal-content">
                <span class="close">&times;</span>
                <h2>Shopping Cart</h2>
                <div id="Div1" runat="server"></div>
                <div id="Div2" runat="server"></div>
            </div>
            <asp:Button ID="CheckoutButton" runat="server" Text="Checkout" OnClick="CheckoutButton_Click" />
        </asp:Panel>
    </form>
    <script src="homePage.js"></script>
</body>
</html>
