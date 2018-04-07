package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ComicDao;
import util.SlugUtil;

@Controller
public class PublicController {
	@Autowired
	private ComicDao comicDao;
	@Autowired
	SlugUtil slugUtil;

	@ModelAttribute
	public void addCommon(ModelMap modelMap) {
		modelMap.addAttribute("listMostViewed", comicDao.getListMostView());
		modelMap.addAttribute("slugUtil", slugUtil);
	}

	/* INDEX */
	@RequestMapping(value = "")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Welcome to Web Commic online");
		return "public.index";
	}

}
