package com.kwon.ajax;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	@Autowired
	private DAO dao;

	@RequestMapping(value = "/menu.search.name", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	public @ResponseBody Menus msn(Menu m, HttpServletRequest req, HttpServletResponse res) {
		return dao.sMenuByName(m, req, res);
	}

	// http://localhost/ajax/menu.search.price?m_price=5000
	@RequestMapping(value = "/menu.search.price", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	public @ResponseBody Menus msp(Menu m, HttpServletRequest req, HttpServletResponse res) {
		return dao.sMenuByPrice(m, req, res);
	}

	@RequestMapping(value = "/menu.get", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	public @ResponseBody Menus menuGet(HttpServletRequest req, HttpServletResponse res) {
		return dao.getAllMenu(req, res);
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, HttpServletResponse res) {
		return "index";
	}

	@RequestMapping(value = "/student.getAll", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody Students sGA(HttpServletRequest req, HttpServletResponse res) {
		return dao.getAllStudent(req, res);
	}
	
	@RequestMapping(value = "/student.getAllJSONP", 
			method = RequestMethod.GET, 
			produces = "application/json; charset=utf-8")
	public @ResponseBody String sGAP(HttpServletRequest req, HttpServletResponse res) {
		try {
			String cb = req.getParameter("callback");
			Students ss = dao.getAllStudent(req, res);
			
			// java객체를 json으로 바꿔줄 객체
			ObjectMapper om = new ObjectMapper();
			
			String resBody = cb + "(" 
					+ new String(om.writeValueAsString(ss)) 
					+ ")";
			return resBody;
		} catch (Exception e) {
			return null;
		}
	}
	// JSONP(JSON with Padding)
	//		서버쪽에서 설정
	//		응답내용 : JSON -> 응답내용 : JavaScript함수
	//		파라메터 하나 지정(callback)
	// ㅁㅁㅁㅁ(????)
}






















