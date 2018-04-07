package entity;

import java.sql.Date;

public class User {
	private int user_id;
	private String username;
	private String password;
	private Date birthday;
	private int id_role;
	private int enable;
	private String name_role;

	public User() {
		super();
	}

	public User(int user_id, String username, String password, Date birthday, int id_role, int enable,
			String name_role) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.birthday = birthday;
		this.id_role = id_role;
		this.enable = enable;
		this.name_role = name_role;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getId_role() {
		return id_role;
	}

	public void setId_role(int id_role) {
		this.id_role = id_role;
	}

	public int getEnable() {
		return enable;
	}

	public void setEnable(int enable) {
		this.enable = enable;
	}

	public String getName_role() {
		return name_role;
	}

	public void setName_role(String name_role) {
		this.name_role = name_role;
	}

}
