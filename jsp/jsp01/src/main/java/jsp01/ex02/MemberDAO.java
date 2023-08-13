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
   private PreparedStatement pstmt; //sql���� �̸� ������ �ߴٰ� �������ش�(�ӵ��� ������)
   private DataSource dataFactory;
   
   public MemberDAO() {
      try {
         Context ctx=new InitialContext();
         Context envContext = (Context)ctx.lookup("java:/comp/env");
         dataFactory=(DataSource) envContext.lookup("jdbc/oracle");
      }catch (Exception e) {
         System.out.println("DB���� ����!!");
      }
   }
   
   //ȸ������ ���ó�� �޼ҵ�
   public List<MemberVO> listMembers(MemberVO memberVO) {
     List memberList = new ArrayList();
     String _name = memberVO.getName();
     try {
    	con = dataFactory.getConnection();
    	String query = "select * from member_list";
    	if(_name != null && _name.length() != 0) {
    		query+=" where name=?";
    		pstmt=con.prepareStatement(query);
    		pstmt.setString(1, _name); //1�� ù��° ����ǥ�� ����Ű�� _name�� ù��° ����ǥ������ �ְٴٴ� ��.
    	}else {
    		pstmt=con.prepareStatement(query); //��if������ �ȸ����� ������ ù���� ������.selet....
    	}
    	ResultSet rs = pstmt.executeQuery();
    	while(rs.next()) { //������ �����ؼ� ����� �Ӵٸ� �� �ѻ���� ��ȸ�̴ٴ°�. �������� ���������� �̵��ϸ� ���� ����ϱ�.
    		String id = rs.getString("id");
    		String pwd = rs.getString("pwd");
    		String name = rs.getString("name");
    		String email = rs.getString("email");
    		Date joinDate = rs.getDate("joinDate");//���ڴ� ���̺��� �ʵ� ������ �ǹ���.rs.getString(1);�׷��� �򰥷��� ���� �̸��� ��
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
    	 System.out.println("db��ȸ ó�� ����!!");
     }
     return memberList;
   }//listMembers() �޼��� ��;
   

}