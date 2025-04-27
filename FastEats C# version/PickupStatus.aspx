<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PickupStatus.aspx.cs" Inherits="FastEats.PickupStatus" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FastEats - Pickup Status</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nosifer&display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="styles3.css">
    <script type="text/javascript">
        // JavaScript function to update progress
        function updateProgress(index) {
            const progressBar = document.querySelector('.loading-progress');
            const stepWidth = 100 / 3; // Total number of steps
            const width = index * stepWidth;
            progressBar.style.width = `${width}%`;

            // Update active step
            const progressSteps = document.querySelectorAll('.tracker-step');
            progressSteps.forEach((step, i) => {
                if (i === index) {
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
            <div class="tracker-title">FastEats Pickup Status</div>
            <div class="tracker-steps">
                <div class="tracker-step">
                    <img src="chef.jpg" alt="Cooking" class="status-logo1">
                    <div class="step-label">Cooking</div>
                </div>
                <div class="tracker-step">
                    <img src="excited-child.jpg" alt="Order Almost Ready" class="status-logo2">
                    <div class="step-label">Order Almost Ready</div>
                </div>
                <div class="tracker-step">
                    <img src="burger-fries.jpg" alt="Come to Pick Up" class="status-logo3">
                    <div class="step-label">Come to Pick Up</div>
                </div>
            </div>
            <div class="loading-bar">
                <div class="loading-progress"></div>
            </div>
        </div>
        <asp:HiddenField ID="hiddenFieldProgress" runat="server" />
        <script src="script3.js"></script>
    </form>
</body>
</html>
