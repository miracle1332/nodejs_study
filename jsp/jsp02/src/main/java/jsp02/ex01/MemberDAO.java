package jsp02.ex01;

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
   public List listMembers() {
      List list=new ArrayList();
      try {
         con=dataFactory.getConnection(); //DataSource를 이용해 데이터베이스 연결
         String query="select * from member_list";
         pstmt=con.prepareStatement(query);
         ResultSet rs=pstmt.executeQuery(query);//미리설정한 SQL문을 실행
         while(rs.next()) {
            String id=rs.getString("id");
            String pwd=rs.getString("pwd");
            String name=rs.getString("name");
            String email=rs.getString("email");
            Date joinDate=rs.getDate("joindate");//sql의 Date임
            MemberBean bean=new MemberBean();
            bean.setId(id);
            bean.setPwd(pwd);
            bean.setName(name);
            bean.setEmail(email);
            bean.setJoinDate(joinDate);
            list.add(bean);
         }
         rs.close();
         pstmt.close();
         con.close();
      }catch (Exception e) {
         System.out.println("자료처리중 에러발생");
      }
      return list;
   };
   
   //회원정보 등록하는 메소드
   public void addMember (MemberBean memberBean) {
      try {
         con=dataFactory.getConnection();
         String id=memberBean.getId();
         String pwd=memberBean.getPwd();
         String name=memberBean.getName();
         String email=memberBean.getEmail();
         String query="insert into member_list (id, pwd, name, email) values(?,?,?,?)";
         pstmt=con.prepareStatement(query);
         pstmt.setString(1, id);//1은 query문의 첫번째 물음표를 뜻함, 첫번째 물음표에는 id값을 넘겨줌
         pstmt.setString(2, pwd);
         pstmt.setString(3, name);
         pstmt.setString(4, email);
         pstmt.executeUpdate()   ;
         pstmt.close();
      }catch(Exception e) {
         System.out.println("회원등록중 에러");
      }
   }
   
   //회원정보 삭제하는 메서드
   public void delMember(String id) {
	   try {
		  con=dataFactory.getConnection(); //데이터연결작업은 미리 서버에서 해놓고 다리만 놓아주는것.
		  String query="delete from member_list where id=?";
		  pstmt=con.prepareStatement(query);
		  pstmt.setString(1, id);
		  pstmt.executeUpdate();
		  pstmt.close();
	   }catch (Exception e){
		   System.out.println("삭제 중 에러발생");
	   }
   }

}