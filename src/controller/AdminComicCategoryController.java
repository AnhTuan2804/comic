package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.CategoryDao;
import dao.ComicCategoryDao;
import dao.ComicDao;
import entity.Category;
import entity.Comic_Cat;

@Controller
@RequestMapping("admin")
public class AdminComicCategoryController {
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ComicCategoryDao comicCategoryDao;
	@Autowired
	private ComicDao comicDao;

	/* INDEX */
	@RequestMapping(value = "comic-category")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | List comic category");
		modelMap.addAttribute("listComicCategory", comicCategoryDao.getListItems());
		return "admin.comic.category";
	}

	/* ADD */
	@RequestMapping(value = "comic-category-add")
	public String showAdd(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Add comic category");
		modelMap.addAttribute("listCategory", categoryDao.getListItems());
		modelMap.addAttribute("listComic", comicDao.getListItems());
		return "admin.comic.category.add";
	}

	@RequestMapping(value = "comic-category-add", method = RequestMethod.POST)
	public String ctrlAdd(@ModelAttribute("comicCategory") Comic_Cat comicCategory, RedirectAttributes ra) {
		if (comicCategoryDao.checkComicCategoryForAdd(comicCategory) > 0) {
			ra.addFlashAttribute("comicCategory", comicCategory);
			ra.addFlashAttribute("msg1", "This comic category is already exist");
			return "redirect:/admin/comic-category-add";
		}
		if (comicCategoryDao.addItem(comicCategory) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-category";
	}

	/* EDIT */
	@RequestMapping(value = "comic-category-edit/{id}")
	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Edit comic category");
		modelMap.addAttribute("comicCategory", comicCategoryDao.getItem(id));
		modelMap.addAttribute("listCategory", categoryDao.getListItems());
		modelMap.addAttribute("listComic", comicDao.getListItems());
		return "admin.comic.category.edit";
	}

	@RequestMapping(value = "comic-category-edit", method = RequestMethod.POST)
	public String ctrlEdit(@ModelAttribute("comicCategory") Comic_Cat comicCategory, RedirectAttributes ra) {
		if (comicCategoryDao.checkComicCategoryForEdit(comicCategory) > 0) {
			ra.addFlashAttribute("comicCategory", comicCategory);
			ra.addFlashAttribute("msg1", "This comic category is already exist");
			return "redirect:/admin/comic-category-edit/" + comicCategory.getId();
		}
		if (comicCategoryDao.editItem(comicCategory) > 0) {
			ra.addFlashAttribute("msg", "EDIT SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-category";
	}

	/* DELETE */
	@RequestMapping(value = "comic-category-del/{id}")
	public String ctrlDel(@PathVariable(value = "id") int id, RedirectAttributes ra) {
		if (comicCategoryDao.delItem(id) > 0) {
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/comic-category";
	}
}
