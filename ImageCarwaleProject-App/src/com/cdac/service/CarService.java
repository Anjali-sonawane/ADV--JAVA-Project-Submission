package com.cdac.service;

import java.util.List;

import com.cdac.dto.Car;


public interface CarService {
	void addCar(Car car);
	void removeCar(int carId);
	Car findCar(int carId);
	void modifyCar(Car car);
	List<Car> selectAll(int userId);
	
	
	
}
