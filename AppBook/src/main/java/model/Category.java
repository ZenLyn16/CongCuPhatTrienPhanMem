package model;

public class Category {
	private int category_id;
	private String category_name;
	private int category_quantity;

	public Category() {

	}

	public Category(int category_id, String category_name, int category_quantity) {
		this.category_id = category_id;
		this.category_name = category_name;
		this.category_quantity = category_quantity;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public int getCategory_quantity() {
		return category_quantity;
	}

	public void setCategory_quantity(int category_quantity) {
		this.category_quantity = category_quantity;
	}

	@Override
	public String toString() {
		return "Category [category_id=" + category_id + ", category_name=" + category_name + ", category_quantity="
				+ category_quantity + "]";
	}

}
