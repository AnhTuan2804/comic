package entity;

public class Author {
	private int auth_id;
	private String auth_name;
	private String auth_info;

	public Author() {
		super();
	}

	public Author(int auth_id, String auth_name, String auth_info) {
		super();
		this.auth_id = auth_id;
		this.auth_name = auth_name;
		this.auth_info = auth_info;
	}

	public int getAuth_id() {
		return auth_id;
	}

	public void setAuth_id(int auth_id) {
		this.auth_id = auth_id;
	}

	public String getAuth_name() {
		return auth_name;
	}

	public void setAuth_name(String auth_name) {
		this.auth_name = auth_name;
	}

	public String getAuth_info() {
		return auth_info;
	}

	public void setAuth_info(String auth_info) {
		this.auth_info = auth_info;
	}

}
