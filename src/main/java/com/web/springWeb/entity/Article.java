package com.web.springWeb.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "article")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "name_article")
    private String name_article;

    @Column(name = "text")
    private String text;
}
