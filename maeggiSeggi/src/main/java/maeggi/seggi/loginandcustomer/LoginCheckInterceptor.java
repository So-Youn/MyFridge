package maeggi.seggi.loginandcustomer;

import javax.servlet.http.HttpServletRequest;//
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession ses = request.getSession(false);
		if(ses!=null) {
			memberVO loginuser = (memberVO)ses.getAttribute("loginuser");
			if(loginuser==null) {
				response.sendRedirect("/maeggiSeggi/loginandcustomer/login.do");
				return false;
			}
		}
		return true;
	}
	
	
}
