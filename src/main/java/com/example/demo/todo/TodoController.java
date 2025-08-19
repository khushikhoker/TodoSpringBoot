package com.example.demo.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("username")
public class TodoController {

    public TodoController(TodoService todoService) {
        super();
        this.todoService = todoService;
    }

    private TodoService todoService;

    @RequestMapping("list-todos")
    public String listAllTodos(ModelMap modelMap) {
        List<Todo> todos = todoService.findByUserName("in28minutes");
        modelMap.addAttribute("todos", todos);
        return "listTodos";
    }

    @RequestMapping(value = "add-todo", method= RequestMethod.GET)
    public String showNewToDoPage() {
        return "todo";
    }

    @RequestMapping(value = "add-todo", method= RequestMethod.POST)
    public String addNewTodo(@RequestParam String description, ModelMap model ) {
        String username = (String) model.get("username");
        todoService.addTodo(username, description, LocalDate.now().plusYears(1), false);
        return "redirect:list-todos";
    }


}
