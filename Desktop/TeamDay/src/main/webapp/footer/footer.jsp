<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer with Gentle Wave Effect</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .footer {
            position: fixed;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #0056b3; /* Blue background */
            color: white;
            text-align: center;
            padding: 10px 0;
            font-size: 1em;
            z-index: 1000;
            overflow: hidden;
        }

        .footer-content {
            position: relative;
            z-index: 1; /* Keeps footer text above waves */
        }

        .footer h2, .footer p {
            margin: 0;
            padding: 0;
        }

        /* Wave effect */
        .wave {
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 200%; /* Wider for smooth movement */
            height: 60px; /* Height of the wave */
            background: rgba(255, 255, 255, 0.3); /* Semi-transparent white */
            border-radius: 50%; /* Smooth edges */
            transform: translateX(-50%);
            animation: waveAnimation 5s ease-in-out infinite; /* Wave animation */
        }

        @keyframes waveAnimation {
            0% {
                transform: translate(-50%, 0);
            }
            50% {
                transform: translate(-50%, -10px); /* Move up */
            }
            100% {
                transform: translate(-50%, 0); /* Move back down */
            }
        }
    </style>
</head>
<body>
    <!-- Main content here -->

    <footer class="footer">
        <div class="footer-content">
            <h2>This app is a practice project</h2>
            <p>&copy; 2024 Team Day. All Rights Reserved.</p>
        </div>
        <div class="wave"></div> <!-- Single wave effect -->
    </footer>
</body>
</html>
