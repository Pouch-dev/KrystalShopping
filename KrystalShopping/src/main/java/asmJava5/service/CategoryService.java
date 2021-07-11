package asmJava5.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import asmJava5.entities.Category;

public interface CategoryService {
	List<Category> findAll(Example<Category> example, Sort sort);
	List<Category> findAll(Example<Category> example);
	Category getById(Integer id);
	void deleteAll();
	void deleteAll(List<Category> entities);
	void deleteAllInBatch();
	void deleteAllById(List<Integer> ids);
	void delete(Category entity);
	void deleteAllByIdInBatch(List<Integer> ids);
	void deleteById(Integer id);
	long count();
	void deleteAllInBatch(List<Category> entities);
	Page<Category> findAll(Example<Category> example, Pageable pageable);
	List<Category> saveAllAndFlush(List<Category> entities);
	boolean existsById(Integer id);
	Category saveAndFlush(Category entity);
	void flush();
	List<Category> saveAll(List<Category> entities);
	Optional<Category> findById(Integer id);
	List<Category> findAllById(List<Integer> ids);
	List<Category> findAll(Sort sort);
	List<Category> findAll();
	Category save(Category entity);

}
