package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDao;
import entity.User;
import util.StringUtil;

@Controller
public class PublicLoginController {
	@Autowired
	private UserDao userDao;
	@Autowired
	private StringUtil stringUtil;

	/* LOGIN PUBLIC */
	@RequestMapping(value = "public/login")
	public String login(ModelMap modelMap, HttpSession session) {
		if (session.getAttribute("user") != null) {
			return "redirect:/";
		}
		modelMap.addAttribute("title", "Người dùng đăng nhập");
		return "public.login";
	}

	@RequestMapping(value = "public/login", method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "user") User user, HttpSession session) {
		user.setPassword(stringUtil.md5(user.getPassword()));
		if (userDao.checkLogin(user) > 0) {
			session.setAttribute("user", userDao.getItemByUsername(user.getUsername()));
		}
		return "redirect:/";
	}

}
