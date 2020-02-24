package maeggi.seggi.fridge;

import java.sql.Date;

public class FridgeVO {
	private String refrigerator_id;
	private String name;
	private Date register_date;
	private String member_id;
	private char distinct_code;
	
	public FridgeVO() {
		// TODO Auto-generated constructor stub
	}
	
	public FridgeVO(String name, String member_id) {
		super();
		this.name = name;
		this.member_id = member_id;
	}

	public FridgeVO(String refrigerator_id, char distinct_code) {
		super();
		this.refrigerator_id = refrigerator_id;
		this.distinct_code = distinct_code;
	}

	public FridgeVO(String refrigerator_id, String name, Date register_date, String member_id, char distinct_code) {
		super();
		this.refrigerator_id = refrigerator_id;
		this.name = name;
		this.register_date = register_date;
		this.member_id = member_id;
		this.distinct_code = distinct_code;
	}

	public String getRefrigerator_id() {
		return refrigerator_id;
	}

	public void setRefrigerator_id(String refrigerator_id) {
		this.refrigerator_id = refrigerator_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getRegister_date() {
		return register_date;
	}

	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public char getdistinct_code() {
		return distinct_code;
	}

	public void setdistinct_code(char distinct_code) {
		this.distinct_code = distinct_code;
	}

	@Override
	public String toString() {
		return "FridgeVO [refrigerator_id=" + refrigerator_id + ", name=" + name + ", register_date=" + register_date
				+ ", member_id=" + member_id + ", distinct_code=" + distinct_code + "]";
	}
	
	
}