package asmJava5.implement;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import asmJava5.dao.CategoryDAO;
import asmJava5.entities.Category;
import asmJava5.service.CategoryService;

@Service
public class CategoryServiceImplement implements CategoryService{
	
	@Autowired
	CategoryDAO categoryDAO;

	@Override
	public Category save(Category entity) {
		return categoryDAO.save(entity);
	}


	@Override
	public List<Category> findAll() {
		return (List<Category>)categoryDAO.findAll();
	}

	@Override
	public List<Category> findAll(Sort sort) {
		return categoryDAO.findAll(sort);
	}

	@Override
	public List<Category> findAllById(List<Integer> ids) {
		return categoryDAO.findAllById(ids);
	}

	@Override
	public Optional<Category> findById(Integer id) {
		return categoryDAO.findById(id);
	}

	@Override
	public List<Category> saveAll(List<Category> entities) {
		return categoryDAO.saveAll(entities);
	}

	@Override
	public void flush() {
		categoryDAO.flush();
	}

	@Override
	public Category saveAndFlush(Category entity) {
		return categoryDAO.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Integer id) {
		return categoryDAO.existsById(id);
	}

	@Override
	public List<Category> saveAllAndFlush(List<Category> entities) {
		return (List<Category>)categoryDAO.saveAllAndFlush(entities);
	}

	@Override
	public Page<Category> findAll(Example<Category> example, Pageable pageable) {
		return categoryDAO.findAll(example, pageable);
	}

	@Override
	public void deleteAllInBatch(List<Category> entities) {
		categoryDAO.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return categoryDAO.count();
	}

	@Override
	public void deleteById(Integer id) {
		categoryDAO.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(List<Integer> ids) {
		categoryDAO.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Category entity) {
		categoryDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Integer> ids) {
		categoryDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		categoryDAO.deleteAllInBatch();
	}

	@Override
	public void deleteAll(List<Category> entities) {
		categoryDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		categoryDAO.deleteAll();
	}

	@Override
	public Category getById(Integer id) {
		return categoryDAO.getById(id);
	}

	@Override
	public List<Category> findAll(Example<Category> example) {
		return categoryDAO.findAll(example);
	}

	@Override
	public List<Category> findAll(Example<Category> example, Sort sort) {
		return categoryDAO.findAll(example, sort);
	}
	
}
