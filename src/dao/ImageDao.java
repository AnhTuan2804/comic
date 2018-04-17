package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Category;
import entity.Image;

@Repository
public class ImageDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Image> getItemsByIDChap(int chap_id) {
		String sql = "SELECT * FROM image WHERE chap_id = ?";
		return jdbcTemplate.query(sql, new Object[] { chap_id }, new BeanPropertyRowMapper<Image>(Image.class));
	}

	/* GET ITEM */
	public Image getItem(int id) {
		String sql = "SELECT * FROM image WHERE img_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Image>(Image.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* ADD */
	public int addItem(Image image) {
		String sql = "INSERT INTO image(img_name,chap_id) VALUE(?,?)";
		return jdbcTemplate.update(sql, new Object[] { image.getImg_name(), image.getChap_id() });
	}

	/* DELETE */
	public int delItem(int img_id) {
		String sql = "DELETE FROM image WHERE img_id = ?";
		return jdbcTemplate.update(sql, new Object[] { img_id });
	}

}
