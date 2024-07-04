package com.lyn.maker.model;

import lombok.Data;

/**
 * 动态模版配置
 */
@Data
public class DataModel {

    /**
     * 是否生成循环
     */
    public boolean loop;

    /**
     * 作者注释
     */
    public String author = "yupi";

    /**
     * 输出信息
     */
    public String outputText = "sum = ";
    /**
     * 是否生成gitignore
     */
    public boolean needGit;
}
