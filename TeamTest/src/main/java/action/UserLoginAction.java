package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

public class UserLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		String u_id =request.getParameter("u_id");
		String u_password =request.getParameter("u_password");
		
		String remember =request.getParameter("remember");//아이디 저장 체크 여부를 확인->쿠키객체 생성여부에 사용함
		
		
		
		
		return forward;
	}

}
