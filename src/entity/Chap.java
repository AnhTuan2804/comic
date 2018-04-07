package entity;

import java.sql.Timestamp;

public class Chap {
	private int chap_id;
	private int chap_num;
	private String chap_content;
	private int chap_view;
	private Timestamp created_at;
	private int comic_id;
	private String comic_name;

	public Chap() {
		super();
	}

	public Chap(int chap_id, int chap_num, int chap_view, Timestamp createdd_at, int comic_id, String chap_content,
			String comic_name) {
		super();
		this.chap_id = chap_id;
		this.chap_num = chap_num;
		this.chap_view = chap_view;
		this.created_at = createdd_at;
		this.comic_id = comic_id;
		this.chap_content = chap_content;
		this.comic_name = comic_name;
	}

	public int getChap_id() {
		return chap_id;
	}

	public void setChap_id(int chap_id) {
		this.chap_id = chap_id;
	}

	public int getChap_num() {
		return chap_num;
	}

	public void setChap_num(int chap_num) {
		this.chap_num = chap_num;
	}

	public int getChap_view() {
		return chap_view;
	}

	public void setChap_view(int chap_view) {
		this.chap_view = chap_view;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp createdd_at) {
		this.created_at = createdd_at;
	}

	public int getComic_id() {
		return comic_id;
	}

	public void setComic_id(int comic_id) {
		this.comic_id = comic_id;
	}

	public String getChap_content() {
		return chap_content;
	}

	public void setChap_content(String chap_content) {
		this.chap_content = chap_content;
	}

	public String getComic_name() {
		return comic_name;
	}

	public void setComic_name(String comic_name) {
		this.comic_name = comic_name;
	}

}
