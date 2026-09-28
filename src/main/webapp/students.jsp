<%@ page import="java.util.List" %>
<%@ page import="com.peace.educationweb2.Student" %>

<!DOCTYPE html>
<html>
<head>
    <title>Education Web</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body class="bg-dark">

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-black border-bottom border-secondary">
    <div class="container">

        <a class="navbar-brand fw-bold fs-4" href="#">
            <span class="text-info">EDU</span>WEB
        </a>

        <form action="student-education" method="POST">
            <input type="hidden" name="action" value="logout"/>

            <button type="submit"
                    class="btn btn-outline-light btn-sm px-3">

                <i class="bi bi-box-arrow-right me-1"></i>
                Logout

            </button>
        </form>

    </div>
</nav>


<!-- MAIN -->
<div class="container py-5">


    <!-- HERO -->
    <div class="row align-items-center mb-5">

        <div class="col-lg-8">

            <span class="badge text-bg-info mb-3 px-3 py-2">
                Student Management
            </span>

            <h1 class="display-4 fw-bold text-white">
                Education
                <span class="text-info">Dashboard</span>
            </h1>

            <p class="lead text-secondary mb-0">
                Manage students, universities and scholarship information
                from one simple dashboard.
            </p>

        </div>


        <!-- SYSTEM STATUS -->
        <div class="col-lg-4 text-lg-end mt-4 mt-lg-0">

            <div class="d-inline-block bg-black border border-secondary rounded-4 p-4">

                <div class="text-secondary small mb-1">
                    System Status
                </div>

                <div class="text-success fw-bold fs-5">

                    <i class="bi bi-circle-fill me-2"
                       style="font-size: 10px;"></i>

                    Online

                </div>

            </div>

        </div>

    </div>


    <!-- ADD STUDENT -->
    <div class="card bg-black border-secondary rounded-4 shadow-lg mb-5">

        <div class="card-body p-4 p-lg-5">

            <div class="d-flex align-items-center mb-4">

                <div class="bg-info text-dark rounded-3 p-3 me-3">

                    <i class="bi bi-person-plus-fill fs-4"></i>

                </div>

                <div>

                    <h3 class="text-white mb-1">
                        Add New Student
                    </h3>

                    <p class="text-secondary mb-0">
                        Enter student information below
                    </p>

                </div>

            </div>


            <form action="student-education" method="POST">

                <div class="row g-4">


                    <!-- NAME -->
                    <div class="col-md-6">

                        <label class="form-label text-light">
                            Name
                        </label>

                        <input type="text"
                               name="name"
                               class="form-control form-control-lg bg-dark text-white border-secondary"
                               placeholder="Enter name">

                    </div>


                    <!-- SURNAME -->
                    <div class="col-md-6">

                        <label class="form-label text-light">
                            Surname
                        </label>

                        <input type="text"
                               name="surname"
                               class="form-control form-control-lg bg-dark text-white border-secondary"
                               placeholder="Enter surname">

                    </div>


                    <!-- AGE -->
                    <div class="col-md-4">

                        <label class="form-label text-light">
                            Age
                        </label>

                        <input type="text"
                               name="age"
                               class="form-control form-control-lg bg-dark text-white border-secondary"
                               placeholder="Enter age">

                    </div>


                    <!-- SCHOLARSHIP -->
                    <div class="col-md-4">

                        <label class="form-label text-light">
                            Scholarship
                        </label>

                        <div class="input-group input-group-lg">

                            <input type="text"
                                   name="scholarship"
                                   class="form-control bg-dark text-white border-secondary"
                                   placeholder="Enter scholarship">

                            <span class="input-group-text bg-secondary text-white border-secondary">
                                AZN
                            </span>

                        </div>

                    </div>


                    <!-- UNIVERSITY -->
                    <div class="col-md-4">

                        <label class="form-label text-light">
                            University
                        </label>

                        <input type="text"
                               name="universityId"
                               class="form-control form-control-lg bg-dark text-white border-secondary"
                               placeholder="Enter university ID">

                    </div>

                </div>


                <!-- SUBMIT BUTTON -->
                <div class="d-flex justify-content-end mt-4">

                    <button type="submit"
                            class="btn btn-info btn-lg px-5 fw-semibold">

                        <i class="bi bi-person-plus-fill me-2"></i>
                        Add Student

                    </button>

                </div>

            </form>

        </div>

    </div>


    <!-- STUDENT LIST -->

    <%
        List<Student> list =
                (List<Student>) request.getAttribute("studentList");
    %>


    <div class="card bg-black border-secondary rounded-4 shadow-lg">

        <div class="card-body p-0">


            <!-- TABLE HEADER -->

            <div class="p-4 border-bottom border-secondary">

                <div class="d-flex justify-content-between align-items-center">

                    <div>

                        <h3 class="text-white mb-1">
                            Students
                        </h3>

                        <p class="text-secondary mb-0">
                            Registered students in the system
                        </p>

                    </div>


                    <span class="badge rounded-pill text-bg-info px-3 py-2">

                        <i class="bi bi-people-fill me-1"></i>

                        <%= list.size() %> Students

                    </span>

                </div>

            </div>


            <!-- TABLE -->

            <div class="table-responsive">

                <table class="table table-dark table-hover align-middle mb-0">

                    <thead>

                    <tr class="text-secondary">

                        <th class="ps-4 py-3">
                            ID
                        </th>

                        <th>
                            Name
                        </th>

                        <th>
                            Age
                        </th>

                        <th>
                            Scholarship
                        </th>

                        <th>
                            University
                        </th>

                    </tr>

                    </thead>


                    <tbody>

                    <% for (Student student : list) { %>

                    <tr>


                        <!-- ID -->

                        <td class="ps-4">

                            <span class="badge text-bg-secondary">
                                #<%= student.getId() %>
                            </span>

                        </td>


                        <!-- STUDENT -->

                        <td>

                            <div class="d-flex align-items-center">

                                <div class="bg-info text-dark rounded-circle
                                            d-flex align-items-center justify-content-center
                                            fw-bold me-3"
                                     style="width: 42px; height: 42px;">

                                    <%= student.getName()
                                            .substring(0, 1)
                                            .toUpperCase() %>

                                </div>


                                <div>

                                    <div class="text-white fw-semibold">

                                        <%= student.getName() %>
                                        <%= student.getSurname() %>

                                    </div>

                                    <small class="text-secondary">
                                        Student
                                    </small>

                                </div>

                            </div>

                        </td>


                        <!-- AGE -->

                        <td>

                            <span class="text-white">

                                <%= student.getAge() %>

                            </span>

                        </td>


                        <!-- SCHOLARSHIP -->

                        <td>

                            <span class="badge rounded-pill text-bg-success px-3 py-2">

                                <i class="bi bi-cash-stack me-1"></i>

                                <%= student.getScholarship() %> AZN

                            </span>

                        </td>


                        <!-- UNIVERSITY -->

                        <td>

                            <span class="text-info">

                                <i class="bi bi-building me-1"></i>

                                University #<%= student.getUniversityId() %>

                            </span>

                        </td>


                    </tr>

                    <% } %>

                    </tbody>

                </table>

            </div>

        </div>

    </div>


    <!-- FOOTER -->

    <div class="text-center mt-5">

        <p class="text-secondary small">

            <i class="bi bi-mortarboard-fill me-1"></i>

            Education Web
             <i class="bi bi-circle-fill me-2"
               style="font-size: 5px;"></i>
            Student Management System

        </p>

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>