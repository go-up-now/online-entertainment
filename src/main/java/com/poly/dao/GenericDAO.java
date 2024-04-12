package com.poly.dao;

import java.util.List;

public interface GenericDAO<T> {
	List<T> findALL();
	void insert(T t);
	void update(T t);
	void delete(String id);
	T findById(String id);
}
