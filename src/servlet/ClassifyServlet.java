package servlet;

import entity.Author;
import entity.Page;
import entity.Type;
import service.AuthorService;
import service.DynastyService;
import service.TypeService;
import service.impl.AuthorServiceImpl;
import service.impl.DynastyServiceImpl;
import service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 当选中不同朝代时, 更新作者; 当选中不同作者时, 更新类型
 * 展示所有朝代, 作者, 类型
 * @author ljsy
 **/
@WebServlet("/classify")
public class ClassifyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DynastyService dynastyService = new DynastyServiceImpl();
        AuthorService authorService = new AuthorServiceImpl();
        TypeService typeService = new TypeServiceImpl();

        // 选中的朝代
        int dynastyId = Integer.parseInt(request.getParameter("dynastyId"));
        // 选中的作者
        int authorId = Integer.parseInt(request.getParameter("authorId"));
        // 当前作者页数
        int authorPageNo = Integer.parseInt(request.getParameter("authorPageNo"));
        // 当前类型页数
        int typePageNo = Integer.parseInt(request.getParameter("typePageNo"));

        // 作者页数
        Page authorPage = new Page(authorPageNo,20,authorService.pinyinAuthorCount(""));
        // 类型页数
        Page typePage = new Page(typePageNo,20,typeService.typeForAuthorCount(authorId));
        // 展示的作者
        List<Author> authorList = authorService.findAuthorByDynasty(dynastyId,authorPage);
        // 展示的类型
        List<Type> typesList = typeService.findByAuthor(authorId,typePage);

        // 设置到请求
        request.setAttribute("authorId",authorId);
        request.setAttribute("dynastyId",dynastyId);
        request.setAttribute("authorPageNo",authorPageNo);
        request.setAttribute("typePageNo",typePageNo);
        request.setAttribute("authorList",authorList);
        request.setAttribute("typeList",typesList);

        // 转发到分类页面
        request.getRequestDispatcher("classify.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
