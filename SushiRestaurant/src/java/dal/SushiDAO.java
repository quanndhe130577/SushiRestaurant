/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import model.Sushi;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 Purpose : Get information about sushi from database 
 Created on : 16/03/2020
 Author     : quanndhe130577
 */
public class SushiDAO extends DBContext {

    // get one sushi by id
    public Sushi getSushiByID(int id) throws SQLException, Exception {
        try {
            String query = "SELECT * FROM Sushi WHERE Id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Sushi sushi = new Sushi(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("shortDes"),
                        rs.getString("detailDes"),
                        rs.getString("price"));
                return sushi;
            }
        } catch (Exception e) {
            throw e;
        } 
        return null;
    }

    //get number of sushi
    public int getSushiMax() throws SQLException, Exception {
        int count = 0;
        try {
            String query = "SELECT COUNT(Id) FROM Sushi";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        }
    }
    
    //get sushi following page
    public List<Sushi> getListSuShiPaging(int pageIndex, int pageSize) throws SQLException, Exception {
        List<Sushi> list = new ArrayList<>();
        try {
            String query = "select *from("
                    + "select ROW_NUMBER() over (order by ID ASC) as rn, *\n"
                    + "from Sushi \n"
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
                Sushi sushi = new Sushi(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("shortDes"),
                        rs.getString("detailDes"),
                        rs.getString("price"));
                list.add(sushi);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } 
    }
}
