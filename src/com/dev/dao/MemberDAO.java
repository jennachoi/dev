package com.dev.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dev.vo.MemberVO;

public class MemberDAO { // DB 처리기능

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;

	private static MemberDAO dao = new MemberDAO();

	private MemberDAO() {
	}

	public static MemberDAO getInstance() {
		return dao;
	}

	// 연결처리 Connection 객체
	private void connect() {
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB에 insert
	public void insertMember(MemberVO member) {
		connect();
		String SQL = "insert into member_b values(?,?,?,?)";
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPasswd());
			psmt.setString(3, member.getName());
			psmt.setString(4, member.getMail());
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력됨.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	// resource 반환
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
