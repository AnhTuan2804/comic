package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Chap;

@Repository
public class ChapDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Chap> getListItems(int comic_id) {
		String sql = "SELECT chap_id,chap_num,chap_content,chap_view,created_at,chap.comic_id,comic.comic_name FROM chap INNER JOIN comic ON comic.comic_id = chap.comic_id WHERE chap.comic_id = ?";
		return jdbcTemplate.query(sql, new Object[] { comic_id }, new BeanPropertyRowMapper<Chap>(Chap.class));
	}

	/* GET ITEM */
	public Chap getItemByID(int chap_id) {
		String sql = "SELECT chap_id,chap_num,chap_content,chap_view,created_at,chap.comic_id,comic.comic_name FROM chap INNER JOIN comic ON comic.comic_id = chap.comic_id WHERE chap.chap_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { chap_id },
					new BeanPropertyRowMapper<Chap>(Chap.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* ADD ITEM */
	public int addItem(Chap chap) {
		String sql = "INSERT INTO chap(chap_num,chap_content,comic_id) VALUE(?,?,?)";
		return jdbcTemplate.update(sql,
				new Object[] { chap.getChap_num(), chap.getChap_content(), chap.getComic_id() });
	}

	/* CHECK NUM */
	public int checkChapNumForAdd(Chap chap) {
		String sql = "SELECT COUNT(*) FROM chap WHERE chap_num = ? && comic_id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { chap.getChap_num(), chap.getComic_id() }, Integer.class);
	}

	public int checkChapNumForEdit(Chap chap) {
		String sql = "SELECT COUNT(*) FROM chap WHERE chap_num = ? && comic_id = ? && chap_id != ?";
		return jdbcTemplate.queryForObject(sql,
				new Object[] { chap.getChap_num(), chap.getComic_id(), chap.getChap_id() }, Integer.class);
	}

	/* EDIT */
	public int editItem(Chap chap) {
		String sql = "UPDATE chap SET chap_num = ?, chap_content = ? WHERE chap_id = ?";
		return jdbcTemplate.update(sql, new Object[] { chap.getChap_num(), chap.getChap_content(), chap.getChap_id() });
	}

	/* DELETE */
	public int delItem(int chap_id) {
		String sql = "DELETE FROM chap WHERE chap_id = ?";
		return jdbcTemplate.update(sql, new Object[] { chap_id });
	}

}
