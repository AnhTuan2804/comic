package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.AuthorDao;
import entity.Author;
import entity.Category;

@Controller
@RequestMapping("admin")
public class AdminAuthorController {
	@Autowired
	private AuthorDao authorDao;

	// ---------INDEX---------
	@RequestMapping(value = "author")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Author");
		modelMap.addAttribute("listAuthor", authorDao.getListItems());
		return "admin.author";
	}

	// ---------ADD---------
	@RequestMapping(value = "author-add")
	public String showAdd(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Add Author");
		return "admin.author.add";
	}

	@RequestMapping(value = "author-add", method = RequestMethod.POST)
	public String controlAdd(@ModelAttribute("author") Author author, RedirectAttributes ra) {
		if (authorDao.addItem(author) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/author";
	}

	// ---------EDIT---------
	@RequestMapping(value = "author-edit/{id}")
	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap) {
		if (authorDao.getItem(id) != null) {
			modelMap.addAttribute("author", authorDao.getItem(id));
			modelMap.addAttribute("title", "Admin | Edit Author");
			return "admin.author.edit";
		} else {
			return "redirect:/admin/author";
		}

	}

	@RequestMapping(value = "author-edit", method = RequestMethod.POST)
	public String controlEdit(@ModelAttribute("author") Author author, RedirectAttributes ra) {
		if (authorDao.editItem(author) > 0) {
			ra.addFlashAttribute("msg", "EDIT SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE EDIT");
		}
		return "redirect:/admin/author";
	}

	// ---------DELETE---------
	@RequestMapping(value = "author-del/{id}")
	public String controlDel(@PathVariable(value = "id") int id, RedirectAttributes ra) {
		if (authorDao.delItem(id) > 0) {
			ra.addFlashAttribute("msg", "DELETED 1 ITEM");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/author";
	}
}
