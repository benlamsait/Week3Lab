/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ben Lam
 */
public class AgeCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
       
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String currentage = request.getParameter("current_age");
        String message;
        if (currentage.equals("") || currentage == null) {
            message = "You must give your current age.";
        } else {
            try {
                int age = Integer.parseInt(currentage) + 1;
                message = String.format("Your age next birthday will be "  + age + ".");
            } catch (NumberFormatException e) {
                message = "You must enter a number.";
            }
        }
        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
    }
}
