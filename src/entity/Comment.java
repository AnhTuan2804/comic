package entity;

public class Comment {

	private int cmt_id;
	private String cmt_content;
	private int id_chap;
	private int id_user;

	public Comment() {
		super();
	}


	public Comment(int cmt_id, String cmt_content, int id_chap, int id_user) {
		super();
		this.cmt_id = cmt_id;
		this.cmt_content = cmt_content;
		this.id_chap = id_chap;
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


	public int getId_user() {
		return id_user;
	}


	public void setId_user(int id_user) {
		this.id_user = id_user;
	}



}
