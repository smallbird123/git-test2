package com.kgc.exceptions.handler;

import org.springframework.web.bind.annotation.ExceptionHandler;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GlobalExceptionHandler {

    @ExceptionHandler(value={Exception.class})
    public String handException(Exception ex) throws FileNotFoundException {
        System.out.println(ex.getMessage());
        OutputStream os=new FileOutputStream("D:\\java3\\java4");
        PrintWriter pw = new PrintWriter(os);
        String dateStr = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        pw.write(dateStr+":");
        pw.write(ex.getMessage());
        ex.printStackTrace(pw);
        pw.println();
        pw.println();
        pw.close();

        return "";
    }
}
