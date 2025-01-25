<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vinance Login</title>
    <!-- Font Awesome CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="signup.css">
    <style>
        /* Improved "Remember Me" Checkbox */
        .checkbox-container {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 0.95em;
            color: #bbb;
            cursor: pointer;
        }

        .checkbox-container input[type="checkbox"] {
            width: 20px;
            height: 20px;
            margin: 0;
            accent-color: #0056ff;
            cursor: pointer;
        }

        /* Password Input with Eye Icon Inside */
        .password-wrapper {
            position: relative;
            width: 100%;
        }

        .password-wrapper input {
            width: 100%;
            height: 40px;
            padding-left: 10px;
            padding-right: 40px; /* Space for eye icon */
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .password-wrapper .toggle-password {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            cursor: pointer;
            color: #bbb;
            font-size: 1.2em;
        }

        .password-wrapper .toggle-password:hover {
            color: #0056ff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left">
            <div class="logo">
                <img src="logo.svg" alt="Logo">
                <h2>Vinance</h2>
            </div>
            <h1>Welcome To Vinance</h1>
            <p>Login to embrace the possibilities</p>
            <img src="bg1.jpg" alt="Illustration">
        </div>
        <div class="right">
            <div class="top-right">
                <span>Don’t have an account? </span><a href="#">Sign Up</a>
            </div>
            <div class="centeral">

                <h2>Log In</h2>
                <p>Securely connect to your account</p>

                <div class="metamask-btn">
                    <img src="MetaMask_Fox.svg.png" alt="Metamask Icon"> Continue with Metamask
                </div>

                <p style="text-align: center; font-size: 1.2em;">OR</p>

                <form>
                    <!-- Email Input -->
                    <label for="email">Email</label>
                    <input type="text" placeholder="Enter your username or email" required> 

                    <!-- Password Input -->
                    <div class="password-row">
                        <label for="password">Password</label>
                        <a href="#">Forgot Password?</a>
                    </div>
                    <div class="password-wrapper">
                        <input type="password" id="password" placeholder="Enter your password" required>
                        <i class="toggle-password fas fa-eye" onclick="togglePassword()"></i>
                    </div>

                    <!-- Remember Me Checkbox -->
                    <div class="checkbox-container">
                        <input type="checkbox" id="remember-me">
                        <label for="remember-me">Remember Me</label>
                    </div>
                    <button type="submit">Log In</button>
                </form>
            </div>
            <div class="footer">
                &copy; 2025 Vinance. All Rights Reserved
                <a href="#">Terms of Use</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Trade Policy</a>
            </div>
        </div>
    </div>

    <script>
        function togglePassword() {
            const passwordField = document.getElementById('password');
            const passwordToggle = document.querySelector('.toggle-password');
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                passwordToggle.classList.remove('fa-eye');
                passwordToggle.classList.add('fa-eye-slash');
            } else {
                passwordField.type = 'password';
                passwordToggle.classList.remove('fa-eye-slash');
                passwordToggle.classList.add('fa-eye');
            }
        }
    </script>
</body>
</html>
