package com.yunmel.tools.bean;

import java.util.HashMap;
import java.util.Map;

public class BeanFactory {
	private static Map<String, Object> map = new HashMap<String, Object>();

	public static void addBean(String beanName, Object bean) {
		map.put(beanName, bean);
	}

	public static Object getBean(String beanName) throws Exception {
		Object o = map.get(beanName);
		if (o != null) {
			return o;
		} else {
			throw new Exception("未注入的类型:" + beanName);
		}
	}

	public static Boolean containsBean(String beanName) {
		return map.containsKey(beanName);
	}
}