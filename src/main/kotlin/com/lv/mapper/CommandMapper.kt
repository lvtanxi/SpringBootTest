package com.lv.mapper

import com.lv.model.Command

/**
 * Date: 2017-03-27
 * Time: 11:04
 * Description:
 */
interface CommandMapper {
    /**
     *Query without a collection of instructions
     */
    fun findAllCommand(): List<Command>

    /**
     *Query with a collection of instructions
     */
    fun findAllCommandWithContent(): List<Command>
}