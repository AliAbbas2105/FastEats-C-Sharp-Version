<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeliveryTracking.aspx.cs" Inherits="FastEats.DeliveryTracking" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FastEats Delivery Tracking</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nosifer&display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script type="text/javascript">
        // JavaScript function to update progress
        function updateProgress(progress) {
            const progressBar = document.querySelector('.loading-progress');
            progressBar.style.width = `${progress}%`;

            // Update active steps
            const progressSteps = document.querySelectorAll('.tracker-step');
            const activeSteps = Math.floor(progress / 25);
            progressSteps.forEach((step, index) => {
                if (index <= activeSteps) {
                    step.classList.add('active');
                } else {
                    step.classList.remove('active');
                }
            });
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
        <div class="tracker-container">
            <div class="tracker-title">FastEats Delivery Tracking</div>
            <div class="tracker-steps">
                <div class="tracker-step">
                    <img src="chef.jpg" alt="Order Placed" class="status-logo1">
                    <div class="step-label">Cooking</div>
                </div>
                <div class="tracker-step">
                    <img src="excited-child.jpg" alt="Order Ready" class="status-logo2">
                    <div class="step-label">Order Ready</div>
                </div>
                <div class="tracker-step">
                    <img src="rider.jpg" alt="Rider Picked Up" class="status-logo3">
                    <div class="step-label">Rider Picked Up</div>
                </div>
                <div class="tracker-step">
                    <img src="delivered.jpg" alt="Delivered" class="status-logo4">
                    <div class="step-label">Delivered</div>
                </div>
            </div>
            <div class="loading-bar">
                <div class="loading-progress"></div>
            </div>
        </div>
        <asp:HiddenField ID="hiddenFieldProgress" runat="server" />
        <%--<script src="script.js"></script>--%>
    </form>
</body>
</html>
