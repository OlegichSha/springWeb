package com.web.springWeb.controllers;

import com.web.springWeb.customExceptions.NoEntityException;
import com.web.springWeb.entity.Article;
import com.web.springWeb.services.ArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ArticlesController {

    @Autowired
    ArticlesService articlesService;

    @GetMapping("/articles")
    public String articlesPage(Model model) throws NoEntityException {
        List<Article> articles = articlesService.findAll();
        model.addAttribute("articles", articles);
        return "articles";
    }
}
