package com.hibernate.chapter3;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class CompoundKey implements Serializable {

	private int userId;
	private int accountId;

	public CompoundKey(int userId, int accountId) {
		this.userId = userId;
		this.accountId = accountId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getAccountId() {
		return this.accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
}
