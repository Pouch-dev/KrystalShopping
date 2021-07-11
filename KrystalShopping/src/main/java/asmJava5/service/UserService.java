package asmJava5.service;

import java.util.List;
import java.util.Optional;

import asmJava5.entities.User;

public interface UserService {

	void deleteAll();

	void deleteAll(List<User> entities);

	void deleteAllById(List<String> ids);

	void delete(User entity);

	void deleteById(String id);

	long count();

	List<User> findAllById(List<String> ids);

	List<User> findAll();

	boolean existsById(String id);

	Optional<User> findById(String id);

	List<User> saveAll(List<User> entities);

	User save(User entity);

	boolean checkLogin(String username, String password);

	
}
