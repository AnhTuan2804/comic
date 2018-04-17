package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.ChapDao;
import dao.ComicDao;
import dao.ImageDao;
import entity.Chap;
import entity.Image;
import util.FilenameUtil;

@Controller
@RequestMapping("admin")
public class AdminChapController {
	@Autowired
	private ComicDao comicDao;
	@Autowired
	private ChapDao chapDao;
	@Autowired
	private FilenameUtil filenameUtil;
	@Autowired
	private ImageDao imageDao;

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
	public String controlAdd(@ModelAttribute("chap") Chap chap,
			@RequestParam(value = "image") CommonsMultipartFile[] images,
			@RequestParam(value = "comic_id") int comic_id, HttpServletRequest request, RedirectAttributes ra) {
		chap.setChap_num(chapDao.getItemLastChap(comic_id).getChap_num() + 1);
		if (chapDao.addItem(chap) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
			String appPath = request.getServletContext().getRealPath("files");
			File dirPath = new File(appPath);
			if (!dirPath.exists()) {
				dirPath.mkdir();
			}
			String filename = "";
			String filePath = "";
			Image img = new Image(0, "", chap.getChap_id());
			for (CommonsMultipartFile image : images) {
				filename = filenameUtil.renameFile(image.getOriginalFilename());
				filePath = appPath + File.separator + filename;
				try {
					image.transferTo(new File(filePath));
					img.setImg_name(filename);
					imageDao.addItem(img);
				} catch (IllegalStateException | IOException e) {
					System.out.println("Lổi mạng khi upoad ảnh");
				}
			}

		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/comic-" + chap.getComic_id() + "/chap";
	}

	/* EDIT */
	@RequestMapping(value = "comic/chap-edit-{chap_id}")
	public String showEdit(ModelMap modelMap, @PathVariable(value = "chap_id") int chap_id) {
		modelMap.addAttribute("chap", chapDao.getItemByID(chap_id));
		modelMap.addAttribute("listImageByIDChap", imageDao.getItemsByIDChap(chap_id));
		modelMap.addAttribute("title", "Admin | Edit chap");
		return "admin.comic.chap.edit";
	}

	@RequestMapping(value = "comic/chap-edit", method = RequestMethod.POST)
	public String controlEdit(@ModelAttribute(value = "chap") Chap chap,
			@RequestParam(value = "image") CommonsMultipartFile[] images, HttpServletRequest request) {

		String appPath = request.getServletContext().getRealPath("files");
		File dirPath = new File(appPath);
		if (!dirPath.exists()) {
			dirPath.mkdir();
		}
		String filename = "";
		String filePath = "";
		Image img = new Image(0, "", chap.getChap_id());
		for (CommonsMultipartFile image : images) {
			filename = filenameUtil.renameFile(image.getOriginalFilename());
			filePath = appPath + File.separator + filename;
			try {
				image.transferTo(new File(filePath));
				img.setImg_name(filename);
				imageDao.addItem(img);
			} catch (IllegalStateException | IOException e) {
				System.out.println("Lổi mạng khi upoad ảnh");
			}
		}

		return "redirect:/admin/comic/chap-edit-" + chap.getChap_id();
	}

	/* DELETE */
	@RequestMapping(value = "comic/chap-del-{chap_id}")
	public String controlDel(@PathVariable(value = "chap_id") int chap_id, RedirectAttributes ra) {
		Chap chap = chapDao.getItemByID(chap_id);
		if (chapDao.getItemByChapNum(chap) > 0) {
			ra.addFlashAttribute("msg1", "Can't delete this chap. Delete chap has number > this chap number");
			return "redirect:/admin/comic-" + chap.getComic_id() + "/chap";
		}
		if (chapDao.delItem(chap_id) > 0) {
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/comic-" + chap.getComic_id() + "/chap";
	}

	@SuppressWarnings("static-access")
	@ResponseBody
	@RequestMapping(value = "comic/chap-{chap_id}/del-img-{img_id}", method = RequestMethod.POST)
	public String editCtrl(@PathVariable(value = "chap_id") int chap_id, @PathVariable(value = "img_id") int img_id,
			HttpServletRequest request) {
		Image objImage = imageDao.getItem(img_id);

		// real path
		String appPath = request.getServletContext().getRealPath("files");
		String delfile = appPath + File.separator + objImage.getImg_name();
		// delete file if exit
		File delPath = new File(delfile);
		if (delPath.exists()) {
			delPath.delete();
		}
		StringBuffer data = new StringBuffer("");
		// del image
		if (imageDao.delItem(img_id) > 0) {
			ArrayList<Image> listImage = (ArrayList<Image>) imageDao.getItemsByIDChap(chap_id);
			for (Image image : listImage) {
				if (listImage.indexOf(image) % 2 == 0) {
					data.append("<div class=\"col-md-12 row listImage\">");
				}
				data.append("<div class=\"col-md-6\">" + "				                        <div class=\"card\">"
						+ "				                            <div class=\"card-body\">"
						+ "												<a onclick=\"return delImage("
						+ image.getImg_id() + "," + image.getChap_id() + ")\" href=\"javascript:void(0)\">"
						+ "													<small><span class=\"badge badge-danger float-right mt-1\"><i class = \"fa fa-remove\"></i></span></small>"
						+ "												</a>"
						+ "				                                <img style=\"width: 390px; height: 260px;\" class=\"card-img-top\" src=\""
						+ request.getContextPath() + "/files/" + image.getImg_name() + "\" alt=\"" + image.getImg_name()
						+ "\">" + "				                            </div>"
						+ "				                        </div>" + "				                    </div>");
				if (listImage.indexOf(image) % 2 == 1 || listImage.indexOf(image) == (listImage.size() - 1)) {
					data.append("</div>");
				}
			}

		} else {
			data.append("ERROR");
		}

		return data.toString();
	}

}
