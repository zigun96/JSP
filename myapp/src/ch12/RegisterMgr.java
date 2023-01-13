package ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*연결된 DB 활용*/
public class RegisterMgr {
	private DBConnectionMgr pool;
	
	public RegisterMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.println("Error : 커넥션 연결 실패");
		}
	}
	/*SQL질의문 변수에 대입 후 결과 가져오기*/
	public boolean loginRegister(String id, String pwd) {
		Connection con = null;
		/*객체에 캐시를 담아 재사용, 쿼리를 반복 사용할 수 있다.*/
		PreparedStatement pstmt = null;
		/*executeQuery의 결과값 저장해주는 타입*/
		ResultSet rs = null;
		/*연결 로그인 여부*/
		boolean loginCon = false;
		try {
			con = pool.getConnection();
			/*매개변수 표시문자 물음표(?)를 통해 동적 SQL문을 작성할 수 있다.*/
			String query = "select count(*) from tblRegister where id = ? and pwd = ?";
			/*연결 후 쿼리 실행*/
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()&&rs.getInt(1)>0)
				loginCon = true;
		} catch(Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			/*쿼리 실행*/
			pool.freeConnection(con, pstmt, rs);
		}
		return loginCon;
	}
}
