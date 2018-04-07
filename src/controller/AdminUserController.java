package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.RoleDao;
import dao.UserDao;
import entity.User;
import util.StringUtil;

@Controller
@RequestMapping("admin")
public class AdminUserController {
	@Autowired
	private UserDao userDao;
	@Autowired
	private StringUtil stringUtil;
	@Autowired
	private RoleDao roleDao;

	// ---------INDEX---------
	@RequestMapping(value = "user")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | User");
		modelMap.addAttribute("listUser", userDao.getListUser());
		return "admin.user";
	}

	// ---------ADD---------
	@RequestMapping(value = "user-add")
	public String showAdd(ModelMap modelMap) {
		modelMap.addAttribute("listRole", roleDao.getListItems());
		modelMap.addAttribute("title", "Admin | User");
		return "admin.user.add";
	}

	@SuppressWarnings("static-access")
	@RequestMapping(value = "user-add", method = RequestMethod.POST)
	public String ctrlAdd(@ModelAttribute(value = "user") User user, RedirectAttributes ra) {
		if (userDao.checkUsernameForAdd(user) > 0) {
			ra.addFlashAttribute("msg1", "Equals username");
			ra.addFlashAttribute("user", user);
			return "redirect:/admin/user-add";
		}
		user.setPassword(stringUtil.md5(user.getPassword()));
		if (userDao.addItem(user) > 0) {
			ra.addFlashAttribute("msg", "ADDED USER SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE ADD");
		}
		return "redirect:/admin/user";
	}

	// ---------EDIT---------
	@RequestMapping(value = "user-edit/{id}")
	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap, RedirectAttributes ra,
			HttpSession session) {
		User userInfo = (User) session.getAttribute("userInfo");
		if ("QUANLY".equals(userInfo.getName_role())) {
			if (userInfo.getUser_id() != id) {
				ra.addFlashAttribute("msg1", "YOU JUST HAVE ROLE EDIT YOUR PROFILE");
				return "redirect:/admin/user";
			}
		}

		modelMap.addAttribute("user", userDao.getItemByID(id));
		modelMap.addAttribute("listRole", roleDao.getListItems());
		modelMap.addAttribute("title", "Admin | Edit user");
		return "admin.user.edit";
	}

	@SuppressWarnings("static-access")
	@RequestMapping(value = "user-edit", method = RequestMethod.POST)
	public String ctrlEdit(@ModelAttribute(value = "user") User user, RedirectAttributes ra) {
		if (userDao.checkUsernameForEdit(user) > 0) {
			ra.addFlashAttribute("msg1", "Equals username");
			ra.addFlashAttribute("user", user);
			return "redirect:/admin/user-edit/" + user.getUser_id();
		}
		if (user.getPassword().isEmpty()) {
			user.setPassword(userDao.getItemByID(user.getUser_id()).getPassword());
		} else {
			user.setPassword(stringUtil.md5(user.getPassword()));
		}
		if (userDao.editItem(user) > 0) {
			ra.addFlashAttribute("msg", "EDITED USER SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE EDIT");
		}
		return "redirect:/admin/user";
	}

	// ---------EDIT---------
	@RequestMapping(value = "user-del/{id}")
	public String ctrlDel(@PathVariable(value = "id") int id, RedirectAttributes ra) {

		if ("ADMIN".equals(userDao.getItemByID(id).getName_role())) {
			ra.addFlashAttribute("msg1", "CAN'T DELETE AMDIN");
			return "redirect:/admin/user";
		}
		if (userDao.delItem(id) > 0) {
			ra.addFlashAttribute("msg", "DELETED 1 USER");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/user";
	}

}
