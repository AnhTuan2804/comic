package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Author;

@Repository
public class AuthorDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Author> getListItems() {
		String sql = "SELECT * FROM author";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Author>(Author.class));
	}

	/* GET ITEM */
	public Author getItem(int id) {
		String sql = "SELECT * FROM author WHERE auth_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id },
					new BeanPropertyRowMapper<Author>(Author.class));
		} catch (DataAccessException e) {
			return null;
		}
	}

	/* ADD ITEM */
	public int addItem(Author author) {
		String sql = "INSERT INTO author(auth_name,auth_info) VALUES(?,?)";
		return jdbcTemplate.update(sql, new Object[] { author.getAuth_name(), author.getAuth_info() });
	}

	/* DELETE ITEM */
	public int delItem(int id) {
		String sql = "DELETE FROM author WHERE auth_id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	/* EDIT ITEM */
	public int editItem(Author author) {
		String sql = "UPDATE author SET auth_name = ?, auth_info = ? WHERE auth_id = ?";
		return jdbcTemplate.update(sql,
				new Object[] { author.getAuth_name(), author.getAuth_info(), author.getAuth_id() });
	}

}
