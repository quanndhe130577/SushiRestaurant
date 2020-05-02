/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 Purpose : Get visit count from database 
 Created on : 19/03/2020
 Author     : quanndhe130577
 */
public class VisitCountDAO extends DBContext {

    // get visit count 
    public int getVisitCount() throws SQLException {
        int count = 0;
        String sql = "SELECT number FROM visit_count";
        Statement st;
        try {
            st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                count = rs.getInt("number");
            }
        } catch (SQLException ex) {
            Logger.getLogger(VisitCountDAO.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        return count;
    }

    public void updateVisitCount(int number) {
        String sql = " UPDATE visit_count SET number = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, number);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(VisitCountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
