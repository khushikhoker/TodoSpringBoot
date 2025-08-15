<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${username} To-Do List</title>
    <style>
        /* Base styles */
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: white;
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: rgba(255, 255, 255, 0.85);
            font-size: 1.1rem;
            margin-bottom: 30px;
        }

        /* Card container */
        .todo-card {
            max-width: 900px;
            margin: auto;
            background: white;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            animation: fadeIn 0.5s ease-in-out;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            font-size: 0.95rem;
        }

        th, td {
            padding: 14px 12px;
            text-align: left;
        }

        th {
            background-color: #5563DE;
            color: white;
            border-top-left-radius: 6px;
            border-top-right-radius: 6px;
        }

        tr:nth-child(even) {
            background-color: #f8f9fc;
        }

        tr:hover {
            background-color: #eef3ff;
            transition: background 0.2s ease-in;
        }

        /* Rounded table edges */
        table tr:first-child th:first-child {
            border-top-left-radius: 8px;
        }

        table tr:first-child th:last-child {
            border-top-right-radius: 8px;
        }

        /* Done status */
        .done {
            color: #4CAF50;
            font-weight: bold;
        }

        .not-done {
            color: #E74C3C;
            font-weight: bold;
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive */
        @media screen and (max-width: 600px) {
            table, thead, tbody, th, td, tr {
                display: block;
                width: 100%;
            }

            tr {
                margin-bottom: 15px;
                background: white;
                border-radius: 8px;
                padding: 10px;
                box-shadow: 0 3px 8px rgba(0,0,0,0.05);
            }

            th {
                display: none;
            }

            td {
                display: flex;
                justify-content: space-between;
                padding: 8px;
                border-bottom: 1px solid #eee;
            }

            td:last-child {
                border-bottom: none;
            }
        }
    </style>
</head>
<body>

    <h1>${username}'s To-Do List</h1>
    <div class="subtitle">Your tasks and progress at a glance</div>

    <div class="todo-card">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Description</th>
                    <th>Target Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.id}</td>
                        <td>${todo.description}</td>
                        <td>${todo.targetDate}</td>
                        <td>${todo.done}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
