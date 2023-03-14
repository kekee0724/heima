package cn.bipark.reco.servlet;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebFilter(filterName = "RecoFilter")
public class RecoFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        System.out.println("RecoFilter init...");
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        System.out.println("RecoFilter doFilter before...");
        chain.doFilter(request, response);
        System.out.println("RecoFilter doFilter after...");
    }
}
