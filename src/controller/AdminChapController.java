package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.ChapDao;
import dao.ComicDao;
import entity.Chap;

@Controller
@RequestMapping("admin")
public class AdminChapController {
	@Autowired
	private ComicDao comicDao;
	@Autowired
	private ChapDao chapDao;

	/* INDEX */
	@RequestMapping(value = "comic-{comic_id}/chap")
	public String index(ModelMap modelMap, @PathVariable(value = "comic_id") int comic_id) {
		modelMap.addAttribute("listChapByIdComic", chapDao.getListItems(comic_id));
		modelMap.addAttribute("comic", comicDao.getItemByID(comic_id));
		modelMap.addAttribute("title", "Admin | Comic Chap");
		return "admin.comic.chap";
	}

	/* ADD */
	@RequestMapping(value = "comic-{comic_id}/chap-add")
	public String showAdd(ModelMap modelMap, @PathVariable(value = "comic_id") int comic_id) {
		modelMap.addAttribute("comic", comicDao.getItemByID(comic_id));
		modelMap.addAttribute("title", "Admin | Add chap");
		return "admin.comic.chap.add";
	}

	@RequestMapping(value = "comic/chap-add", method = RequestMethod.POST)
	public String controlAdd(@ModelAttribute("chap") Chap chap, RedirectAttributes ra) {
		if (chapDao.checkChapNumForAdd(chap) > 0) {
			ra.addFlashAttribute("msg1", "This chap number was existed");
			ra.addFlashAttribute("chap", chap);
			return "redirect:/admin/comic-" + chap.getComic_id() + "/chap-add";
		}

		if (chapDao.addItem(chap) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-" + chap.getComic_id() + "/chap";
	}

	/* EDIT */
	@RequestMapping(value = "comic/chap-edit-{chap_id}")
	public String showEdit(ModelMap modelMap, @PathVariable(value = "chap_id") int chap_id) {
		modelMap.addAttribute("chap", chapDao.getItemByID(chap_id));
		modelMap.addAttribute("title", "Admin | Edit chap");
		return "admin.comic.chap.edit";
	}

	@RequestMapping(value = "comic/chap-edit", method = RequestMethod.POST)
	public String controlEdit(@ModelAttribute("chap") Chap chap, RedirectAttributes ra) {
		if (chapDao.checkChapNumForEdit(chap) > 0) {
			ra.addFlashAttribute("msg1", "This chap number was existed");
			ra.addFlashAttribute("chap", chap);
			return "redirect:/admin/comic/chap-edit-" + chap.getChap_id();
		}

		if (chapDao.editItem(chap) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-" + chap.getComic_id() + "/chap";
	}

	/* DELETE */
	@RequestMapping(value = "comic/chap-del-{chap_id}")
	public String controlDel(@PathVariable(value = "chap_id") int chap_id, RedirectAttributes ra) {
		int comic_id = chapDao.getItemByID(chap_id).getComic_id();
		if (chapDao.delItem(chap_id) > 0) {
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/comic-" + comic_id + "/chap";
	}
}
