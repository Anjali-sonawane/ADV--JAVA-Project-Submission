package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.newLaunchDao;
import com.cdac.dto.NewCarLaunch;

@Service
public class NewLaunchServiceImple implements NewLaunchService {

	@Autowired
	private newLaunchDao newlaunchDao;
	@Override
	public void addNewCar(NewCarLaunch newcar) {
	System.out.println(newcar);
		newlaunchDao.insertNewCar(newcar);
		
	}

	@Override
	public List<NewCarLaunch> selectAllNewCar() {
		return newlaunchDao.selectAllNewCar();
	}

	@Override
	public List<NewCarLaunch> selectCar(String brandName) {
		
		return newlaunchDao.selectCar(brandName);
	}
/*
	@Override
	public void uploadImage(String profilePic, int userId) {
		newlaunchDao.uploadImage(profilePic, userId);
	}
	
	*/

}
