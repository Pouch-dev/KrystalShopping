package asmJava5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asmJava5.entities.Category;

public interface CategoryDAO extends JpaRepository<Category, Integer>{
}
