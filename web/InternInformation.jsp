<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Intern Information</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header, footer {
            background-color: #f8a488;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        h1 {
            text-align: center;
            margin: 20px 0;
        }
        .info {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #f18d6c;
            color: white;
        }
        td img {
            border-radius: 50%;
        }
        tr {
            border-bottom: 1px solid #ddd;
        }
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #f18d6c; /* Màu nền của nút */
            text-decoration: none;
            border-radius: 5px; /* Bo tròn góc nút */
            transition: background-color 0.3s;
            margin: 20px auto; /* Căn giữa nút */
            text-align: center; /* Căn giữa văn bản bên trong nút */
            display: block; /* Đảm bảo nút chiếm toàn bộ chiều rộng cần thiết */
            width: fit-content; /* Đảm bảo nút không chiếm quá nhiều chiều rộng */
        }
        .back-button:hover {
            background-color: #e5784e; /* Màu nền khi di chuột qua */
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <br>
    <h1>Intern Information</h1>
    <br>
    <c:forEach var="projectInfo" items="${projectInfoList}">
        <div class="info">
            <p>Project Name: ${projectInfo.projectName}</p>
            <p>Mentor Name: ${projectInfo.fullName}</p>
        </div>
    </c:forEach>
    
    <table>
        <thead>
            <tr>
                <th>Intern ID</th>
                <th>User ID</th>
                <th>Full Name</th>
                <th>Specialization</th>
                <th>Position Name</th>
                <th>Avatar</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Phone</th>
                <th>Active</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="intern" items="${internList}">
                <tr>
                    <td>${intern.id}</td>
                    <td>${intern.userId}</td>
                    <td>${intern.fullName}</td>
                    <td>${intern.specialization}</td>
                    <td>${intern.positionName}</td>
                    <td><img src="img/${intern.avatar}" alt="Avatar" style="width:50px;height:50px;"></td>
                    <td>${intern.dob}</td>
                    <td>${intern.gender}</td>
                    <td>${intern.phone}</td>
                    <td>${intern.active ? 'Active' : 'Inactive'}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <a href="UsersInformation" class="back-button">Back</a>
</body>
</html>