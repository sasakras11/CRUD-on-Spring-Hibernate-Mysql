package project.app.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import project.app.model.User;
import project.app.service.ServiceImpl;
import project.app.service.ServiceInterface;

import java.util.List;

@Controller
public class MyController {

@Autowired
 private   ServiceInterface serviceInterface;

    @RequestMapping(value = "/",method = RequestMethod.GET)
        public  ModelAndView get(){

           List<User> users = serviceInterface.USER_LIST();
              ModelAndView m = new ModelAndView();
              m.setViewName("start");
              m.addObject("users",users);
              return m;
          }

           @RequestMapping(value = "/edit",method = RequestMethod.GET)
           public ModelAndView editPage(){
        ModelAndView m = new ModelAndView();
        m.setViewName("editPage");
        return m;

          }
          @RequestMapping(value = "/edit/{id}", method =  RequestMethod.GET)
               public ModelAndView editPage(@PathVariable("id") int id){
                User user = serviceInterface.getById(id);
                ModelAndView m = new ModelAndView();
                m.setViewName("editPage");
                m.addObject("user",serviceInterface.getById(id));
                m.addObject("user",user);
                return m;


          }
          @RequestMapping(value ="/edit",method = RequestMethod.POST)
   public ModelAndView editUser(@ModelAttribute("user")User user){
        ModelAndView m = new ModelAndView();
        m.setViewName("redirect:/");
        serviceInterface.edit(user);
        return m;
          }
          @RequestMapping(value = "/add",method = RequestMethod.GET)
          public ModelAndView addPage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("addPage");
        return modelAndView;
          }


  @RequestMapping(value = "/add",method = RequestMethod.POST)
          public ModelAndView addUser(@ModelAttribute("user")User user){
               ModelAndView m = new ModelAndView();
      serviceInterface.add(user);
      m.setViewName("redirect:/");
               return m;
         }
         @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
         public ModelAndView deleteUser(@PathVariable("id")int id){
          ModelAndView m = new ModelAndView();
          m.setViewName("redirect:/");
          User user = serviceInterface.getById(id);
          serviceInterface.delete(user);
          return m;
         }


}