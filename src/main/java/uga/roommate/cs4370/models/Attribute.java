package uga.roommate.cs4370.models;

public class Attribute {
    private int attrId;
    private String name;
<<<<<<< HEAD
    private String category;

    public Attribute(int attrId, String name, String category) {
        this.attrId = attrId;
        this.name = name;
        this.category = category;
=======

    public Attribute(int attrId, String name) {
        this.attrId = attrId;
        this.name = name;
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
    }

    public int getAttrId() {
        return attrId;
    }

<<<<<<< HEAD
    public void setAttrId(int attrId) {
        this.attrId = attrId;
    }

=======
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
    public String getName() {
        return name;
    }

<<<<<<< HEAD
    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

=======
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
    private boolean selected;

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
