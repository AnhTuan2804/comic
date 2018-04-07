package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("login")
public class AdminLoginController {

	// ---------INDEX---------
	@RequestMapping(value = "")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Login");
		return "auth.login";
	}

}
