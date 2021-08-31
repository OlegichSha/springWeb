package com.web.springWeb.repository;

import com.web.springWeb.entity.RegUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<RegUser, Long> {
    RegUser findByLogin(String login);
}
