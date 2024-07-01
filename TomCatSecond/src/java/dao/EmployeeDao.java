package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DbUtil;

public class EmployeeDao {

//    Dao = Data Access Object
    
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";
    
    public static int saveData(Employee e){
        
        int status = 0;
        
        sql = "insert into employee(name, email,address) values(?,?,?)";
        
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getAddress());
            
            status = ps.executeUpdate();
            
            System.out.println(status);
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return status;
        
    }
    
    public static List<Employee> viewAllEmployee(){
        List<Employee> emList = new ArrayList<>();
        
        sql = "select * from employee";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Employee e = new Employee(
                        rs.getInt("id"), 
                        rs.getString("name"), 
                        rs.getString("email"), 
                        rs.getString("address")
                );
                
                emList.add(e);
                
            }

            System.out.println(emList);
            
            rs.close();
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return emList;
    }
}
