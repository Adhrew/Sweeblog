package com.clay.entity;

public class Message {
	private Integer message_id;
	private User sender_id;
	private User accept_id;
	private String message_msg;
	private String message_time;
	private String message_status;
	public Integer getMessage_id() {
		return message_id;
	}
	public void setMessage_id(Integer message_id) {
		this.message_id = message_id;
	}
	public User getSender_id() {
		return sender_id;
	}
	public void setSender_id(User sender_id) {
		this.sender_id = sender_id;
	}
	public User getAccept_id() {
		return accept_id;
	}
	public void setAccept_id(User accept_id) {
		this.accept_id = accept_id;
	}
	public String getMessage_msg() {
		return message_msg;
	}
	public void setMessage_msg(String message_msg) {
		this.message_msg = message_msg;
	}
	public String getMessage_time() {
		return message_time;
	}
	public void setMessage_time(String message_time) {
		this.message_time = message_time;
	}
	public String getMessage_status() {
		return message_status;
	}
	public void setMessage_status(String message_status) {
		this.message_status = message_status;
	}
	
}
