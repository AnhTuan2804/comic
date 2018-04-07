package entity;

public class Comic_Author {

	private int id;
	private int id_comic;
	private int id_author;

	public Comic_Author() {
		super();
	}

	public Comic_Author(int id, int id_comic, int id_author) {
		super();
		this.id = id;
		this.id_comic = id_comic;
		this.id_author = id_author;
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

	public int getId_author() {
		return id_author;
	}

	public void setId_author(int id_author) {
		this.id_author = id_author;
	}

}
