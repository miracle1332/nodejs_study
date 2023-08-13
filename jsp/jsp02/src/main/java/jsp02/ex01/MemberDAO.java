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
   public List listMembers() {
      List list=new ArrayList();
      try {
         con=dataFactory.getConnection(); //DataSource�� �̿��� �����ͺ��̽� ����
         String query="select * from member_list";
         pstmt=con.prepareStatement(query);
         ResultSet rs=pstmt.executeQuery(query);//�̸������� SQL���� ����
         while(rs.next()) {
            String id=rs.getString("id");
            String pwd=rs.getString("pwd");
            String name=rs.getString("name");
            String email=rs.getString("email");
            Date joinDate=rs.getDate("joindate");//sql�� Date��
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
         System.out.println("�ڷ�ó���� �����߻�");
      }
      return list;
   };
   
   //ȸ������ ����ϴ� �޼ҵ�
   public void addMember (MemberBean memberBean) {
      try {
         con=dataFactory.getConnection();
         String id=memberBean.getId();
         String pwd=memberBean.getPwd();
         String name=memberBean.getName();
         String email=memberBean.getEmail();
         String query="insert into member_list (id, pwd, name, email) values(?,?,?,?)";
         pstmt=con.prepareStatement(query);
         pstmt.setString(1, id);//1�� query���� ù��° ����ǥ�� ����, ù��° ����ǥ���� id���� �Ѱ���
         pstmt.setString(2, pwd);
         pstmt.setString(3, name);
         pstmt.setString(4, email);
         pstmt.executeUpdate()   ;
         pstmt.close();
      }catch(Exception e) {
         System.out.println("ȸ������� ����");
      }
   }
   
   //ȸ������ �����ϴ� �޼���
   public void delMember(String id) {
	   try {
		  con=dataFactory.getConnection(); //�����Ϳ����۾��� �̸� �������� �س��� �ٸ��� �����ִ°�.
		  String query="delete from member_list where id=?";
		  pstmt=con.prepareStatement(query);
		  pstmt.setString(1, id);
		  pstmt.executeUpdate();
		  pstmt.close();
	   }catch (Exception e){
		   System.out.println("���� �� �����߻�");
	   }
   }

}