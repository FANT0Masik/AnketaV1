package net.ukr.Fantomasik;

import org.jetbrains.annotations.NotNull;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
public class AnketaServlet extends HttpServlet {
    private static AtomicInteger male=new AtomicInteger(0);
    private static AtomicInteger female=new AtomicInteger(0);
    private static AtomicInteger likesCat=new AtomicInteger(0);
    private static AtomicInteger likesDog=new AtomicInteger(0);

    @Override
public void doPost( HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
        String name=request.getParameter("name");
        String surname=request.getParameter("surname");
        String gender=request.getParameter("gender");
        String pet=request.getParameter("pet");
        int age=Integer.parseInt(request.getParameter("age"));

        if(gender!=null&&gender.equals("male")){
            male.incrementAndGet();
        }
        if(gender!=null&&gender.equals("female")){
            female.incrementAndGet();
        }
        if(likesCat!=null&&pet.equals("likeCat")){
            likesCat.incrementAndGet();
        }
        if(likesDog!=null&&pet.equals("likeDog")){
            likesDog.incrementAndGet();
        }
        request.setAttribute("male",male);
        request.setAttribute("female",female);
        request.setAttribute("likeCat",likesCat);
        request.setAttribute("likeDog",likesDog);
        RequestDispatcher ans =
                getServletContext().getRequestDispatcher("/stat.jsp");
        ans.forward(request, response);
    }

}
