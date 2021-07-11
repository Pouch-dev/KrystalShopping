package asmJava5.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asmJava5.entities.User;
import asmJava5.service.CoockieService;
import asmJava5.service.ParamService;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;
import asmJava5.service.UserService;

@Controller
@RequestMapping("index")
public class LoginController {

	//1. tiêm vào 
		@Autowired
		CoockieService cookieService;
		@Autowired
		ParamService paramService;
		@Autowired
		SessionService sessionService;
		@Autowired
		ProductService productService;
		@Autowired
		ShoppingCartService shoppingCartService;
		@Autowired
		UserService userService;
		
		
		//2. khi người dùng gõ localhost:8080/index/login
		
		@GetMapping("login")
		public String showlogin(Model model) {
			model.addAttribute("cart_items",shoppingCartService.getAllItems());
			model.addAttribute("total",shoppingCartService.getAmount());
			model.addAttribute("SumItem", shoppingCartService.getProductID());
			return "/index/login"; //3. view trang login lên
		}
		
		//3. khi người dùng click vào login xử lý hàm sau

		@PostMapping("login")
		public String checklogin(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
			boolean remember = paramService.getBoolean("remember", false);
			
			User role = userService.findById(username).orElse(null);
			//boolean role;
			if(userService.checkLogin(username, password)) {
						
						sessionService.set("username", username);
						//5. neu nguoi dung check vao remember
						if(remember)
						{
							//6. tạo 2 cookie ten la user va pass ... sống 10 giờ
							cookieService.add("user", username, 10);
							cookieService.add("pass", password, 10);
							System.out.println("luu cookie ok");
						}
						else
						{
							//7. ko check rememember thì xóa cookie user va pass
							cookieService.remove("user");
							cookieService.remove("pass");
						}
						if(role.isRole()) {
							System.out.println("Hello Admin!!");
							return "redirect:/indexAD/home"; // Thanh Cong view len trang chu 
						}else {
							System.out.println("Login successfull!!");
							return "redirect:/index/home"; // Thanh Cong view len trang chu 
						}
			}else {
				System.out.println("Login fails!");
				model.addAttribute("erorr", "Username or Password valile");
			}
			
			return "/index/login"; // That Bai view len dang nhap
		}
		
		@GetMapping("logout")
		public String logout() {
			sessionService.remove("username");
			return "redirect:/index/home";
		}
	}