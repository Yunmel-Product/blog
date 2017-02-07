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
package com.yunmel.blog.web.site;

import com.yunmel.blog.core.BaseController;
import com.yunmel.blog.dao.DaoUtils;

import com.yunmel.blog.utils.Site;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController extends BaseController{

    @RequestMapping({"/","/index"})
    public String index(Model model) {
//        JetEngine jetEngine = JetWebEngine.getEngine();
//        JetGlobalContext globalContext = jetEngine.getGlobalContext();
//        globalContext.set("theme", Site.theme);
        model.addAttribute("res",Site.getResPath());
        model.addAttribute("categories",DaoUtils.getCategories());
        model.addAttribute("title","云麦尔科技有限公司 - 博客");
        model.addAttribute("b",DaoUtils.getBanners().get(0));
        model.addAttribute("articles",DaoUtils.findArticles());
        return site("index");
    }




}
