package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
import org.springframework.web.bind.annotation.ResponseBody;

import dao.CategoryDao;
import dao.ChapDao;
import dao.ComicCategoryDao;
import dao.ComicDao;
import dao.CommentDao;
import dao.ImageDao;
import entity.Comic;
import entity.Comment;
import entity.User;
import util.SlugUtil;

@Controller
public class PublicController {
	@Autowired
	private ComicDao comicDao;
	@Autowired
	private ChapDao chapDao;
	@Autowired
	private ImageDao imageDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ComicCategoryDao comicCategoryDao;
	@Autowired
	SlugUtil slugUtil;
	@Autowired
	private CommentDao commentDao;
	private int ROW_COUNT = 8;

	@ModelAttribute
	public void addCommon(ModelMap modelMap) {
		modelMap.addAttribute("listMostViewed", comicDao.getListMostView());
		modelMap.addAttribute("slugUtil", slugUtil);
		modelMap.addAttribute("listCategory", categoryDao.getListItems());
	}

	/* INDEX */
	@RequestMapping(value = { "", "page-{page}" })
	public String index(ModelMap modelMap, @PathVariable(value = "page", required = false) Integer page) {
		modelMap.addAttribute("title", "Welcome to Web Commic online");
		modelMap.addAttribute("listHostComicUpdate", comicDao.getListHotComicUpdate());
		int sumComic = comicDao.coutComicLastUpdate();
		int sumPage = (int) Math.ceil((float) sumComic / ROW_COUNT);
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}
		int offset = (currentPage - 1) * ROW_COUNT;
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("currentPage", currentPage);
		modelMap.addAttribute("listLastComicUpdate", comicDao.getListLastComicUpdate(offset, ROW_COUNT));

		return "public.index";
	}

	/* CATEGORY */
	@RequestMapping(value = { "category/{cat_name}/{cat_id}", "category/{cat_name}/{cat_id}/page-{page}" })
	public String category(ModelMap modelMap, @PathVariable(value = "cat_id") int cat_id,
			@PathVariable(value = "page", required = false) Integer page) {
		int sumComic = comicDao.coutComicByIDCategory(cat_id);
		int sumPage = (int) Math.ceil((float) sumComic / ROW_COUNT);
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}
		int offset = (currentPage - 1) * ROW_COUNT;
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("currentPage", currentPage);
		modelMap.addAttribute("listComicByIDCat", comicDao.getListByIDCatPagination(cat_id, offset, ROW_COUNT));
		modelMap.addAttribute("category", categoryDao.getItem(cat_id));
		modelMap.addAttribute("title", "Category " + categoryDao.getItem(cat_id).getCat_name());
		return "public.category";
	}

	/* DETAIL COMIC */
	@RequestMapping(value = "detail/{nameComic}/{id_comic}")
	public String detailComic(ModelMap modelMap, @PathVariable(value = "id_comic") int id_comic) {
		modelMap.addAttribute("comic", comicDao.getItemByID(id_comic));
		Comic objComic = comicDao.getItemByID(id_comic);
		objComic.setComic_view(objComic.getComic_view() + 1);
		comicDao.updateComicView(objComic);
		modelMap.addAttribute("listChapByComic", chapDao.getListItems(id_comic));
		modelMap.addAttribute("title", "Detail of comic " + comicDao.getItemByID(id_comic).getComic_name());
		return "public.detail";
	}

	/* DETAIL CHAP */
	@RequestMapping(value = "detail-chap/{nameComic}-{id_comic}/{chap_id}")
	public String detailChap(ModelMap modelMap, @PathVariable(value = "id_comic") int id_comic,
			@PathVariable(value = "chap_id") int chap_id) {
		modelMap.addAttribute("comic", comicDao.getItemByID(id_comic));
		modelMap.addAttribute("objChap", chapDao.getItemByID(chap_id));
		modelMap.addAttribute("listImageByIDChap", imageDao.getItemsByIDChap(chap_id));
		modelMap.addAttribute("listChapByComic", chapDao.getListItems(id_comic));
		modelMap.addAttribute("title", "Detail of comic " + comicDao.getItemByID(id_comic).getComic_name());
		modelMap.addAttribute("listCommentByChap", commentDao.getListByIDChap(chap_id));
		return "public.detail";
	}

	/* SEARCH */
	@RequestMapping(value = { "search", "search-{page}/key-{key}" })
	public String search(ModelMap modelMap, @RequestParam(value = "key", required = false) String key,
			@PathVariable(value = "key", required = false) String keys,
			@PathVariable(value = "page", required = false) Integer page) {
		if (key == null) {
			key = keys;
		}
		modelMap.addAttribute("title", "Search key = " + key);
		int sumComic = comicDao.coutComicSearch(key);
		int sumPage = (int) Math.ceil((float) sumComic / ROW_COUNT);
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}
		int offset = (currentPage - 1) * ROW_COUNT;
		modelMap.addAttribute("key", key);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("sumComic", sumComic);
		modelMap.addAttribute("currentPage", currentPage);
		modelMap.addAttribute("listComicSearch", comicDao.getListComicSearch(key, offset, ROW_COUNT));

		return "public.search";
	}

	/* COMMENT CHAP */
	@RequestMapping(value = "chap/comment", method = RequestMethod.POST,produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String commentCtrl(ModelMap modelMap, @RequestParam(value = "cmt_content") String cmt_content,
			@RequestParam(value = "chap_id") int chap_id,@RequestParam(value = "comic_id") int comic_id,HttpSession session,HttpServletRequest request) {
		
		if (cmt_content.isEmpty() || imageDao.getItemsByIDChap(chap_id).size() == 0) {
			return "EMPTY";
		}
		if(session.getAttribute("user") == null ) {
			return "LOGIN";
		}
		User user = (User)session.getAttribute("user"); 
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm dd-MM-yyyy");
		
		Comment comment = new Comment(cmt_content, chap_id, comic_id, user.getUser_id());
		ArrayList<Comment> listCommentByChap = new ArrayList<>();
		String data ="";
		if (commentDao.addItem(comment) > 0) {
			listCommentByChap = (ArrayList<Comment>) commentDao.getListByIDChap(chap_id);
			for (Comment comment2 : listCommentByChap) {
				data += "<li style=\"padding-bottom: 15px;\">" + 
							"<div class=\"row\">" + 
								"<div class=\"col-sm-1\">" + 
									"<img width=\"35px;\" alt=\"\" src=\""+request.getContextPath()+"/templates/public/images/comment.jpg\">" + 
								"</div>" + 
								"<div class=\"col-sm-11\">" + 
									"<p>"+comment2.getUsername()+" -- <i class=\"fa fa-clock-o\"> "+sdf.format(comment2.getCreate_at())+"</i></p>" + 
									"<p>"+comment2.getCmt_content()+"</p>" + 
								"</div>" + 
							"</div>" + 
						"</li>";
			}
		} else {
			return "ERROR";
		}
		return data;
	}

}
