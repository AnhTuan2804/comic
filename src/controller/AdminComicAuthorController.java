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
import dao.ComicAuthorDao;
import dao.ComicDao;
import entity.Comic_Author;

@Controller
@RequestMapping("admin")
public class AdminComicAuthorController {
	@Autowired
	private ComicDao comicDao;
	@Autowired
	private ComicAuthorDao comicAuthorDao;
	@Autowired
	private AuthorDao authorDao;

	/* INDEX */
	@RequestMapping(value = "comic-author")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | List comic author");
		modelMap.addAttribute("listComicAuthor", comicAuthorDao.getListItems());
		return "admin.comic.author";
	}

	/* ADD */
	@RequestMapping(value = "comic-author-add")
	public String showAdd(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Add comic author");
		modelMap.addAttribute("listAuthor", authorDao.getListItems());
		modelMap.addAttribute("listComic", comicDao.getListItems());
		return "admin.comic.author.add";
	}

	@RequestMapping(value = "comic-author-add", method = RequestMethod.POST)
	public String ctrlAdd(@ModelAttribute("comicAuthor") Comic_Author comicAuthor, RedirectAttributes ra) {
		if (comicAuthorDao.checkComicAuthorForAdd(comicAuthor) > 0) {
			ra.addFlashAttribute("comicAuthor", comicAuthor);
			ra.addFlashAttribute("msg1", "This comic author is already exist");
			return "redirect:/admin/comic-author-add";
		}
		if (comicAuthorDao.addItem(comicAuthor) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-author";
	}

	/* EDIT */
	@RequestMapping(value = "comic-author-edit/{id}")
	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Edit comic author");
		modelMap.addAttribute("comicAuthor", comicAuthorDao.getItem(id));
		modelMap.addAttribute("listAuthor", authorDao.getListItems());
		modelMap.addAttribute("listComic", comicDao.getListItems());
		return "admin.comic.author.edit";
	}

	@RequestMapping(value = "comic-author-edit", method = RequestMethod.POST)
	public String ctrlEdit(@ModelAttribute("comicAuthor") Comic_Author comicAuthor, RedirectAttributes ra) {
		if (comicAuthorDao.checkComicAuthorForEdit(comicAuthor) > 0) {
			ra.addFlashAttribute("comicAuthor", comicAuthor);
			ra.addFlashAttribute("msg1", "This comic author is already exist");
			return "redirect:/admin/comic-author-edit/" + comicAuthor.getId();
		}
		if (comicAuthorDao.editItem(comicAuthor) > 0) {
			ra.addFlashAttribute("msg", "EDIT SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-author";
	}

	/* DELETE */
	@RequestMapping(value = "comic-author-del/{id}")
	public String ctrlDel(@PathVariable(value = "id") int id, RedirectAttributes ra) {
		if (comicAuthorDao.delItem(id) > 0) {
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/comic-author";
	}
}
