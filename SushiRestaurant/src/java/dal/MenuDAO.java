/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Menu;
/**
 Purpose : Get information about Menu from database 
 Created on : 16/03/2020
 Author     : quanndhe130577
 */
public class MenuDAO extends DBContext {
    // get number of menu
     public int getMenuMax() throws Exception {
        int count = 0;
        try {
            String query = "SELECT COUNT(Id) FROM Menu";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
             throw e;
        }
        return count;
     }
     
     // get menu following page
     public List<Menu> getListMenu(int pageIndex, int pageSize) throws SQLException, Exception {
        List<Menu> list = new ArrayList<>();
        try {
            String query = "select *from("
                + "select ROW_NUMBER() over (order by ID ASC) as rn, *\n"
                + "from Menu\n"
                + ")as x\n"
                + "where rn between (?-1)*?+1"
                + "and ?*?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageIndex);
            ps.setInt(4, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Menu menu = new Menu(rs.getInt("id"), 
                        rs.getString("name"), 
                        rs.getString("price"), 
                        rs.getString("shortDes"), 
                        rs.getString("detailDes"));
                list.add(menu);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } 
    }
     
}
