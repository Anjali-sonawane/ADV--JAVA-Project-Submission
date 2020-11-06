package com.cdac.service;

import java.util.List;


import com.cdac.dto.NewCarLaunch;

public interface NewLaunchService {
	void addNewCar(NewCarLaunch newcar);
	List<NewCarLaunch> selectAllNewCar();
	List<NewCarLaunch> selectCar(String brandName);
//	void uploadImage(String profilePic,int userId);
}
