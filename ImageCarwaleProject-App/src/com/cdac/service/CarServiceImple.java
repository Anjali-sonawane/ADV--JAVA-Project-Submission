package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.CarDao;

import com.cdac.dto.Car;


@Service
public class CarServiceImple implements CarService {

	@Autowired
	private CarDao carDao;
	
	@Override
	public void addCar(Car car) {
		carDao.insertCar(car);
		
	}

	@Override
	public void removeCar(int carId) {
		carDao.deleteCar(carId);
		
	}

	@Override
	public Car findCar(int carId) {
		
		return carDao.selectCar(carId);
	}

	@Override
	public void modifyCar(Car car) {
		carDao.updateCar(car);
		
	}

	@Override
	public List<Car> selectAll(int userId) {
		
		return carDao.selectAll(userId);
	}

	

	

	
}
	
	
