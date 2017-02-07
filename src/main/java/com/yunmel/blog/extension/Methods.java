/**
 * jetbrick-template
 * http://subchen.github.io/jetbrick-template/
 *
 * Copyright 2010-2014 Guoqiang Chen. All rights reserved.
 * Email: subchen@gmail.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.yunmel.blog.extension;

import java.util.ArrayList;
import java.util.List;

import com.yunmel.blog.model.BookInfo;
import jetbrick.template.JetAnnotations;
import com.yunmel.blog.dao.DaoUtils;
import com.yunmel.blog.model.UserInfo;

/**
 * 定义扩展方法
 * 
	方法 Methods  
	我们知道一个 Java Class 的 所有 methods 都是定义在同一个 class 文件中的，不能在其他地方进行动态扩展。
	但是一些其他动态语言却支持在 Class 外部为这个 Class 增加一些方法。
	比如： JavaScript 的 prototype机制 
	  Groovy 的 metaClass机制  
		jetbrick-template也在这里带给大家强大的动态方法扩展机制。
		如：${"123".asInt()} ${new Date().format("yyyy-MM-dd")} 
		   ${[1, false, null].asJson()} 
 	注意：如果 Class 已经定义了同名方法，则优先使用 Class 定义的方法。但是扩展方法支持方法重载 (Overrload)。  
 	 定义扩展方法 
 	 语法：  public static Object method_name ( Object object, args ... )  
 	 方法签名必须是 public 和 static   
 	 方法的第一个参数类型必须是要扩展的 Object, 其余参数自定义  
 	 允许定义相同名字的 method，但是方法参数不一样 （Overload）   
 	 支持可变参数 (VarArgs) 示例：对 String.class 进行扩展 
 * @author xu
 *
 */
@JetAnnotations.Methods
public class Methods {
	
	
    public static List<BookInfo> getBooks(UserInfo user) {
        List<BookInfo> books = new ArrayList<BookInfo>();
        for (BookInfo book : DaoUtils.getBookList()) {
            if (book.getAuthorId().equals(user.getId())) {
                books.add(book);
            }
        }
        return books;
    }

    public static UserInfo getAuthorUser(BookInfo book) {
        return DaoUtils.getUser(book.getAuthorId());
    }
}
