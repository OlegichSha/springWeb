package com.web.springWeb.customExceptions;

public class NoEntityException extends RuntimeException {
    public NoEntityException(String message) {
        super(message);
        System.out.println(message);
    }
}
