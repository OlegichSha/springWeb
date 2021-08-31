package com.web.springWeb.controllers;

import com.web.springWeb.customExceptions.NoEntityException;
import com.web.springWeb.entity.Article;
import com.web.springWeb.services.ArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    ArticlesService articlesService;

    @GetMapping("/article/{id}")
    public String articlePage(@PathVariable Long id, Model model) throws NoEntityException {
        Article article = articlesService.getById(id);
        model.addAttribute("article", article);
        return "article";
    }
}
