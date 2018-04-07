package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.CategoryDao;

@Controller
@RequestMapping("admin")
public class AdminCommentController {
	@Autowired
	private CategoryDao categoryDao;

	// ---------INDEX---------
	@RequestMapping(value = "comment")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Danh mục");
		modelMap.addAttribute("listCat", categoryDao.getListItems());
		return "admin.comment";
	}

//	// ---------ADD---------
//	@RequestMapping(value = "category-add")
//	public String showAdd(ModelMap modelMap) {
//		modelMap.addAttribute("listCatParent", "");
//		modelMap.addAttribute("title", "Admin | Thêm danh mục");
//		return "admin.category.add";
//	}

//	@RequestMapping(value = "category-add", method = RequestMethod.POST)
//	public String controlAdd(@ModelAttribute("category") Category category, RedirectAttributes ra) {
//		if (categoryDao.checkNameForAdd(category.getName()) > 0) {
//			ra.addFlashAttribute("category", category);
//			ra.addFlashAttribute("msg1", "Category name already exist");
//			return "redirect:/admin/category-add";
//		}
//		if (categoryDao.addItem(category) > 0) {
//			ra.addFlashAttribute("msg", "ADD SUCCESS");
//		} else {
//			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
//		}
//		return "redirect:/admin/category";
//	}
//
//	// ---------EDIT---------
//	@RequestMapping(value = "category-edit/{id}")
//	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap) {
//		modelMap.addAttribute("category", categoryDao.getItemByID(id));
//		modelMap.addAttribute("listCatParent", categoryDao.getListCatParent());
//		modelMap.addAttribute("title", "Admin | Sửa danh mục");
//		return "admin.category.edit";
//	}
//
//	@RequestMapping(value = "category-edit", method = RequestMethod.POST)
//	public String controlEdit(@ModelAttribute("category") Category category, RedirectAttributes ra) {
//		if (categoryDao.checkNameForEdit(category) > 0) {
//			ra.addFlashAttribute("category", category);
//			ra.addFlashAttribute("msg1", "Category name already exist");
//			return "redirect:/admin/category-edit/"+category.getId();
//		}
//		if (categoryDao.editItem(category) > 0) {
//			ra.addFlashAttribute("msg", "EDIT SUCCESS");
//		} else {
//			ra.addFlashAttribute("msg1", "ERROR WHILE EDIT");
//		}
//		return "redirect:/admin/category";
//	}
//
//	// ---------DELETE---------
//	@RequestMapping(value = "category-del/{id}")
//	public String controlDel(@PathVariable(value = "id") int id_category, RedirectAttributes ra) {
//		if(categoryDao.countCategoryChild(id_category) > 0) {
//			ra.addFlashAttribute("msg1", "ERROR, this category have category child");
//			return "redirect:/admin/category";
//		}
//		if(categoryDao.delItem(id_category) > 0) {
//			ra.addFlashAttribute("msg", "DELETE SUCCESS");
//		}else {
//			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
//		}
//		return "redirect:/admin/category";
//	}
}
