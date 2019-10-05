package controller;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@Controller
public class BaseController {

    /*
    * @RequestMapping(value = "/{formName}")
    public String loginForm(@PathVariable String formName,
                            Model model)
    {
        User user = new User();
        model.addAttribute("user", user);
        return formName;
    }
    *
    *
    * */
    @RequestMapping(value = "registerForm")
    public String loginForm2(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "registerForm";
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(
            @Valid @ModelAttribute User user,
            Errors errors,
            Model model
    )
    {
        if(errors.hasErrors()){
            return "registerForm";
        }
        model.addAttribute("user", user);
        return "success";
    }

    @RequestMapping(value = "upload")
    public String upload(HttpServletRequest request,
                         @RequestParam("description") String description,
                         @RequestParam("file") MultipartFile file) throws Exception
    {
        System.out.println(description);
        if(!file.isEmpty()){
            String path = request.getServletContext().getRealPath("/images/");
            System.out.println(path);
            String fileName = file.getOriginalFilename();
            //assert fileName != null;
            File filepath = new File(path, fileName);
            if(!filepath.getParentFile().exists()){
                filepath.getParentFile().mkdirs();
            }
            file.transferTo(new File(path+File.separator+fileName));
            return "success";
        }else {
            return "error";
        }
    }

    @RequestMapping(value = "/{form}")
    public String jump(@PathVariable String form){
        System.out.println("yes");
        return form;
    }

    @RequestMapping(value = "/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
                                           @RequestParam("filename") String filename,
                                           Model model) throws IOException {
        String path = request.getServletContext().getRealPath("/images/");
        File file = new File(path+File.separator+filename);
        HttpHeaders headers = new HttpHeaders();
        String downloadFiledName = new String(filename.getBytes("UTF-8"), "iso-8859-1");
        headers.setContentDispositionFormData("attachment", downloadFiledName);
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
    }
}
