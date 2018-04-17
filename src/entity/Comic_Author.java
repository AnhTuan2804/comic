package entity;

public class Comic_Author {

	private int id;
	private int id_comic;
	private int id_auth;
	private String name_auth;
	private String name_comic;

	public Comic_Author() {
		super();
	}

	public Comic_Author(int id, int id_comic, int id_auth, String name_auth, String name_comic) {
		super();
		this.id = id;
		this.id_comic = id_comic;
		this.id_auth = id_auth;
		this.name_auth = name_auth;
		this.name_comic = name_comic;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_comic() {
		return id_comic;
	}

	public void setId_comic(int id_comic) {
		this.id_comic = id_comic;
	}

	public int getId_auth() {
		return id_auth;
	}

	public void setId_auth(int id_auth) {
		this.id_auth = id_auth;
	}

	public String getName_auth() {
		return name_auth;
	}

	public void setName_auth(String name_auth) {
		this.name_auth = name_auth;
	}

	public String getName_comic() {
		return name_comic;
	}

	public void setName_comic(String name_comic) {
		this.name_comic = name_comic;
	}

}
