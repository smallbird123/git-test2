package com.kgc.Controller;

import com.sun.org.apache.xpath.internal.operations.Mult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("/uploads")
public class Uploads {



    @RequestMapping("/uploadFiles.do")
    public @ResponseBody boolean uploadFiles(@RequestParam(name = "bigHeadImg") MultipartFile file, HttpServletRequest request) {
        try {
        String oriName = file.getOriginalFilename();
        String ext = oriName.substring(oriName.lastIndexOf("."));
        String uuid = UUID.randomUUID().toString();
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd\\HH\\mm||ss");
        String dateStr = sdf.format(date);
        File saveFile = new File("D:\\java3\\"+dateStr);
        if (!saveFile.exists()){
            saveFile.mkdirs();
        }
        File filePath = new File(saveFile, "\\" + uuid + ext);

            file.transferTo(filePath);
            return true;
        } catch (IOException e) {
           return false;
        }
    }

}
