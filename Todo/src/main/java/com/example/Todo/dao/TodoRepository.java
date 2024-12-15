package com.example.Todo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.Todo.entity.*;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Long> {
}