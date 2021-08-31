package com.web.springWeb.services;

import com.web.springWeb.customExceptions.NoEntityException;
import com.web.springWeb.entity.Article;
import com.web.springWeb.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ArticlesService {

    @Autowired
    private ArticleRepository articleRepository;

    public List<Article> findAll() throws NoEntityException {
        List<Article> result = Optional.of(articleRepository.findAll()).orElseThrow(()->new NoEntityException("На данный момент статей нет"));
        return result;
    }

    public Article getById(Long id){
        Article result = Optional.of(articleRepository.getById(id)).orElseThrow(()->new NoEntityException("Статья не найдена"));
        return result;
    }
}
