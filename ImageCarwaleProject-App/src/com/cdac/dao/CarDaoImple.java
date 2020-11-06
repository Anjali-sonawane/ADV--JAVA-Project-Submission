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

@Repository
public class CarDaoImple implements CarDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public void insertCar(Car car) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(car);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public void deleteCar(int carId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Car(carId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public Car selectCar(int carId) {
		Car car = hibernateTemplate.execute(new HibernateCallback<Car>() {

			@Override
			public Car doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Car cr = (Car)session.get(Car.class, carId);
				tr.commit();
				session.flush();
				session.close();
				return cr;
			}
			
		});
		
		return car;
	}

	@Override
	public void updateCar(Car car) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.update(car);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
			
		});
		
	}
	@Override
	public List<Car> selectAll(int userId) {
		List<Car> carList = hibernateTemplate.execute(new HibernateCallback<List<Car>>() {

			@Override
			public List<Car> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Car where userId = ?");
				q.setInteger(0, userId);
				List<Car> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return carList;
	}
	
					
}	
	
	
	
	

