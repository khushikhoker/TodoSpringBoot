<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6dd5ed, #2193b0);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: white;
        }
        .welcome-box {
            background: rgba(0, 0, 0, 0.4);
            padding: 2rem 3rem;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        h1 {
            margin-bottom: 1rem;
            font-size: 2rem;
        }
        p {
            font-size: 1.1rem;
            margin-bottom: 1.5rem;
        }
        button {
            background-color: #4CAF50;
            border: none;
            padding: 0.7rem 1.2rem;
            color: white;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>Welcome, ${username}</h1>
        <p>We are glad to have you here.</p>
    </div>
</body>
</html>
