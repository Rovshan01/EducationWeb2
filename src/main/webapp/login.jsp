<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>Education Web - Login</title>

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

    </div>

</nav>


<!-- LOGIN SECTION -->
<div class="container">

    <div class="row justify-content-center align-items-center"
         style="min-height: 85vh;">

        <div class="col-12 col-sm-10 col-md-7 col-lg-5 col-xl-4">


            <!-- LOGIN CARD -->
            <div class="card bg-black border-secondary rounded-4 shadow-lg">

                <div class="card-body p-4 p-lg-5">


                    <!-- ICON -->
                    <div class="text-center mb-4">

                        <div class="bg-info text-dark rounded-circle
                                    d-inline-flex align-items-center
                                    justify-content-center"
                             style="width: 70px; height: 70px;">

                            <i class="bi bi-person-lock fs-2"></i>

                        </div>

                    </div>


                    <!-- TITLE -->
                    <div class="text-center mb-4">

                        <h2 class="text-white fw-bold">
                            Welcome Back
                        </h2>

                        <p class="text-secondary mb-0">
                            Sign in to your Education Web account
                        </p>

                    </div>


                    <!-- LOGIN FORM -->
                    <form action="student-education" method="POST">


                        <!-- USERNAME -->
                        <div class="mb-4">

                            <label class="form-label text-light">
                                Username
                            </label>

                            <div class="input-group input-group-lg">

                                <span class="input-group-text bg-dark
                                             text-info border-secondary">

                                    <i class="bi bi-person"></i>

                                </span>

                                <input type="text"
                                       name="username"
                                       class="form-control bg-dark text-white border-secondary"
                                       placeholder="Enter username"
                                       required>

                            </div>

                        </div>


                        <!-- PASSWORD -->
                        <div class="mb-4">

                            <label class="form-label text-light">
                                Password
                            </label>

                            <div class="input-group input-group-lg">

                                <span class="input-group-text bg-dark
                                             text-info border-secondary">

                                    <i class="bi bi-lock"></i>

                                </span>

                                <input type="password"
                                       name="password"
                                       class="form-control bg-dark text-white border-secondary"
                                       placeholder="Enter password"
                                       required>

                            </div>

                        </div>


                        <!-- ACTION -->
                        <input type="hidden"
                               name="action"
                               value="login">


                        <!-- LOGIN BUTTON -->
                        <div class="d-grid">

                            <button type="submit"
                                    class="btn btn-info btn-lg fw-semibold">

                                <i class="bi bi-box-arrow-in-right me-2"></i>

                                Login

                            </button>

                        </div>

                    </form>

                </div>

            </div>


            <!-- FOOTER -->
            <div class="text-center mt-4">

                <p class="text-secondary small">

                    <i class="bi bi-mortarboard-fill me-1"></i>

                    Education Web • Student Management System

                </p>

            </div>


        </div>

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>