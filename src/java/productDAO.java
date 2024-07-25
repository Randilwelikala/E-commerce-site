
import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Acer
 */
public class productDAO {
    private String jdbcurl="jdbc:mysql://localhost:3306/shop?useSSL=false";
    private String jdbcusername="root";
    private String jdbcpassword= "";
    
    private static final String SELECT_ALL_PRODUCTS = "select * from products";
    
    protected Connection getConnection(){
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcurl,jdbcusername,jdbcpassword);
            
        }catch (SQLException e){
            e.printStackTrace();
            
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        return connection;
        
    }
    
    public List<product> selectallProducts() throws SQLException{
        List<product> products=new ArrayList<>();
        product product=null;
        try{
            Connection connection = getConnection();
            PreparedStatement prepare = connection.prepareStatement(SELECT_ALL_PRODUCTS);
            ResultSet rs=prepare.executeQuery();
            
            while(rs.next()){
                int id=rs.getInt("id");
                String name=rs.getString("name");
                String price = rs.getString("price");
                String des=rs.getString("des");
                products.add(new product(name,price,des));
                
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            
        }
        return products;
    } 
    
    
}
