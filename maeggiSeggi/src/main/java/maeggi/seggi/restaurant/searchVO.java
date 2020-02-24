package maeggi.seggi.restaurant;

public class searchVO {
	String title;
    String link;
    String category;
    String description;
    String telephone;
    String address;
    
    public searchVO() {
    	
    }

	public searchVO(String title, String link, String category, String description, String telephone, String address) {
		super();
		this.title = title;
		this.link = link;
		this.category = category;
		this.description = description;
		this.telephone = telephone;
		this.address = address;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "searchVO [title=" + title + ", link=" + link + ", category=" + category + ", description=" + description
				+ ", telephone=" + telephone + ", address=" + address + "]";
	}
    
    
}
