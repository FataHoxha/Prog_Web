package it.unitn.progweb.filters;

import it.unitn.progweb.model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;


@WebFilter(filterName = "AdminFilter", urlPatterns = {"/adminarea", "/deletereservation"})
public class AdminFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        User u = (User) request.getSession().getAttribute("user");

        if (u.isAuthenticated()) {
            if (u.getIs_admin()) {
                chain.doFilter(req, resp);
                return;
            }
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
            return;
        }

        String url = request.getServletPath() + "?" + request.getQueryString();
        response.sendRedirect("/login?next=" + URLEncoder.encode(url, "UTF-8"));
    }

    public void init(FilterConfig config) throws ServletException {

    }
}
