package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Car;
import com.cdac.dto.NewCarLaunch;

public interface newLaunchDao {

	void insertNewCar(NewCarLaunch newcar);
	List<NewCarLaunch> selectAllNewCar();
	List<NewCarLaunch> selectCar(String brandName);
	//void uploadImage(String profilePic,int userId);
}
