package com.yunmel.tools.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/*Description:
 * @Target：指定注解的使用范围(指的是，在哪些类型可以使用该注解：Service注解只能在类，接口（包括注解类型）或enum等使用)
 * 可选值：
 * 可选的值在枚举类 ElemenetType 中，包括： 
          ElemenetType.CONSTRUCTOR 构造器声明 
          ElemenetType.FIELD 域声明（包括 enum 实例） 
          ElemenetType.LOCAL_VARIABLE 局部变量声明
          ElemenetType.ANNOTATION_TYPE 作用于注解量声明
          ElemenetType.METHOD 方法声明
          ElemenetType.PACKAGE 包声明 
          ElemenetType.PARAMETER 参数声明 
          ElemenetType.TYPE 类，接口（包括注解类型）或enum声明 

 * */

@Target(ElementType.TYPE)
/*
 * Description:
 * 
 * @Retention ：表示在什么级别保存该注解信息 可选的参数值在枚举类型 RetentionPolicy 中，包括：
 * RetentionPolicy.SOURCE 注解将被编译器丢弃 RetentionPolicy.CLASS 注解在class文件中可用，但会被VM丢弃
 * RetentionPolicy.RUNTIME VM将在运行期也保留注释，因此可以通过反射机制读取注解的信息。
 */
@Retention(RetentionPolicy.RUNTIME)

/*
 * @Documented 将此注解包含在 javadoc 中 ，它代表着此注解会被javadoc工具提取成文档。
 * 在doc文档中的内容会因为此注解的信息内容不同而不同。相当与@see,@param 等。
 */
@Documented
public @interface Service {
	/*
	 * @interface用来声明一个注解，其中的每一个方法实际上是声明了一个配置参数。
	 * 方法的名称就是参数的名称，返回值类型就是参数的类型（返回值类型只能是基本类型、Class、String、enum）。
	 * 可以通过default来声明参数的默认值。
	 */
	String value() default "this is service annotation";
}