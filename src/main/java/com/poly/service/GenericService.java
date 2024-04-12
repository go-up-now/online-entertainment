package com.poly.service;

import java.util.List;

public interface GenericService<T> {
	List<T> findALL();
	void insert(T t);
	void update(T t);
	void delete(String id);
	T findById(String id);
}
