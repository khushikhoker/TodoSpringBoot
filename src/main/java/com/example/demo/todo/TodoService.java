package com.example.demo.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {

    private static List<Todo> todoList = new ArrayList<>();
    static {
        todoList.add(new Todo(1, "in28minutes", "Learn Aws", LocalDate.now().plusYears(1),false));
        todoList.add(new Todo(2, "in28minutes", "Learn devops", LocalDate.now().plusYears(2),false));
        todoList.add(new Todo(3, "in28minutes", "Learn full stack", LocalDate.now().plusYears(3),false));

    }

    public List<Todo> findByUserName(String username) {
        return todoList;
    }
}
