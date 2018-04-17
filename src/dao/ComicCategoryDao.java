package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Comic_Cat;

@Repository
public class ComicCategoryDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Comic_Cat> getListItems() {
		String sql = "SELECT comic_cat.id,comic_cat.id_comic,comic_cat.id_cat,category.cat_name, comic.comic_name FROM comic_cat INNER JOIN category ON comic_cat.id_cat = category.cat_id INNER JOIN comic ON comic_cat.id_comic = comic.comic_id";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Comic_Cat>(Comic_Cat.class));
	}
	public List<Comic_Cat> getItemsByIDCat(int cat_id) {
		String sql = "SELECT comic_cat.id,comic_cat.id_comic,comic_cat.id_cat,category.cat_name, comic.comic_name FROM comic_cat INNER JOIN category ON comic_cat.id_cat = category.cat_id INNER JOIN comic ON comic_cat.id_comic = comic.comic_id WHERE comic_cat.id_cat = ?";
		return jdbcTemplate.query(sql, new Object[] { cat_id },new BeanPropertyRowMapper<Comic_Cat>(Comic_Cat.class));
	}
	
	/* GET ITEM */
	public Comic_Cat getItem(int id) {
		String sql = "SELECT comic_cat.id,comic_cat.id_comic,comic_cat.id_cat,category.cat_name, comic.comic_name FROM comic_cat INNER JOIN category ON comic_cat.id_cat = category.cat_id INNER JOIN comic ON comic_cat.id_comic = comic.comic_id WHERE id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id },
					new BeanPropertyRowMapper<Comic_Cat>(Comic_Cat.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* CHECK NAME */
	public int checkComicCategoryForAdd(Comic_Cat comicCategory) {
		String sql = "SELECT COUNT(*) FROM comic_cat WHERE id_comic = ? && id_cat = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { comicCategory.getId_comic(), comicCategory.getId_cat() },
				Integer.class);
	}

	public int checkComicCategoryForEdit(Comic_Cat comicCategory) {
		String sql = "SELECT COUNT(*) FROM comic_cat WHERE id_comic = ? && id_cat = ? && id != ?";
		return jdbcTemplate.queryForObject(sql,
				new Object[] { comicCategory.getId_comic(), comicCategory.getId_cat(), comicCategory.getId() },
				Integer.class);
	}

	/* ADD */
	public int addItem(Comic_Cat comicCategory) {
		String sql = "INSERT INTO comic_cat(id_comic,id_cat) VALUE(?,?)";
		return jdbcTemplate.update(sql, new Object[] { comicCategory.getId_comic(), comicCategory.getId_cat() });
	}

	/* DELETE */
	public int delItem(int id) {
		String sql = "DELETE FROM comic_cat WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	/* EDIT */
	public int editItem(Comic_Cat comicCategory) {
		String sql = "UPDATE comic_cat SET id_comic = ?, id_cat = ? WHERE id = ?";
		return jdbcTemplate.update(sql,
				new Object[] { comicCategory.getId_comic(), comicCategory.getId_cat(), comicCategory.getId() });
	}

}
