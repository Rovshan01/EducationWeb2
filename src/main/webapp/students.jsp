<%@ page import="java.util.List" %>
<%@ page import="com.peace.educationweb2.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Education Web</title>
</head>
<body>
<h1>
    My first web app
</h1>
<br/>
<form action="hello-servlet" method="POST">
        Name: <input type="text" name="name" placeholder="Enter your name"/>
        Surname: <input type="text" name="surname" placeholder="Enter your surname"/>
        Age: <input type="text" name="age" placeholder="Enter your age"/>
        Scholarship: <input type="text" name="scholarship" placeholder="Enter your scolarship"/>
        University: <input type="text" name="universityId" placeholder="Enter your university id"/>

        <button type="submit">Submit</button>
    </form>

<%
    List<Student> list = (List<Student>) request.getAttribute("studentList");

    for (Student student : list) {
        out.println(student + "<br/>");
    }
%>
</body>
</html>