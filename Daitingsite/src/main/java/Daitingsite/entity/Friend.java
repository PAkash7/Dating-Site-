package Datingsite.entity;

public class Friend {
	int id;
	int sid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	@Override
	public String toString() {
		return "Friend [id=" + id + ", sid=" + sid + "]";
	}
	public Friend(int id, int sid) {
		super();
		this.id = id;
		this.sid = sid;
	}
	public Friend() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
