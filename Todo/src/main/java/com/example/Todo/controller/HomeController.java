package com.example.Todo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.Todo.entity.*;
import com.example.Todo.dao.*;

@Controller
public class HomeController {

    @Autowired
    private TodoRepository todoRepository;

    @GetMapping("")
    public String index(){
        return "index";
    }

    @GetMapping("/logout")
    public String logoutPage(){
        return "logout";
    }

    @GetMapping("/todos")
    public String todos(Model model){
        model.addAttribute("todos", todoRepository.findAll());
        return "todos";
    }

    @PostMapping("/todoNew")
    public String add(@RequestParam String todoItem, @RequestParam String status, Model model){
        Todo todo = new Todo();
        todo.setTodoItem(todoItem);
        todo.setCompleted(status);
        todoRepository.save(todo);
        model.addAttribute("todos", todoRepository.findAll());
        return "redirect:/todos";
    }

    @PostMapping("/todoDelete/{id}")
    public String delete(@PathVariable long id, Model model){
       todoRepository.deleteById(id);
       model.addAttribute("todos", todoRepository.findAll());

        return "redirect:/todos";
    }

    @PostMapping("/todoUpdate/{id}")
    public String update(@PathVariable long id, Model model){
        Todo toDo = todoRepository.findById(id).get();
        if("Yes".equals(toDo.getCompleted())){
            toDo.setCompleted("No");
        } else {
            toDo.setCompleted("Yes");
        }
        todoRepository.save(toDo);
        model.addAttribute("todos", todoRepository.findAll());
        return "redirect:/todos";
    }
}