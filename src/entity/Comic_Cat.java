package entity;

public class Comic_Cat {

	private int id;
	private int id_comic;
	private int id_cat;

	public Comic_Cat() {
		super();
	}

	public Comic_Cat(int id, int id_comic, int id_cat) {
		super();
		this.id = id;
		this.id_comic = id_comic;
		this.id_cat = id_cat;
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

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

}
