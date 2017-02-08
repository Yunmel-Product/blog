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

import com.yunmel.blog.model.Article;
import com.yunmel.blog.utils.Site;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class IndexController extends BaseController{

    @RequestMapping({"/","index","index.html","categoty.html"})
    public String index(Model model) {
//        JetEngine jetEngine = JetWebEngine.getEngine();
//        JetGlobalContext globalContext = jetEngine.getGlobalContext();
//        globalContext.set("theme", Site.theme);
        model.addAttribute("res",Site.getResPath());
        model.addAttribute("categories",DaoUtils.getCategories());
        model.addAttribute("title","云麦尔科技有限公司 - 博客");
        model.addAttribute("b",DaoUtils.getBanners().get(0));
        model.addAttribute("articles",DaoUtils.findArticles());
        model.addAttribute("links",DaoUtils.findLinks());
        return site("index");
    }

    @RequestMapping("article/{id}.html")
    public String article(Model model,@PathVariable Integer id){
        model.addAttribute("res",Site.getResPath());
        Article article = DaoUtils.getArticle(id);
        model.addAttribute("t",article);
        return site("article");
    }

    @RequestMapping("categoty/{id}.html")
    public String categoty(Model model,@PathVariable Integer id){
        model.addAttribute("res",Site.getResPath());
        model.addAttribute("articles",DaoUtils.findArticlesByCategoty(id));
        return site("categoty");
    }

    @RequestMapping("search.html")
    public String search(Model model, String keywords) throws UnsupportedEncodingException {
        keywords = new String(keywords.getBytes("iso8859-1"),"UTF-8");
        model.addAttribute("res",Site.getResPath());
        model.addAttribute("keywords",keywords);
        List<Article> list = DaoUtils.findArticlesByKeywords(keywords);
        for (Article article : list) {
            System.out.println(article.toString());
        }
        model.addAttribute("articles",DaoUtils.findArticlesByKeywords(keywords));
        return site("search");
    }

    @RequestMapping("article/add.html")
    public String toArticlePage(Model model){
        model.addAttribute("res",Site.getResPath());
        return site("article-add");
    }
}
