package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Category;

@Repository
public class CategoryDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Category> getListItems() {
		String sql = "SELECT * FROM category";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}

	/* GET ITEM */
	public Category getItem(int id) {
		String sql = "SELECT * FROM category WHERE cat_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id },
					new BeanPropertyRowMapper<Category>(Category.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* CHECK NAME */
	public int checkNameForAdd(String cat_name) {
		String sql = "SELECT COUNT(*) FROM category WHERE cat_name LIKE '%" + cat_name + "%'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int checkNameForEdit(Category category) {
		String sql = "SELECT COUNT(*) FROM category WHERE cat_name LIKE '%" + category.getCat_name()
				+ "%' && cat_id != ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { category.getCat_id() }, Integer.class);
	}

	/* ADD */
	public int addItem(Category category) {
		String sql = "INSERT INTO category(cat_name) VALUE(?)";
		return jdbcTemplate.update(sql, new Object[] { category.getCat_name() });
	}

	/* DELETE */
	public int delItem(int id_category) {
		String sql = "DELETE FROM category WHERE cat_id = ?";
		return jdbcTemplate.update(sql, new Object[] { id_category });
	}

	/* EDIT */
	public int editItem(Category category) {
		String sql = "UPDATE category SET cat_name = ? WHERE cat_id = ?";
		return jdbcTemplate.update(sql, new Object[] { category.getCat_name(), category.getCat_id() });
	}

}
