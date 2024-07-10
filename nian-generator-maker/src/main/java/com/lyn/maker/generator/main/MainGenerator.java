package com.lyn.maker.generator.main;


import java.io.IOException;

public class MainGenerator extends GenerateTemplate {
    @Override
    protected String buildDist(String outputPath, String sourceCopyDestPath, String jarPath, String shellOutputFilePath) throws IOException {
        System.out.println("不要输出dist");
        return "";
    }
}