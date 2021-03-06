package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncodingFilter
 */
@WebFilter("/*")
public class EncodingFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncodingFilter() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		//κ°?κΈ°μ ? ? ?Ό?΄??Όλ©? ?κΈ°μ μ½λ©, λͺ¨λ  ?λΈλ¦Ώ?? ?΄κ³³μ μ§??κ°??Ό?¨.
		request.setCharacterEncoding("utf-8");

		// pass the request along the filter chain
		//?λΈλ¦Ώ?Όλ‘? κ°?κΈ?
		long start = System.currentTimeMillis();
		chain.doFilter(request, response);	//μ§??°λ©? ? ?? ??¨
		long end = System.currentTimeMillis();
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
