package it.unitn.progweb.filters;

import it.unitn.progweb.model.User;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "Filter", urlPatterns = {"/*"})
public class UserSessionFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        User u = (User) request.getSession(true).getAttribute("user");
        if(u == null){
            request.getSession(true).setAttribute("user", new User());
        } else {
            Sql2o db = (Sql2o) request.getServletContext().getAttribute("database");
            try(Connection c = db.open()) {
                u = c.createQuery("select uid, is_admin, credit, username, password, email from \"user\" where uid=:id")
                        .bind(u)
                        .addColumnMapping("uid", "id")
                        .executeAndFetchFirst(User.class);
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user", u);
            }
            if(u == null) {
                request.getSession(true).setAttribute("user", new User());
            }
        }
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
