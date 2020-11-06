package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Car;

public interface CarDao {
	void insertCar(Car car);
	void deleteCar(int carId);
	Car selectCar(int carId);
	void updateCar(Car car);
	List<Car> selectAll(int userId);
}
