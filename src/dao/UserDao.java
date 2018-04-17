package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.User;

@Repository
public class UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<User> getListUser() {
		String sql = "SELECT user.user_id,username,password,birthday,enable,user.role AS id_role,role.name AS name_role FROM user INNER JOIN role ON user.role = role.id";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
	}

	/* GET ITEM */
	public User getItemByID(int id) {
		String sql = "SELECT user.user_id,username,password,birthday,enable,user.role AS id_role,role.name AS name_role FROM user INNER JOIN role ON user.role = role.id WHERE user_id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<User>(User.class));
	}

	public User getItemByUsername(String username) {
		String sql = "SELECT user.user_id,username,password,birthday,enable,user.role AS id_role,role.name AS name_role FROM user INNER JOIN role ON user.role = role.id WHERE user.username = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { username }, new BeanPropertyRowMapper<User>(User.class));
	}

	/* CHECK */
	public int checkUsernameForAdd(User user) {
		String sql = "SELECT COUNT(*) FROM user WHERE username LIKE '%" + user.getUsername() + "%'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int checkUsernameForEdit(User user) {
		String sql = "SELECT COUNT(*) FROM user WHERE username LIKE '%" + user.getUsername() + "%' && user_id != ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { user.getUser_id() }, Integer.class);
	}

	/* ADD ITEM */
	public int addItem(User user) {
		String sql = "INSERT INTO user(username,birthday,role,password) VALUE(?,?,?,?)";
		return jdbcTemplate.update(sql,
				new Object[] { user.getUsername(), user.getBirthday(), user.getId_role(), user.getPassword() });
	}

	/* EDIT ITEM */
	public int editItem(User user) {
		String sql = "UPDATE user SET username = ?, birthday = ?, role = ?, password = ? WHERE user_id = ?";
		return jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getBirthday(), user.getId_role(),
				user.getPassword(), user.getUser_id() });
	}

	/* DELETE ITEM */
	public int delItem(int id) {
		String sql = "DELETE FROM user WHERE user_id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}
	/*CHECK LOGIN FOR PUBLIC*/
	public int checkLogin(User user) {
		String sql = "SELECT COUNT(*) FROM user WHERE username = ? && password = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { user.getUsername(), user.getPassword() }, Integer.class);
	}

}
