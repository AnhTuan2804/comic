package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Role;

@Repository
public class RoleDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Role> getListItems() {
		String sql = "SELECT * FROM role";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Role>(Role.class));
	}

}
