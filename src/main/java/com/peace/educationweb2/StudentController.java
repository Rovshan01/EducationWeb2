package com.peace.educationweb2;

import java.io.*;
import java.math.BigDecimal;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/student-education")
public class StudentController extends HttpServlet {

    private final StudentRepository repository = new StudentRepository();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Student> list = repository.getList();

        request.setAttribute("studentList", list);

        request.getRequestDispatcher("/students.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if ("logout".equalsIgnoreCase(action)) {
            request.getSession().invalidate();
            response.sendRedirect("login.jsp");
        } else if ("delete".equalsIgnoreCase(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            repository.delete(id);
            response.sendRedirect("student-education");

        } else if ("login".equalsIgnoreCase(action)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username.equals("admin") && password.equalsIgnoreCase("admin")) {
                request.getSession().setAttribute("LoggedInUser", username);
                response.sendRedirect("student-education");
            }
        } else {
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            Integer age = Integer.parseInt(request.getParameter("age"));
            BigDecimal scholarship = new BigDecimal(request.getParameter("scholarship"));
            Integer universityId = Integer.parseInt(request.getParameter("universityId"));

            Student student = new Student(null, name, surname, age, scholarship, universityId);

            repository.insert(student);

            response.sendRedirect("student-education");
        }
    }
}