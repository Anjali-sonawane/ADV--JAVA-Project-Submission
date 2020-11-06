package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NewCarLaunch")
public class NewCarLaunch {
	
	@Id
	@Column(name = "car_id")
	@GeneratedValue
	private int carId;
	
	@Column(name = "New_car_name")
	private String newcarName;
	
	@Column(name="price")
	private float price;
	
	@Column(name = "brand_name")
	private String brandName;
	
	@Column(name = "fuel_type")
	private String fuelType;

	@Column(name ="seating_capcity" )
	private int seatingCapcity;
	
	@Column(name = "engine")
	private String engine;
	
	@Column(name = "transmission")
	private String transmission;
	
	@Column(name = "car_image")
	private String carimage;
	private int userId;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public NewCarLaunch() {
		
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	
	public String getNewcarName() {
		return newcarName;
	}
	public void setNewcarName(String newcarName) {
		this.newcarName = newcarName;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public int getSeatingCapcity() {
		return seatingCapcity;
	}
	public void setSeatingCapcity(int seatingCapcity) {
		this.seatingCapcity = seatingCapcity;
	}
	
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public String getTransmission() {
		return transmission;
	}
	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}
	
	
	public String getCarimage() {
		return carimage;
	}
	public void setCarimage(String carimage) {
		this.carimage = carimage;
	}
	@Override
	public String toString() {
		return "NewCarLaunch [carId=" + carId + ", newcarName=" + newcarName + ", price=" + price + ", brandName="
				+ brandName + ", fuelType=" + fuelType + ", seatingCapcity=" + seatingCapcity + ", engine=" + engine
				+ ", transmission=" + transmission + ", carimage=" + carimage + ", userId=" + userId + "]";
	}
	
	
	
	
	
	
	

}
