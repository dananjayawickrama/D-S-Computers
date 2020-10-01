
package Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    
      public static Connection connect()
         {
            Connection conn = null;
        
         try
         {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/d_s_computers","root","");
             System.out.println("Connect");
         }
         catch (Exception e)
         {
            System.out.println(e);
            System.out.println("Database Not Connected!");
         }
        
        
        
        return conn;
        
         }
}
    
    