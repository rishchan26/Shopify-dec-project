package edu.osu.cse5234.model;

public class PaymentInfo {
	String cardNumber;
	String expirationDate;
	String cvvCode;
	String cardHolderName;

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getCvvCode() {
		return cvvCode;
	}

	public void setCvvCode(String cvvCode) {
		this.cvvCode = cvvCode;
	}

	public String getCardHolderName() {
		return cardHolderName;
	}

	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}
}
