package entity;

public class Image {

	private int img_id;
	private String img_text;
	private int chap_id;

	public Image() {
		super();
	}

	public Image(int img_id, String img_text, int chap_id) {
		super();
		this.img_id = img_id;
		this.img_text = img_text;
		this.chap_id = chap_id;
	}

	public int getImg_id() {
		return img_id;
	}

	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}

	public String getImg_text() {
		return img_text;
	}

	public void setImg_text(String img_text) {
		this.img_text = img_text;
	}

	public int getChap_id() {
		return chap_id;
	}

	public void setChap_id(int chap_id) {
		this.chap_id = chap_id;
	}

}
