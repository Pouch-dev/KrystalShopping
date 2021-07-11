//package asmJava5.implement;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.stereotype.Service;
//
//import asmJava5.entities.User;
//import asmJava5.service.AccountService;
//
//@Service
//public class AccountServiceImplement implements AccountService{
//
//	public static List<User> list = new ArrayList<>();
//	static {
//		list.add(new User(0, "diemphuoc5555@gmail.com", "quachdiemphuoc", "admin", "123", 0, 0));
//	}
//	
//	@Override
//	public User finByID(String username) {
//		for(User user : list) {
//			if(user.getUsername().equals(username)) {
//				return user;
//			}
//		}
//		return null;
//	}
//	
//}
