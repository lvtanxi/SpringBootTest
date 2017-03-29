package com.lv.service.impl

import com.lv.service.CommandService
import org.junit.Test
import org.junit.runner.RunWith
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.context.junit4.SpringRunner

/**
 * Date: 2017-03-29
 * Time: 08:53
 * Description:
 */
@RunWith(SpringRunner::class)
@SpringBootTest
class CommandServiceImplTest {
    @Autowired
    private val mCommandService: CommandService? = null

    /**
     *This method is right
     */
    @Test
    fun findAllCommand() {
        val allCommand = mCommandService?.findAllCommand()
        println(allCommand)
    }


    /**
     * This method is wrong
     */
    @Test
    fun findAllCommandWithContent() {
        val allCommand = mCommandService?.findAllCommandWithContent()
        println(allCommand)
    }

}