package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.ChapDao;
import dao.ComicDao;
import dao.ImageDao;
import entity.Chap;
import entity.Comic;
import entity.Image;
import entity.User;
import util.FilenameUtil;

@Controller
@RequestMapping("admin")
public class AdminComicController {
	@Autowired
	private ComicDao comicDao;
	@Autowired
	private ChapDao chapDao;
	@Autowired
	private ImageDao imageDao;
	@Autowired
	private FilenameUtil filenameUtil;

	/* INDEX */
	@RequestMapping(value = "comic")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Comic");
		modelMap.addAttribute("listComic", comicDao.getListItems());
		return "admin.comic";
	}

	/* ADD */
	@RequestMapping(value = "comic-add")
	public String showAdd(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Add comic");
		return "admin.comic.add";
	}

	@RequestMapping(value = "comic-add", method = RequestMethod.POST)
	public String controlAdd(@ModelAttribute("comic") Comic comic,
			@RequestParam(value = "image") CommonsMultipartFile image, RedirectAttributes ra,
			HttpServletRequest request, HttpSession session) {
		if (comicDao.checkNameForAdd(comic.getComic_name()) > 0) {
			ra.addFlashAttribute("msg1", "This name was existed");
			ra.addFlashAttribute("comic", comic);
			return "redirect:/admin/comic-add";
		}
		if (!image.getOriginalFilename().isEmpty()) {
			String realPath = request.getServletContext().getRealPath("files");
			File dirPath = new File(realPath);
			if (!dirPath.exists()) {
				dirPath.mkdir();
			}
			String filePath = realPath + File.separator + filenameUtil.renameFile(image.getOriginalFilename());
			try {
				image.transferTo(new File(filePath));
			} catch (IllegalStateException | IOException e) {
				System.out.println("Error while upload picture");
			}
		}

		User userInfo = (User) session.getAttribute("userInfo");
		comic.setUser_id(userInfo.getUser_id());
		comic.setPicture(image.getOriginalFilename());
		if (comicDao.addItem(comic) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic";
	}

	/* EDIT */
	@RequestMapping(value = "comic-edit/{id}")
	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap) {
		modelMap.addAttribute("comic", comicDao.getItemByID(id));
		modelMap.addAttribute("title", "Admin | Edit comic");
		return "admin.comic.edit";
	}

	@RequestMapping(value = "comic-edit", method = RequestMethod.POST)
	public String controlEdit(@ModelAttribute("comic") Comic comic,
			@RequestParam(value = "image") CommonsMultipartFile image, HttpServletRequest request,
			RedirectAttributes ra) {
		if (comicDao.checkNameForEdit(comic) > 0) {
			ra.addFlashAttribute("msg1", "This name was existed");
			ra.addFlashAttribute("comic", comic);
			return "redirect:/admin/comic-edit/" + comic.getComic_id();
		}
		Comic objComic = comicDao.getItemByID(comic.getComic_id());
		if (image.getOriginalFilename().isEmpty()) {
			comic.setPicture(objComic.getPicture());
		} else {
			String realPath = request.getServletContext().getRealPath("files");
			File dirPath = new File(realPath);
			if (!dirPath.exists()) {
				dirPath.mkdir();
			}
			String delFile = realPath + File.separator + objComic.getPicture();
			File delFilepath = new File(delFile);
			if (delFilepath.exists()) {
				delFilepath.delete();
			}
			String filename = filenameUtil.renameFile(image.getOriginalFilename());
			String filePath = realPath + File.separator + filename;
			try {
				image.transferTo(new File(filePath));
			} catch (IllegalStateException | IOException e) {
				System.out.println("Error while upload picture");
			}
			comic.setPicture(filename);
		}
		if (comicDao.editItem(comic) > 0) {
			ra.addFlashAttribute("msg", "EDIT SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE EDIT");
		}
		return "redirect:/admin/comic";
	}

	/* DELETE */
	@RequestMapping(value = "comic-del/{id}")
	public String controlDel(@PathVariable(value = "id") int id, HttpServletRequest request, RedirectAttributes ra) {
		String realPath = request.getServletContext().getRealPath("files");
		File dirPath = new File(realPath);
		if (!dirPath.exists()) {
			dirPath.mkdir();
		}
		String filepath = realPath + File.separator + filenameUtil.renameFile(comicDao.getItemByID(id).getPicture());
		File delFilepath = new File(filepath);
		if (delFilepath.exists()) {
			delFilepath.delete();
		}
		List<Chap> listChapByIDComic = chapDao.getListItems(id);
		ArrayList<Image> listImageByIDChap;
		if (comicDao.delItem(id) > 0) {
			for (Chap chap : listChapByIDComic) {
				listImageByIDChap = (ArrayList<Image>) imageDao.getItemsByIDChap(chap.getChap_id());
				for (Image image : listImageByIDChap) {
					filepath = realPath + File.separator + image.getImg_name();
					delFilepath = new File(filepath);
					if (delFilepath.exists()) {
						delFilepath.delete();
					}
					imageDao.delItem(image.getImg_id());
				}
				chapDao.delItem(chap.getChap_id());
			}
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/comic";
	}
}
