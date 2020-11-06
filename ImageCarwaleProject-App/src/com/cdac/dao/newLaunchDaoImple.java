package com.cdac.dao;


import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Car;
import com.cdac.dto.NewCarLaunch;
import com.cdac.dto.User;

@Repository
public class newLaunchDaoImple implements newLaunchDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;




	@Override
	public void insertNewCar(NewCarLaunch newcar) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				System.out.println("======++++++++++");
				Transaction tr = session.beginTransaction();
				session.save(newcar);
				System.out.println(newcar);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}



	@Override
	public List<NewCarLaunch> selectAllNewCar() {
		List<NewCarLaunch> newcars = hibernateTemplate.execute(new HibernateCallback<List<NewCarLaunch>>() {

			@Override
			public List<NewCarLaunch> doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from NewCarLaunch");
				
				List<NewCarLaunch> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return newcars;
			

	}
	
	@Override
	public List<NewCarLaunch> selectCar(String brandName) {
		List<NewCarLaunch> carList = hibernateTemplate.execute(new HibernateCallback<List<NewCarLaunch>>() {

			@Override
			public List<NewCarLaunch> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from NewCarLaunch where brandName = ?");
				q.setString(0, brandName);
				
				List<NewCarLaunch> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return carList;
	}
/*
	@Override
	public void uploadImage(String profilePic,int userId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				User user = (User)session.get(User.class, userId);
				user.setProfilePic(profilePic); 
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}
*/

	}


	
	

