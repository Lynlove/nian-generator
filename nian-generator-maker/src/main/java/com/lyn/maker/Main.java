package com.lyn.maker;

//import com.lyn.maker.cli.CommandExecutor;

import com.lyn.maker.generator.main.GenerateTemplate;
import com.lyn.maker.generator.main.MainGenerator;
import com.lyn.maker.generator.main.ZipGenerator;
import freemarker.template.TemplateException;

import java.io.IOException;

public class Main {

    public static void main(String[] args) throws TemplateException, IOException, InterruptedException {
//        MainGenerator generateTemplate = new MainGenerator();
        GenerateTemplate generateTemplate = new ZipGenerator();
        generateTemplate.doGenerate();
    }
}