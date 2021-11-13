package servlet;

import entity.Poetry;
import service.AuthorService;
import service.DynastyService;
import service.PoetryService;
import service.TypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 展示搜索框查询的结果
 * @author ljsy
 **/
@WebServlet("/type")
public class TypeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PoetryService poetryService ;
        AuthorService authorService;

        request.getRequestDispatcher("/pages/type.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
