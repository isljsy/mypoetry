package servlet;

import entity.Page;
import entity.Poetry;
import entity.Type;
import service.AuthorService;
import service.DynastyService;
import service.PoetryService;
import service.TypeService;
import service.impl.AuthorServiceImpl;
import service.impl.PoetryServiceImpl;
import service.impl.TypeServiceImpl;
import util.RequestUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 展示搜索框查询的结果
 * @author ljsy
 **/
@WebServlet("/type")
public class TypeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PoetryService poetryService = new PoetryServiceImpl();
        AuthorService authorService = new AuthorServiceImpl();
        TypeService typeService = new TypeServiceImpl();

        int typeId = RequestUtil.getIntParameter(request,"type");
        int pageNo = RequestUtil.getIntParameter(request, "page");

        Page page = new Page(pageNo,15,poetryService.countByType(typeId));

        List<Type> typeList = typeService.findAll() ;


        if(typeId>0){
            Type type = typeService.findById(typeId);
            List<Poetry> poetryList = poetryService.findByType(typeId, page);
            request.setAttribute("type",type);
            request.setAttribute("poetryList",poetryList);
        }

        request.setAttribute("typeList",typeList);
        request.getRequestDispatcher("/pages/type.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
