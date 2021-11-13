package servlet;

import entity.Author;
import entity.Dynasty;
import entity.Page;
import service.AuthorService;
import service.DynastyService;
import service.impl.AuthorServiceImpl;
import service.impl.DynastyServiceImpl;
import util.RequestUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 当选中不同朝代时, 更新作者; 当选中不同作者时, 更新类型
 * 展示所有朝代, 作者
 * 需要朝代id, pinyin, 作者页数
 * @author ljsy
 **/
@WebServlet("/author")
public class AuthorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DynastyService dynastyService = new DynastyServiceImpl();
        AuthorService authorService = new AuthorServiceImpl();

        // 选中的朝代
        int dynastyId = RequestUtil.getIntParameter(request,"dynasty");
        // 选中的拼音
        String pinyin = request.getParameter("pinyin");
        // 当前作者页数
        int authorPageNo = RequestUtil.getIntParameter(request,"authorPageNo");

        // 作者页数对象
        Page authorPage = new Page(authorPageNo,20,authorService.pinyinAuthorCount(""));

        // 所有朝代
        List<Dynasty> dynastyList = dynastyService.findAll();
        // 展示的作者列表
        List<Author> authorList = authorService.findAuthorByDynastyAndPinyin(dynastyId,pinyin,authorPage);


        // 设置到请求
        request.setAttribute("dynastyId",dynastyId);
        request.setAttribute("pinyin",pinyin);
        request.setAttribute("authorPageNo",authorPageNo);
        request.setAttribute("authorList",authorList);

        // 转发到分类页面
        request.getRequestDispatcher("/pages/author.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
