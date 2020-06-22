package com.dealership;

public class Car {
	private String inventoryNumber;
	private String brand;
	private String model;
	private String type;
	private String engineType;
	private String transmission;
	private String description;
	private Image []img;
	private double mileage;
	private double price;
	private String condition;
	private boolean placeaBit;
	
	
	public Car() {
		super();
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getEngineType() {
		return engineType;
	}


	public void setEngineType(String engineType) {
		this.engineType = engineType;
	}


	public String getTransmission() {
		return transmission;
	}


	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public double getMileage() {
		return mileage;
	}


	public void setMileage(double mileage) {
		this.mileage = mileage;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}








	public boolean isPlaceaBit() {
		return placeaBit;
	}


	public void setPlaceaBit(boolean placeaBit) {
		this.placeaBit = placeaBit;
	}


	public Image[] getImg() {
		return img;
	}


	public void setImg(Image[] img) {
		this.img = img;
	}


	public void setCondition(String parameter) {
		// TODO Auto-generated method stub
		
	}


	public String getCondition() {
		return condition;
	}


	public String getInventoryNumber() {
		return inventoryNumber;
	}


	public void setInventoryNumber(String inventoryNumber) {
		this.inventoryNumber = inventoryNumber;
	}
	
	
	
}
