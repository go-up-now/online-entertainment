package com.poly.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

public class XParam {
	static public String getString(String name) {
		HttpServletRequest req = RR.getRequest();
		return req.getParameter(name);
	}
	
	static public Integer getInteger(String name) {
		return  Integer.valueOf(getString(name));
	}
	
	static public Double getDouble(String name) {
		return  Double.valueOf(getString(name));
	}
	
	static public Boolean getBoolean(String name) {
		return  Boolean.valueOf(getString(name));
	}
	
	static public Date getDate(String name, String pattern) {
	    try {
	    	HttpServletRequest req = RR.getRequest();
	        String value = req.getParameter(name);
	        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	        Date date = sdf.parse(value);
	        return date;
	    } catch (Exception e) {
	        throw new RuntimeException();
	    }
	}
	
	static public File getFile(String name, String folder) {
		try {
			HttpServletRequest req = RR.getRequest();
			Part part = req.getPart(name);
			String dir = req.getServletContext().getRealPath(folder);
			File file = new File(dir, part.getSubmittedFileName());
			
			if (!file.exists()) {
				file.mkdirs();
			}
			
			part.write(file.getAbsolutePath());
			System.out.println(file.getAbsolutePath());
			return file;
		} catch (Exception e) {
			System.out.println("lỗi file: " + e.getMessage());
			throw new RuntimeException();
		}
	}
	
	public static <B> B getBean(Class<B> classBean, String partten) {
		try {
			DateConverter converter = new DateConverter();
			converter.setPattern(partten);
			ConvertUtils.register(converter, Date.class);
			
			B bean = classBean.getDeclaredConstructor().newInstance();
			HttpServletRequest req = RR.getRequest();
			BeanUtils.populate(bean, req.getParameterMap());
			return bean;
		} catch (Exception e) {
			System.out.println("loi: "+e.getMessage());
			throw new RuntimeException(e);
		}
	}
}
