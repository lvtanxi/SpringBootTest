package com.lv

import org.mybatis.spring.annotation.MapperScan
import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
@MapperScan("com.lv.mapper")
open class SptApplication {

    companion object {
        @JvmStatic fun main(args: Array<String>) {
            SpringApplication.run(SptApplication::class.java, *args)
        }
    }
}
