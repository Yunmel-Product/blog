package com.yunmel.test;

import com.yunmel.tools.bean.BeanFactory;
import com.yunmel.tools.utils.AnnotationDriven;

public class Test {
	public static void main(String[] args) throws Exception {
		// 启动时根据需要扫描的包名，来注入含有注解的类的字段值
		AnnotationDriven.annotationDriven("com.yunmel.test");
		// 这里相当于web的访问一次controller的一次请求
		UserContrller user = (UserContrller) BeanFactory.getBean("com.yunmel.test.UserContrller");
		user.login();
	}
}
