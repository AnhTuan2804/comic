package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminErrorController {

	// ---------INDEX---------
	@RequestMapping(value = "error/404")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Page Not Found");
		return "admin.pagenotfound";
	}
}
