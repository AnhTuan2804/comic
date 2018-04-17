package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Comic_Author;

@Repository
public class ComicAuthorDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Comic_Author> getListItems() {
		String sql = "SELECT comic_author.id,comic_author.id_comic,comic_author.id_auth,author.auth_name AS name_auth,comic.comic_name AS name_comic FROM comic_author INNER JOIN comic ON comic_author.id_comic = comic.comic_id INNER JOIN author ON comic_author.id_auth = author.auth_id";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Comic_Author>(Comic_Author.class));
	}

	/* GET ITEM */
	public Comic_Author getItem(int id) {
		String sql = "SELECT comic_author.id,comic_author.id_comic,comic_author.id_auth,author.auth_name AS name_auth,comic.comic_name AS name_comic FROM comic_author INNER JOIN comic ON comic_author.id_comic = comic.comic_id INNER JOIN author ON comic_author.id_auth = author.auth_id WHERE id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id },
					new BeanPropertyRowMapper<Comic_Author>(Comic_Author.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* CHECK NAME */
	public int checkComicAuthorForAdd(Comic_Author comicAuthor) {
		String sql = "SELECT COUNT(*) FROM comic_author WHERE id_comic = ? && id_auth = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { comicAuthor.getId_comic(), comicAuthor.getId_auth() },
				Integer.class);
	}

	public int checkComicAuthorForEdit(Comic_Author comicAuthor) {
		String sql = "SELECT COUNT(*) FROM comic_author WHERE id_comic = ? && id_auth = ? && id != ?";
		return jdbcTemplate.queryForObject(sql,
				new Object[] { comicAuthor.getId_comic(), comicAuthor.getId_auth(), comicAuthor.getId() },
				Integer.class);
	}

	/* ADD */
	public int addItem(Comic_Author comicAuthor) {
		String sql = "INSERT INTO comic_author(id_comic,id_auth) VALUE(?,?)";
		return jdbcTemplate.update(sql, new Object[] { comicAuthor.getId_comic(), comicAuthor.getId_auth() });
	}

	/* DELETE */
	public int delItem(int id) {
		String sql = "DELETE FROM comic_author WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	/* EDIT */
	public int editItem(Comic_Author comicAuthor) {
		String sql = "UPDATE comic_author SET id_comic = ?, id_auth = ? WHERE id = ?";
		return jdbcTemplate.update(sql,
				new Object[] { comicAuthor.getId_comic(), comicAuthor.getId_auth(), comicAuthor.getId() });
	}


}
