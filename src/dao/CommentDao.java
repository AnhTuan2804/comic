package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Comment;

@Repository
public class CommentDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/* GET LIST */
	public List<Comment> getListByIDChap(int chap_id) {
		String sql = "SELECT cmt_id,cmt_content,id_chap,create_at,id_user,user.username FROM comment LEFT JOIN user ON comment.id_user = user.user_id WHERE id_chap = ? ORDER BY create_at DESC";
		return jdbcTemplate.query(sql, new Object[] { chap_id }, new BeanPropertyRowMapper<Comment>(Comment.class));
	}

	public List<Comment> getListComment() {
		String sql = "SELECT cmt_id,cmt_content,id_chap,comment.create_at,id_user,user.username,comic.comic_name AS comic, chap.chap_num FROM comment LEFT JOIN user ON comment.id_user = user.user_id INNER JOIN comic ON comic.comic_id = comment.id_comic INNER JOIN chap ON chap.chap_id = comment.id_chap ORDER BY create_at DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Comment>(Comment.class));
	}

	/* ADD */
	public int addItem(Comment comment) {
		String sql = "INSERT INTO comment(id_chap,cmt_content,id_user,id_comic) VALUE(?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[] { comment.getId_chap(), comment.getCmt_content(),
				comment.getId_user(), comment.getId_comic() });
	}

	/* DELETE */
	public int delItem(int cmt_id) {
		String sql = "DELETE FROM comment WHERE cmt_id = ?";
		return jdbcTemplate.update(sql, new Object[] { cmt_id });
	}

}
