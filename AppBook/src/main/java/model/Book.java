package model;

public class Book {
	private int book_id;
	private String book_name;
	private Category book_category;
	private String book_author;
	private String book_image;
	private double book_price;
	private double book_original_price;
	private double book_discount_price;
	private String book_notes;
	private String book_status;
	private int book_quantity;

	public Book() {

	}

	public Book(int book_id, String book_name, Category book_category, String book_author, String book_image,
			double book_price, double book_original_price, double book_discount_price, String book_notes,
			String book_status, int book_quantity) {
		this.book_id = book_id;
		this.book_name = book_name;
		this.book_category = book_category;
		this.book_author = book_author;
		this.book_image = book_image;
		this.book_price = book_price;
		this.book_original_price = book_original_price;
		this.book_discount_price = book_discount_price;
		this.book_notes = book_notes;
		this.book_status = book_status;
		this.book_quantity = book_quantity;
	}

	public Book(String book_name, Category book_category, String book_author, String book_image, double book_price,
			String book_notes, String book_status, int book_quantity) {
		this.book_name = book_name;
		this.book_category = book_category;
		this.book_author = book_author;
		this.book_image = book_image;
		this.book_price = book_price;
		this.book_notes = book_notes;
		this.book_status = book_status;
		this.book_quantity = book_quantity;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public Category getBook_category() {
		return book_category;
	}

	public void setBook_category(Category book_category) {
		this.book_category = book_category;
	}

	public String getBook_author() {
		return book_author;
	}

	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}

	public String getBook_image() {
		return book_image;
	}

	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}

	public double getBook_price() {
		return book_price;
	}

	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}

	public double getBook_original_price() {
		return book_original_price;
	}

	public void setBook_original_price(double book_original_price) {
		this.book_original_price = book_original_price;
	}

	public double getBook_discount_price() {
		return book_discount_price;
	}

	public void setBook_discount_price(double book_discount_price) {
		this.book_discount_price = book_discount_price;
	}

	public String getBook_notes() {
		return book_notes;
	}

	public void setBook_notes(String book_notes) {
		this.book_notes = book_notes;
	}

	public String getBook_status() {
		return book_status;
	}

	public void setBook_status(String book_status) {
		this.book_status = book_status;
	}

	public int getBook_quantity() {
		return book_quantity;
	}

	public void setBook_quantity(int book_quantity) {
		this.book_quantity = book_quantity;
	}

	@Override
	public String toString() {
		return "Book [book_id=" + book_id + ", book_name=" + book_name + ", book_category=" + book_category
				+ ", book_author=" + book_author + ", book_image=" + book_image + ", book_price=" + book_price
				+ ", book_original_price=" + book_original_price + ", book_discount_price=" + book_discount_price
				+ ", book_notes=" + book_notes + ", book_status=" + book_status + ", book_quantity=" + book_quantity
				+ "]";
	}

}
