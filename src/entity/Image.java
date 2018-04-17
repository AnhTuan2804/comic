package entity;

public class Image {

	private int img_id;
	private String img_name;
	private int chap_id;

	public Image() {
		super();
	}

	public Image(int img_id, String img_name, int chap_id) {
		super();
		this.img_id = img_id;
		this.img_name = img_name;
		this.chap_id = chap_id;
	}

	public int getImg_id() {
		return img_id;
	}

	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public int getChap_id() {
		return chap_id;
	}

	public void setChap_id(int chap_id) {
		this.chap_id = chap_id;
	}

}
