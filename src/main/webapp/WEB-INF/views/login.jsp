<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in Page</title>
    <style>
    	body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #c2e9fb, #a1c4fd);

    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

#main-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 20px;
    background-color: #222;
    color: white;
}

#main-header img {
    width: 80px;
    height: auto;
    border: 1px solid white;
    padding: 5px;
}

.auth-buttons button {
    padding: 10px 15px;
    margin-left: 10px;
    border: none;
    background: white;
    color: black;
    cursor: pointer;
    transition: background 0.3s;
    border-radius: 5px;
}



.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex: 1;
    padding: 20px;
}

.signin-form {
    width: 100%;
    max-width: 350px;
    padding: 20px;
    border-radius: 8px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.signin-form h2 {
    text-align: center;
    margin-bottom: 20px;
}

.signin-form label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.signin-form input {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.signin-form button {
    width: 100%;
    padding: 10px;
    border: none;
    background: black;
    color: white;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
    transition: background 0.3s;
}

.forgot-password {
    display: block;
    text-align: center;
    color: black;
    text-decoration: none;
    font-size: 14px;
    margin-bottom: 15px;
    transition: color 0.3s ease;
}

.forgot-password:hover {
    color: #e65b4f;
    text-decoration: underline;
}


footer {
    text-align: center;
    padding: 10px;
    background-color: #222;
    color: white;
    font-size: 14px;
} 

@media (max-width: 600px) {
    #main-header {
        flex-direction: column;
        align-items: center;
    }
    
    .auth-buttons {
        margin-top: 10px;
    }
    
    .signup-form {
        width: 90%;
    }
}
    </style>
</head>
<body>
    <header id="main-header">
        <img src="logo.png" alt="logo">
        <div class="auth-buttons">
            <button>Sign in</button>
            <button>Sign up</button>
        </div>
    </header>
    
    <main class="container">
        <div class="signin-form">
            <h2>Sign in</h2>
            <form action="/tktbooking/auth" method="post">
                <label>Enter your Phone Number:</label>
                <input type="tel" placeholder="Enter your phone number" name="username">
                <label>Create your Password:</label>
                <input type="password" placeholder="Create a password" name="password">
                <a href="#" class="forgot-password">Forget password?</a>
                
                <button type="submit">Sign in</button>
            </form>
        </div>
    </main>
    <footer>
        &copy; 2025 Your Company. All rights reserved.
    </footer>
</body>
</html>