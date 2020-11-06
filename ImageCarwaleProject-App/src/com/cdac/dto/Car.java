package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "car")
public class Car {
	@Id
	@Column(name = "car_id")
	@GeneratedValue
	private int carId;
	
	@Column(name = "car_name")
	private String carName;
	
	@Column(name = "brand_name")
	private String brandName;
	
	@Column(name = "fuel_type")
	private String fuelType;

	@Column(name ="seating_capcity" )
	private int seatingCapcity;
	
	@Column(name="price")
	private float price;
	private int userId;
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Car(int carId) {
		super();
		this.carId = carId;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
		
}
