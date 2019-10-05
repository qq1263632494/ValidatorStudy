package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.jws.soap.SOAPBinding;
import javax.validation.Valid;

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

}
