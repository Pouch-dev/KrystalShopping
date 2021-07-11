package asmJava5.dao;



import org.springframework.data.repository.CrudRepository;

import asmJava5.entities.User;

public interface UserDAO extends CrudRepository<User, String>{

	
}
