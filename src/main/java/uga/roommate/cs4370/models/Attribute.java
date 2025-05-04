package uga.roommate.cs4370.models;

/**
 * Represent an user attribute 
 */
public class Attribute {
    private int attrId;
    private String name;
    private String category;

    public Attribute(int attrId, String name, String category) {
        this.attrId = attrId;
        this.name = name;
        this.category = category;
    }

    public int getAttrId() {
        return attrId;
    }

    public void setAttrId(int attrId) {
        this.attrId = attrId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    private boolean selected;

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
