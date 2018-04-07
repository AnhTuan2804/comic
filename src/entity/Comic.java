package entity;

import java.sql.Timestamp;

public class Comic {
	private int comic_id;
	private String comic_name;
	private String comic_preview;
	private Timestamp create_at;
	private int comic_view;
	private int user_id;
	private int age;
	private String picture;
	private String name_role;
	private String username;

	public Comic() {
		super();
	}

	public Comic(int comic_id, String comic_name, String comic_preview, Timestamp create_at, int comic_view,
			int user_id, int age, String picture, String name_role, String username) {
		super();
		this.comic_id = comic_id;
		this.comic_name = comic_name;
		this.comic_preview = comic_preview;
		this.create_at = create_at;
		this.comic_view = comic_view;
		this.user_id = user_id;
		this.age = age;
		this.picture = picture;
		this.name_role = name_role;
		this.username = username;
	}

	public int getComic_id() {
		return comic_id;
	}

	public void setComic_id(int comic_id) {
		this.comic_id = comic_id;
	}

	public String getComic_name() {
		return comic_name;
	}

	public void setComic_name(String comic_name) {
		this.comic_name = comic_name;
	}

	public String getComic_preview() {
		return comic_preview;
	}

	public void setComic_preview(String comic_preview) {
		this.comic_preview = comic_preview;
	}

	public Timestamp getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Timestamp create_at) {
		this.create_at = create_at;
	}

	public int getComic_view() {
		return comic_view;
	}

	public void setComic_view(int comic_view) {
		this.comic_view = comic_view;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getName_role() {
		return name_role;
	}

	public void setName_role(String name_role) {
		this.name_role = name_role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
