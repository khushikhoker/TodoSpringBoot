package com.example.demo.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class TodoService {

    private static List<Todo> todoList = new ArrayList<>();

    private static int todosCount =0;


    static {
        todoList.add(new Todo(++todosCount, "khushi", "Learn Aws", LocalDate.now().plusYears(1),false));
        todoList.add(new Todo(++todosCount, "khushi", "Learn devops", LocalDate.now().plusYears(2),false));
        todoList.add(new Todo(++todosCount, "khushi", "Learn full stack", LocalDate.now().plusYears(3),false));

    }

    public List<Todo> findByUserName(String username) {
        Predicate<? super Todo> predicate = todo -> todo.getUsername().equalsIgnoreCase(username);
        return todoList.stream().filter(predicate).toList();
    }

    public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
        Todo todo = new Todo(++todosCount, username, description, targetDate,done);
        todoList.add(todo);
    }

    public void deleteById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        todoList.removeIf(predicate);
    }

    public Todo findById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        return todoList.stream().filter(predicate).findFirst().get();
    }

    public void updateTodo(@Valid Todo todo) {
        deleteById(todo.getId());
        todoList.add(todo);
    }
}
