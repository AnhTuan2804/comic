package entity;

import java.sql.Timestamp;

public class Comment {

	private int cmt_id;
	private String cmt_content;
	private int id_chap;
	private String username;
	private int id_comic;
	private int id_user;
	private Timestamp create_at;
	private String comic;
	private int chap_num;

	public Comment() {
		super();
	}

	public Comment(int cmt_id, String cmt_content, int id_chap, String username, int id_comic, int id_user,
			Timestamp create_at, String comic, int chap_num) {
		super();
		this.cmt_id = cmt_id;
		this.cmt_content = cmt_content;
		this.id_chap = id_chap;
		this.username = username;
		this.id_comic = id_comic;
		this.id_user = id_user;
		this.create_at = create_at;
		this.comic = comic;
		this.chap_num = chap_num;
	}

	public Comment(String cmt_content, int id_chap, int id_comic, int id_user) {
		super();
		this.cmt_content = cmt_content;
		this.id_chap = id_chap;
		this.id_comic = id_comic;
		this.id_user = id_user;
	}

	public int getCmt_id() {
		return cmt_id;
	}

	public void setCmt_id(int cmt_id) {
		this.cmt_id = cmt_id;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public int getId_chap() {
		return id_chap;
	}

	public void setId_chap(int id_chap) {
		this.id_chap = id_chap;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public Timestamp getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Timestamp create_at) {
		this.create_at = create_at;
	}

	public int getId_comic() {
		return id_comic;
	}

	public void setId_comic(int id_comic) {
		this.id_comic = id_comic;
	}

	public String getComic() {
		return comic;
	}

	public void setComic(String comic) {
		this.comic = comic;
	}

	public int getChap_num() {
		return chap_num;
	}

	public void setChap_num(int chap_num) {
		this.chap_num = chap_num;
	}

}
