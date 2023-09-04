package com.kekee.web;

//import com.kekee.WebApplicationContextUtils;
import com.kekee.service.AccountService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/accountServlet")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // web层调用service层,获得AccountService,accountService存在applicationContext中
//        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        ApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(req.getServletContext());
        AccountService accountService = applicationContext.getBean(AccountService.class);
        accountService.transferMoney("tom", "lucy", 50);

    }

}
