package com.lv.service

import com.lv.model.Command

/**
 * Date: 2017-03-27
 * Time: 11:09
 * Description:
 */
interface CommandService {
    /**
     *Query without a collection of instructions
     */
    fun findAllCommand(): List<Command>

    /**
     *Query with a collection of instructions
     */
    fun findAllCommandWithContent(): List<Command>
}