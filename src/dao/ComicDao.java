package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Comic;

@Repository
public class ComicDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Comic> getListItems() {
		String sql = "SELECT comic.comic_id,comic.comic_name,comic.comic_preview,comic.create_at,comic.comic_view,comic.picture,comic.user_id,comic.age,user.username,role.name AS name_role FROM comic LEFT JOIN user ON comic.user_id = user.user_id LEFT JOIN role ON user.role = role.id ORDER By comic_id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Comic>(Comic.class));
	}

	public List<Comic> getListMostView() {
		String sql = "SELECT comic.comic_id,comic.comic_name,comic.comic_preview,comic.create_at,comic.comic_view,comic.picture,comic.user_id,comic.age,user.username,role.name AS name_role FROM comic LEFT JOIN user ON comic.user_id = user.user_id LEFT JOIN role ON user.role = role.id ORDER BY comic_view DESC LIMIT 6";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Comic>(Comic.class));
	}

	public List<Comic> getListByIDCat(int id_cat) {
		String sql = "SELECT comic.comic_id,comic.comic_name,comic.comic_preview,comic.create_at,comic.comic_view,picture,user_id,age FROM comic INNER JOIN comic_cat ON comic.comic_id = comic_cat.id_comic WHERE comic_cat.id_cat = ?";
		return jdbcTemplate.query(sql, new Object[] { id_cat }, new BeanPropertyRowMapper<Comic>(Comic.class));
	}
	public List<Comic> getListByIDCatPagination(int cat_id, int offset, int rOW_COUNT) {
		String sql = "SELECT comic.comic_id,comic.comic_name,comic.comic_preview,comic.create_at,comic.comic_view,picture,user_id,age FROM comic INNER JOIN comic_cat ON comic.comic_id = comic_cat.id_comic WHERE comic_cat.id_cat = ? LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { cat_id,offset,rOW_COUNT }, new BeanPropertyRowMapper<Comic>(Comic.class));
	}
	public List<Comic> getListHotComicUpdate() {
		String sql = "SELECT *, (SELECT COUNT(*) FROM comment INNER JOIN chap ON id_chap = chap_id WHERE chap.comic_id=comic.comic_id) AS comic_comment FROM comic LIMIT 7";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Comic>(Comic.class));
	}

	public List<Comic> getListLastComicUpdate(int offset, int ROW_COUNT) {
		String sql = "SELECT *, (SELECT chap.created_at FROM chap WHERE chap.comic_id = comic.comic_id ORDER BY chap.created_at DESC LIMIT 1) AS lastChapUpdate  FROM comic ORDER BY lastChapUpdate DESC LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, ROW_COUNT },
				new BeanPropertyRowMapper<Comic>(Comic.class));
	}

	public List<Comic> getListComicSearch(String key, int offset, int ROW_COUNT) {
		String sql = "SELECT comic.comic_id,comic.comic_name,comic.comic_preview,comic.create_at,comic.comic_view,comic.picture,comic.user_id,comic.age,user.username,role.name AS name_role FROM comic LEFT JOIN user ON comic.user_id = user.user_id LEFT JOIN role ON user.role = role.id WHERE comic_name LIKE '%"
				+ key + "%' OR comic_preview LIKE '%" + key + "%' ORDER BY comic_id DESC LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, ROW_COUNT },
				new BeanPropertyRowMapper<Comic>(Comic.class));
	}

	/* GET ITEM */
	public Comic getItemByID(int id) {
		String sql = "SELECT comic.comic_id,comic.comic_name,comic.comic_preview,comic.create_at,comic.comic_view,comic.picture,comic.user_id,comic.age,user.username,role.name AS name_role FROM comic LEFT JOIN user ON comic.user_id = user.user_id LEFT JOIN role ON user.role = role.id WHERE comic_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Comic>(Comic.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* CHECK NAME */
	public int checkNameForAdd(String comic_name) {
		String sql = "SELECT COUNT(*) FROM comic WHERE comic_name LIKE '%" + comic_name + "%'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int checkNameForEdit(Comic comic) {
		String sql = "SELECT COUNT(*) FROM comic WHERE comic_name LIKE '%" + comic.getComic_name()
				+ "%' && comic_id != ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { comic.getComic_id() }, Integer.class);
	}

	/* ADD */
	public int addItem(Comic comic) {
		String sql = "INSERT INTO comic(comic_name,comic_preview,picture,user_id,age) VALUES(?,?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[] { comic.getComic_name(), comic.getComic_preview(),
				comic.getPicture(), comic.getUser_id(), comic.getAge() });
	}

	/* DELETE */
	public int delItem(int comic_id) {
		String sql = "DELETE FROM comic WHERE comic_id = ?";
		return jdbcTemplate.update(sql, new Object[] { comic_id });
	}

	/* EDIT */
	public int editItem(Comic comic) {
		String sql = "UPDATE comic SET comic_name = ?, comic_preview = ?, picture = ?, age = ? WHERE comic_id = ?";
		return jdbcTemplate.update(sql, new Object[] { comic.getComic_name(), comic.getComic_preview(),
				comic.getPicture(), comic.getAge(), comic.getComic_id() });
	}

	/* UPDATE COMIC VIEW */
	public void updateComicView(Comic objComic) {
		String sql = "UPDATE comic SET comic_view = ? WHERE comic_id = ?";
		jdbcTemplate.update(sql, new Object[] { objComic.getComic_view(), objComic.getComic_id() });
	}

	/* COUNT COMIC */
	public int coutComicLastUpdate() {
		String sql = "SELECT COUNT(*)  FROM comic";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int coutComicSearch(String key) {
		String sql = "SELECT COUNT(*)  FROM comic WHERE comic_name LIKE '%" + key + "%' OR comic_preview LIKE '%" + key
				+ "%'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int coutComicByIDCategory(int cat_id) {
		String sql = "SELECT COUNT(*) FROM comic INNER JOIN comic_cat ON comic.comic_id = comic_cat.id_comic WHERE comic_cat.id_cat = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { cat_id }, Integer.class);
	}

}
