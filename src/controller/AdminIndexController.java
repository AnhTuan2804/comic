package controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.UserDao;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	@Autowired
	private UserDao userDao;

	// ---------INDEX---------
	@RequestMapping(value = "")
	public String index(ModelMap modelMap, Principal principal, HttpSession session) {
		String username = principal.getName();
		session.setAttribute("userInfo", userDao.getItemByUsername(username));
		modelMap.addAttribute("title", "Admin");
		return "admin.index";
	}
}
