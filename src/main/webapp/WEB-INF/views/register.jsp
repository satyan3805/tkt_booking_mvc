<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .register-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .register-container h2 {
            text-align: center;
        }
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
        .password-message {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>

    <div class="register-container">
        <h2>Create Account</h2>
        <form action="registerAction.jsp" method="post" onsubmit="return validateForm()">
            <label for="firstname">First Name:</label>
            <input type="text" id="firstname" name="firstname" class="input-field" required><br>

            <label for="lastname">Last Name:</label>
            <input type="text" id="lastname" name="lastname" class="input-field" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="input-field" required><br>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" class="input-field" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="input-field" required><br>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" class="input-field" required><br>

            <div class="password-message" id="passwordMessage"></div>

            <input type="submit" value="Create Account" class="submit-btn">
        </form>
    </div>

    <script>
        function validateForm() {
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;
            const passwordMessage = document.getElementById("passwordMessage");

            if (password !== confirmPassword) {
                passwordMessage.textContent = "Passwords do not match!";
                return false; // Prevent form submission
            }

            passwordMessage.textContent = ""; // Clear the error message
            return true; // Allow form submission
        }
    </script>

</body>
</html>
