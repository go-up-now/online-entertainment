package com.poly.utils;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RR {
	public static Map<Long, HttpServletRequest> reqs = new HashMap();
	public static Map<Long, HttpServletResponse> resps = new HashMap();
	
	static public void add(ServletRequest request, ServletResponse response) {
		Long id = Thread.currentThread().getId();
		reqs.put(id, (HttpServletRequest) request);
		resps.put(id, (HttpServletResponse) response);
	}
	
	static public void remove() {
		Long id = Thread.currentThread().getId();
		reqs.remove(id);
		resps.remove(id);
	}

	static public HttpServletRequest getRequest() {
		Long id = Thread.currentThread().getId();
		return reqs.get(id);
	}

	static public HttpServletResponse getResponse() {
		Long id = Thread.currentThread().getId();
		return resps.get(id);
	}
}
