package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.User_board;

public class User_boardDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

//	private User_boardDAO() {}
//	
//	private static User_boardDAO user_boardDAO;
//	
//	public static User_boardDAO getInstance() {
//		if(user_boardDAO == null) {//User_boardDAO객체가 없으면
//			user_boardDAO = new User_boardDAO();//객체 생성
//		}
//		
//		return user_boardDAO;//기존 User_boardDAO객체의 주소 리턴
//	}
//	
//	public void setConnection(Connection con){//Connection객체를 받아 DB 연결
//		this.con=con;
//	}	
	
	public User_boardDAO() {
		try {
			String dbURL ="jdbc:mysql://localhost:3306/shoes_shoppingmall";
			String dbID ="java";
			String dbPassword ="java";
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getDate() {
		String sql = "select now()";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public int getNext() {
		String sql = "select member_id from user_board order by member_id desc";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;// 첫번째 게시물인경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int write(int post_no, String post_date, String post_pwd, String post_subject, String member_code,
			String post_text) {
		String sql = "insert into user_board values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, post_no);
			pstmt.setString(2, member_code);
			pstmt.setString(3, post_date);
			pstmt.setString(4, post_pwd);
			pstmt.setString(5, post_subject);
			pstmt.setString(6, post_text);
			pstmt.setString(6, post_text);
			rs = pstmt.executeQuery();
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public ArrayList<User_board> getList(int pageNumber) {
		String sql = "select * from user_board LIMIT 10";
		ArrayList<User_board> list = new ArrayList<User_board>();
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				User_board user_board = new User_board();
				user_board.setPost_no(rs.getInt(1));
				user_board.setMember_code(rs.getInt(2));
				user_board.setPost_date(rs.getString(3));
				user_board.setPost_pwd(rs.getString(4));
				user_board.setPost_subject(rs.getString(5));
				user_board.setPost_text(rs.getString(6));
				user_board.setPost_file(rs.getString(7));
				list.add(user_board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean nextPage(int pageNumber) {
		String sql = "select * from user_board LIMIT 10";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public User_board getUser_board(int member_code) {
		String sql = "select * from user_board where member_code =?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, member_code);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				User_board user_board = new User_board();
				user_board.setPost_no(rs.getInt(1));
				user_board.setMember_code(member_code);
				user_board.setPost_date(rs.getString(3));
				user_board.setPost_pwd(rs.getString(4));
				user_board.setPost_subject(rs.getString(5));
				user_board.setPost_text(rs.getString(6));
				return user_board;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
