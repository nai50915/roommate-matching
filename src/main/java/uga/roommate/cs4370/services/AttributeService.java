package uga.roommate.cs4370.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uga.roommate.cs4370.models.Attribute;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * This is a service class to assist in building the attribute page.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class AttributeService {
    private final DataSource dataSource;

    @Autowired
    public AttributeService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * Retrieve all attributes from database
     * 
     * @return list of attributes 
     */
    public List<Attribute> getAllAttributes() {
        List<Attribute> attributes = new ArrayList<>();
        String sql = "SELECT attrId, name, category FROM allUserAttributes";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                attributes.add(new Attribute(
                        rs.getInt("attrId"),
                        rs.getString("name"),
                        rs.getString("category")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attributes;
    }

    /**
     * Get attributeIds that user selected
     * 
     * @param userId
     * @return attributeIds list of selected attr 
     */
    public List<Integer> getUserAttributeIds(String userId) {
        List<Integer> attributeIds = new ArrayList<>();
        String sql = "SELECT attrId FROM userAttributes WHERE userId = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    attributeIds.add(rs.getInt("attrId"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attributeIds;
    }

    /**
     * Update database with newly selected attributes for user 
     * 
     * @param userId
     * @param attributeIds
     */
    public void updateUserAttributes(String userId, List<Integer> attributeIds) {
        String deleteSql = "DELETE FROM userAttributes WHERE userId = ?";
        String insertSql = "INSERT INTO userAttributes (userId, attrId) VALUES (?, ?)";

        try (Connection conn = dataSource.getConnection()) {
            conn.setAutoCommit(false); 

            try (PreparedStatement del = conn.prepareStatement(deleteSql)) {
                del.setString(1, userId);
                del.executeUpdate();
            }

            for (Integer attrId : attributeIds) {
                try (PreparedStatement ins = conn.prepareStatement(insertSql)) {
                    ins.setString(1, userId);
                    ins.setInt(2, attrId);
                    ins.executeUpdate();
                }
            }

            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Get all attributes with selection
     * 
     * @param userId
     * @return
     */
    public List<Attribute> getAllAttributesWithSelection(String userId) {
        List<Integer> selectedIds = getUserAttributeIds(userId);
        List<Attribute> all = getAllAttributes();

        for (Attribute attr : all) {
            attr.setSelected(selectedIds.contains(attr.getAttrId()));
        }

        return all;
    }
}
