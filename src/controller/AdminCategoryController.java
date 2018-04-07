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
import entity.Category;

@Controller
@RequestMapping("admin")
public class AdminCategoryController {
	@Autowired
	private CategoryDao categoryDao;

	// ---------INDEX---------
	@RequestMapping(value = "category")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Danh mục");
		modelMap.addAttribute("listCat", categoryDao.getListItems());
		return "admin.category";
	}

	// ---------ADD---------
	@RequestMapping(value = "category-add")
	public String showAdd(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin | Thêm danh mục");
		return "admin.category.add";
	}

	@RequestMapping(value = "category-add", method = RequestMethod.POST)
	public String ctrlAdd(@ModelAttribute("category") Category category, RedirectAttributes ra) {
		if (categoryDao.checkNameForAdd(category.getCat_name()) > 0) {
			ra.addFlashAttribute("category", category);
			ra.addFlashAttribute("msg1", "Category name already exist");
			return "redirect:/admin/category-add";
		}
		if (categoryDao.addItem(category) > 0) {
			ra.addFlashAttribute("msg", "ADD SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE CREATE");
		}
		return "redirect:/admin/category";
	}

	// ---------EDIT---------
	@RequestMapping(value = "category-edit/{id}")
	public String showEdit(@PathVariable(value = "id") int id, ModelMap modelMap) {
		modelMap.addAttribute("category", categoryDao.getItem(id));
		
		modelMap.addAttribute("title", "Admin | Sửa danh mục");
		return "admin.category.edit";
	}

	@RequestMapping(value = "category-edit", method = RequestMethod.POST)
	public String ctrlEdit(@ModelAttribute("category") Category category, RedirectAttributes ra) {
		if (categoryDao.checkNameForEdit(category) > 0) {
			ra.addFlashAttribute("category", category);
			ra.addFlashAttribute("msg1", "Category name already exist");
			return "redirect:/admin/category-edit/" + category.getCat_id();
		}
		if (categoryDao.editItem(category) > 0) {
			ra.addFlashAttribute("msg", "EDIT SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE EDIT");
		}
		return "redirect:/admin/category";
	}

	// // ---------DELETE---------
	@RequestMapping(value = "category-del/{id}")
	public String ctrlDel(@PathVariable(value = "id") int id_category, RedirectAttributes ra) {
		if (categoryDao.delItem(id_category) > 0) {
			ra.addFlashAttribute("msg", "DELETE SUCCESS");
		} else {
			ra.addFlashAttribute("msg1", "ERROR WHILE DELETE");
		}
		return "redirect:/admin/category";
	}
}
