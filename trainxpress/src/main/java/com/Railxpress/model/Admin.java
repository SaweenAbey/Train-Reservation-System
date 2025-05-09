package tModel;

public class Admin extends Person{

	private int AdminId;
	private String Rank;
	private String Qualification;
	private String adminUsername;
	private String adminPassword;

	public int getAdminId() {
		return AdminId;
	}

	public void setAdminId(int AdminId) {
		this.AdminId = AdminId;
	}
	
	public String getAdminUsername() {
		return adminUsername;
	}

	public void setAdminUsername(String adminUsername) {
		this.adminUsername = adminUsername;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public String getRank() {
		return Rank;
	}

	public void setRank(String rank) {
		Rank = rank;
	} 

	public String getQualification() {
		return Qualification;
	}

	public void setQualification(String qualification) {
		Qualification = qualification;
	}
	
	
		
}
