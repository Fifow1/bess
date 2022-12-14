package bess.ham.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import bess.ham.infra.common.constants.Constants;



public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("sessSeq") != null) {

			/*
			 * if(request.getSession().getAttribute("sessAuthority") == "23") {
			 * 
			 * response.sendRedirect(Constants.URL_LOGINFORM);
			 * 
			 * } else if(request.getSession().getAttribute("sessAuthority") == "24") {
			 * 
			 * 
			 * }
			 */
			
			
		} else {
			response.sendRedirect(Constants.URL_LOGINFORM);
            return false;
		}
		return super.preHandle(request, response, handler);
	}

}
