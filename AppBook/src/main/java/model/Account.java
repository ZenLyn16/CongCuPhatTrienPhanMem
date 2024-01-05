package model;

public class Account {
	private int account_id;
	private String account_username;
	private String account_password;
	private short account_is_sell;
	private short account_is_admin;

	public Account() {

	}

	public Account(int account_id, String account_username, String account_password, short account_is_sell,
			short account_is_admin) {
		this.account_id = account_id;
		this.account_username = account_username;
		this.account_password = account_password;
		this.account_is_sell = account_is_sell;
		this.account_is_admin = account_is_admin;
	}

	public Account(String account_username, String account_password, short account_is_sell, short account_is_admin) {
		this.account_username = account_username;
		this.account_password = account_password;
		this.account_is_sell = account_is_sell;
		this.account_is_admin = account_is_admin;
	}

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public String getAccount_username() {
		return account_username;
	}

	public void setAccount_username(String account_username) {
		this.account_username = account_username;
	}

	public String getAccount_password() {
		return account_password;
	}

	public void setAccount_password(String account_password) {
		this.account_password = account_password;
	}

	public short getAccount_is_sell() {
		return account_is_sell;
	}

	public void setAccount_is_sell(short account_is_sell) {
		this.account_is_sell = account_is_sell;
	}

	public short getAccount_is_admin() {
		return account_is_admin;
	}

	public void setAccount_is_admin(short account_is_admin) {
		this.account_is_admin = account_is_admin;
	}

	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", account_username=" + account_username + ", account_password="
				+ account_password + ", account_is_sell=" + account_is_sell + ", account_is_admin=" + account_is_admin
				+ "]";
	}

}
