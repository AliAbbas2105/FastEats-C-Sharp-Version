<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderOptions.aspx.cs" Inherits="FastEats.OrderOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FastEats - Order Options</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nosifer&display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="styles2.css">
    <script>
        function closePopup(popupId) {
            document.getElementById(popupId).style.display = "none";
        }

        function confirmOrder(option) {
            document.getElementById(option + 'ConfirmationPopup').style.display = 'block';
            localStorage.setItem('orderOption', option);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <div class="navigation">
                <h1>Fast Eats</h1>
            </div>
        </nav>
        <div class="options-container">
            <h1>Welcome to FastEats!</h1>
            <p>Please select your order option:</p>
            <div class="options">
                <asp:Button ID="btnPickup" runat="server" Text="Pickup" OnClientClick="confirmOrder('pickup'); return false;" CssClass="option-button" />
                <asp:Button ID="btnDelivery" runat="server" Text="Delivery" OnClientClick="confirmOrder('delivery'); return false;" CssClass="option-button" />
            </div>
        </div>

        <!-- Pickup Confirmation Popup -->
        <div class="confirmation-popup" id="pickupConfirmationPopup" runat="server" style="display:none;">
            <div class="popup-content">
                <h2>Confirmation</h2>
                <p>Are you sure you want to place the pickup order?</p>
                <div class="buttons">
                    <asp:Button ID="btnPlacePickupOrder" runat="server" Text="Place Order" OnClick="btnPlacePickupOrder_Click" CssClass="option-button" />
                    <button type="button" onclick="closePopup('pickupConfirmationPopup')" class="option-button">Cancel</button>
                </div>
            </div>
        </div>

        <!-- Delivery Confirmation Popup -->
        <div class="confirmation-popup" id="deliveryConfirmationPopup" runat="server" style="display:none;">
            <div class="popup-content">
                <h2>Confirmation</h2>
                <p>Are you sure you want to place the delivery order?</p>
                <div class="buttons">
                    <asp:Button ID="btnPlaceDeliveryOrder" runat="server" Text="Place Order" OnClick="btnPlaceDeliveryOrder_Click" CssClass="option-button" />
                    <button type="button" onclick="closePopup('deliveryConfirmationPopup')" class="option-button">Cancel</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
