package asmJava5.implement;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asmJava5.dao.UserDAO;
import asmJava5.entities.User;
import asmJava5.service.UserService;

@Service
public class UserServiceImplement implements UserService{
	@Autowired
	UserDAO userDAO;

	@Override
	public User save(User entity) {
		return userDAO.save(entity);
	}

	@Override
	public List<User> saveAll(List<User> entities) {
		return (List<User>)userDAO.saveAll(entities);
	}

	@Override
	public Optional<User> findById(String id) {
		return userDAO.findById(id);
	}

	@Override
	public boolean existsById(String id) {
		return userDAO.existsById(id);
	}

	@Override
	public List<User> findAll() {
		return (List<User>)userDAO.findAll();
	}

	@Override
	public List<User> findAllById(List<String> ids) {
		return (List<User>)userDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return userDAO.count();
	}

	@Override
	public void deleteById(String id) {
		userDAO.deleteById(id);
	}

	@Override
	public void delete(User entity) {
		userDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<String> ids) {
		userDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<User> entities) {
		userDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		userDAO.deleteAll();
	}

	


	@Override
	public boolean checkLogin(String username, String password) {
		Optional<User> optionalUser = findById(username);
		if(optionalUser.isPresent()&& optionalUser.get().getPassword().equals(password)) {
			return true;
		}
		return false;
	}



}
