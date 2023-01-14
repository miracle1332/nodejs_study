package jsp01.ex02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

   private Connection con;
   private PreparedStatement pstmt; //sql문을 미리 컴파일 했다가 재사용해준다(속도가 빨라짐)
   private DataSource dataFactory;
   
   public MemberDAO() {
      try {
         Context ctx=new InitialContext();
         Context envContext = (Context)ctx.lookup("java:/comp/env");
         dataFactory=(DataSource) envContext.lookup("jdbc/oracle");
      }catch (Exception e) {
         System.out.println("DB연결 실패!!");
      }
   }
   
   //회원정보 목록처리 메소드
   public List<MemberVO> listMembers(MemberVO memberVO) {
     List memberList = new ArrayList();
     String _name = memberVO.getName();
     try {
    	con = dataFactory.getConnection();
    	String query = "select * from member_list";
    	if(_name != null && _name.length() != 0) {
    		query+=" where name=?";
    		pstmt=con.prepareStatement(query);
    		pstmt.setString(1, _name); //1은 첫번째 물음표를 가리키고 _name을 첫번째 물음표값으로 넣겟다는 뜻.
    	}else {
    		pstmt=con.prepareStatement(query); //위if조건을 안만낮기 때문에 첫번쨰 쿼리문.selet....
    	}
    	ResultSet rs = pstmt.executeQuery();
    	while(rs.next()) { //조건이 만족해서 여기로 왓다면 딱 한사람만 조회됫다는것. 데이터의 다음값으로 이동하며 몽땅 출력하기.
    		String id = rs.getString("id");
    		String pwd = rs.getString("pwd");
    		String name = rs.getString("name");
    		String email = rs.getString("email");
    		Date joinDate = rs.getDate("joinDate");//숫자는 테이블의 필드 순서를 의미함.rs.getString(1);그러나 헷갈려서 직접 이름을 씀
    		MemberVO vo = new MemberVO();
    		vo.setId(id);
    		vo.setEmail(email);
    		vo.setJoinDate(joinDate);
    		vo.setName(name);
    		vo.setPwd(pwd);
    		memberList.add(vo);
    	}
    	rs.close();
    	pstmt.close();
    	con.close();
     }catch (Exception e) {
    	 System.out.println("db조회 처리 에러!!");
     }
     return memberList;
   }//listMembers() 메서드 끝;
   

}