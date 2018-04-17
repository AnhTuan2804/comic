package entity;

public class Comic_Cat {

	private int id;
	private int id_comic;
	private int id_cat;
	private String cat_name;
	private String comic_name;

	public Comic_Cat() {
		super();
	}

	public Comic_Cat(int id, int id_comic, int id_cat, String cat_name, String comic_name) {
		super();
		this.id = id;
		this.id_comic = id_comic;
		this.id_cat = id_cat;
		this.cat_name = cat_name;
		this.comic_name = comic_name;
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

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	public String getComic_name() {
		return comic_name;
	}

	public void setComic_name(String comic_name) {
		this.comic_name = comic_name;
	}

}
