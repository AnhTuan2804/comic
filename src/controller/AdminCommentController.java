package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.CommentDao;

@Controller
@RequestMapping("admin")
public class AdminCommentController {
	@Autowired
	private CommentDao commentDao;

	// ---------INDEX---------
	@RequestMapping(value = "comment")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Danh mục");
		modelMap.addAttribute("listComment", commentDao.getListComment());
		return "admin.comment";
	}

	// ---------DELETE---------
	@RequestMapping(value = "comment-{id}")
	public String controlDel(@PathVariable(value = "id") int cmt_id, RedirectAttributes ra) {
		if (commentDao.delItem(cmt_id) > 0) {
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/comment";
	}
}
