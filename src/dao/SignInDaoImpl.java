package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import factory.ConnectionFactory;
import model.SignInBean;

public class SignInDaoImpl implements signInDAO{
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;

	@Override
	public SignInBean logIn(SignInBean sBean) {
		
		con=ConnectionFactory.getInstance().getConnection();
		try{
			
			String sql="select * from BDO where username=? and password=? and role=?";
			pst=con.prepareStatement(sql);
			pst.setString(1, sBean.getUsername());
			pst.setString(2, sBean.getPassword());
			pst.setString(3, sBean.getRole());
			
			rs=pst.executeQuery();
			boolean more;
			more=rs.next();
			if(more){
				sBean.setFirstname(rs.getString(4));
				sBean.setLastname(rs.getString(5));
				sBean.setArea(rs.getString(6));
				
				sBean.setValid(true);
			}
			else if(!more){
				sBean.setValid(false);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return sBean;
	}
	

}
