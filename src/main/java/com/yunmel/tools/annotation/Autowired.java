package com.yunmel.tools.annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD,ElementType.FIELD})  
@Retention(RetentionPolicy.RUNTIME)  
public @interface Autowired {
      public String value() default "no description";  
}