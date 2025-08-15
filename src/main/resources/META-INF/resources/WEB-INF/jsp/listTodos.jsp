<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Printable To-Do List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        #todo-container {
            max-width: 500px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        input[type="text"] {
            width: 70%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            padding: 10px 15px;
            margin-left: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #add-btn {
            background-color: #4CAF50;
            color: white;
        }
        #print-btn {
            background-color: #2196F3;
            color: white;
            margin-top: 10px;
        }
        ul {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }
        li {
            padding: 8px;
            background: #f9f9f9;
            border: 1px solid #ddd;
            margin-bottom: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h1>My To-Do List</h1>
    <div>Your Todos are ${todos}</div>



</body>
</html>
