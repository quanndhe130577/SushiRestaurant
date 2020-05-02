
package dal;

import model.Share;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 Purpose : Get information about Share from database 
 Created on : 19/03/2020
 Author     : quanndhe130577
 */

public class ShareDAO extends DBContext{
    
    // get link share from database
     public List<Share> getShare() throws Exception {
        ArrayList<Share> list = new ArrayList<>();
        try {
            String query = "select * from Share";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Share share = new Share(rs.getString("icon"),
                        rs.getString("socialNetwork"),
                        rs.getString("URL"));
                list.add(share);
            }
            return list;
        } catch (Exception e) {
           throw e;
        } finally {
            connection.close();
        }
    }
}
