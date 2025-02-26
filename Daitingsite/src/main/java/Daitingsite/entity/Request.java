package Datingsite.entity;

public class Request {
	int sender;
	int accepter;
	public int getSender() {
		return sender;
	}
	public void setSender(int sender) {
		this.sender = sender;
	}
	public int getAccepter() {
		return accepter;
	}
	public void setAccepter(int accepter) {
		this.accepter = accepter;
	}
	@Override
	public String toString() {
		return "Request [sender=" + sender + ", accepter=" + accepter + "]";
	}
	public Request(int sender, int accepter) {
		super();
		this.sender = sender;
		this.accepter = accepter;
	}
	public Request() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
