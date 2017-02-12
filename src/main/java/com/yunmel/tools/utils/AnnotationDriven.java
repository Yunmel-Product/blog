package com.yunmel.tools.utils;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.List;

import com.yunmel.tools.annotation.Autowired;
import com.yunmel.tools.annotation.Controller;
import com.yunmel.tools.annotation.Service;
import com.yunmel.tools.bean.BeanFactory;

public class AnnotationDriven {
	public static void annotationDriven(String packName) throws Exception {
		// 注入Service和Contrller
		List<Class<?>> classSaveServicePaths = PackUtils.getClassListByAnnotation(packName, Service.class);
		List<Class<?>> classSaveContrllerPaths = PackUtils.getClassListByAnnotation(packName, Controller.class);
		saveBean(classSaveServicePaths);
		saveBean(classSaveContrllerPaths);
		// 注入Autowired
		List<Class<?>> classInjectPaths = PackUtils.getClassListByAnnotation(packName, Autowired.class);
		inject(classInjectPaths);
	}

	private static void saveBean(List<Class<?>> classSavePaths) throws InstantiationException, IllegalAccessException {
		for (Class<?> classPath : classSavePaths) {
			try {
				Class<?> c = Class.forName(classPath.getName());
				Object o = c.newInstance();
				// 扫描的到的含有注解的类实例化后保存在池中
				BeanFactory.addBean(classPath.getName(), o);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
	}

	private static void inject(List<Class<?>> classInjectPaths) throws Exception {
		Object o = null;
		for (Class<?> classInjectPath : classInjectPaths) {

			Class<?> c = Class.forName(classInjectPath.getName());
			// 判断存放bean的池中是否存在该bean
			if (BeanFactory.containsBean(classInjectPath.getName())) {
				o = BeanFactory.getBean(classInjectPath.getName());
			} else {
				o = c.newInstance();
			}
			Field[] fields = c.getDeclaredFields();
			for (Field field : fields) {
				Annotation[] annotations = field.getAnnotations();
				for (Annotation annotation : annotations) {
					// 判断是否是通过类型注解注入
					if (annotation instanceof Autowired) {
						Class<?> classField = field.getType();
						Object clazz = BeanFactory.getBean(classField.getName());
						field.set(o, clazz);
						BeanFactory.addBean(classInjectPath.getName(), o);
					}
				}
			}

		}
	}
}