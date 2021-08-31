package com.web.springWeb.config;

import com.web.springWeb.services.UserDetailsServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.thymeleaf.extras.springsecurity5.dialect.SpringSecurityDialect;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsServiceImp detailsServiceImp;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    // Авторизация
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/articles").hasAnyRole("USER", "ADMIN")   //указываем какие ссылки, кому доступны
                //.antMatchers("/**").hasRole("USER")
                .and()
                .formLogin().permitAll()
                .loginPage("/index")    //шаблон с авторизацией.
                .loginProcessingUrl("/perform-login")   //Это адрес конечной точки, куда по методу POST отправляются имя и пароль при нажатии кнопки входа.
                .usernameParameter("user")  //имя поля из формы
                .passwordParameter("pass")  //имя поля из формы
                .defaultSuccessUrl("/") //адрес страницы, куда пользователь перенаправляется при успешном входе.
        .and()
                .logout();
    }


    //Аутентификация
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(detailsServiceImp);
    }
}