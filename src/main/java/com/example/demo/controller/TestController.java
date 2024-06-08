package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author huangkeye
 * @date 2024/2/19 15:35
 */
@RestController
@RequestMapping("/test")
public class TestController {

    /**
     * usage: <a href="http://127.0.0.1:8888/test/ping">...</a>
     * @return
     */
    @RequestMapping("ping")
    public String test(){
        return "pong";
    }

}
