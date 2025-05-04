package uga.roommate.cs4370.models;

public class Attribute {
    private int attrId;
    private String name;

    public Attribute(int attrId, String name) {
        this.attrId = attrId;
        this.name = name;
    }

    public int getAttrId() {
        return attrId;
    }

    public String getName() {
        return name;
    }

    private boolean selected;

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
