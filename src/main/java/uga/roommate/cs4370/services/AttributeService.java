package uga.roommate.cs4370.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uga.roommate.cs4370.models.Attribute;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class AttributeService {
    private final DataSource dataSource;

    @Autowired
    public AttributeService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    // Get all available attributes
    public List<Attribute> getAllAttributes() throws SQLException {
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
        }
        return attributes;
    }

    // Get selected attributes for a user (attrIds only)
    public List<Integer> getUserAttributeIds(String userId) throws SQLException {
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
        }
        return attributeIds;
    }

    // Save new attribute selections for user
    public void updateUserAttributes(String userId, List<Integer> attributeIds) throws SQLException {
        String deleteSql = "DELETE FROM userAttributes WHERE userId = ?";
        String insertSql = "INSERT INTO userAttributes (userId, attrId) VALUES (?, ?)";

        try (Connection conn = dataSource.getConnection()) {
            conn.setAutoCommit(false); // begin transaction

            // 1. Delete current user attributes
            try (PreparedStatement del = conn.prepareStatement(deleteSql)) {
                del.setString(1, userId);
                del.executeUpdate();
            }

            // 2. Insert new attribute mappings
            for (Integer attrId : attributeIds) {
                try (PreparedStatement ins = conn.prepareStatement(insertSql)) {
                    ins.setString(1, userId);
                    ins.setInt(2, attrId);
                    ins.executeUpdate();
                }
            }

            conn.commit();
        }
    }

    public List<Attribute> getAllAttributesWithSelection(String userId) throws SQLException {
        List<Integer> selectedIds = getUserAttributeIds(userId);
        List<Attribute> all = getAllAttributes();

        for (Attribute attr : all) {
            attr.setSelected(selectedIds.contains(attr.getAttrId()));
        }

        return all;
    }
}
