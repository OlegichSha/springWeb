package com.web.springWeb.services;

import com.web.springWeb.entity.RegUser;
import com.web.springWeb.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import static java.util.Objects.isNull;

@Service
public class UserDetailsServiceImp implements UserDetailsService {

    @Autowired
    private UserRepository dao;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

        RegUser tableRegUser = dao.findByLogin(userName);
        if(isNull(tableRegUser)){
            throw new UsernameNotFoundException("Неизвестный пользователь: "+userName);
        }

        UserDetails resultUser = User.builder()
                .username(tableRegUser.getLogin())
                .password(tableRegUser.getPassword())
                .roles(tableRegUser.getRole())
                .build();

        return resultUser;
    }
}
