package asmJava5.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asmJava5.dao.ProductDAO;
import asmJava5.entities.Category;
import asmJava5.entities.Product;
import asmJava5.entities.User;
import asmJava5.service.CategoryService;
import asmJava5.service.CoockieService;
import asmJava5.service.ParamService;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;
import asmJava5.service.UserService;

@Controller
@RequestMapping("index")
public class CartController {

	@Autowired
	ProductService productService;
	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CoockieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	UserService userService;
	@Autowired
	CategoryService categoryService;
	
	@GetMapping("home")
	public String viewProducts(Model model, @RequestParam("field") Optional<String> field) {
		List<Product> ls = productService.findAll();
		model.addAttribute("list_product", ls);	
		List<Category> ct = categoryService.findAll();
		model.addAttribute("cateShow", ct);
		/*------------------- Hiển thị sản phẩm id giảm dần -------------------*/
		Sort sortDESC = Sort.by(Direction.DESC, field.orElse("id"));
		List<Product> id = productService.findAll(sortDESC);
		model.addAttribute("list_product_DESC", id);
		/*------------------- Hiển thị sản phẩm id giảm dần -------------------*/
		/*------------------- Hiển thị sản phẩm giá giảm dần -------------------*/	
		Sort sortPRICE = Sort.by(Direction.DESC, field.orElse("price"));
		List<Product> price = productService.findAll(sortPRICE);
		model.addAttribute("list_product_PRICE", price);
		/*------------------- Hiển thị sản phẩm giá giảm dần -------------------*/
		
		/*------------------- Hiển thị sản phẩm giảm giá -------------------*/
		Sort sortSALE = Sort.by(Direction.DESC, field.orElse("sale"));
		List<Product> sale = productService.findAll(sortSALE);
		model.addAttribute("list_product_SALE", sale);
		/*------------------- Hiển thị sản phẩm giảm giá -------------------*/
		
		model.addAttribute("cart_items",shoppingCartService.getAllItems());
		model.addAttribute("total",shoppingCartService.getAmount());
		model.addAttribute("SumItem", shoppingCartService.getProductID());
		return "/index/indexIG";
	}
	
	@PostMapping("home")
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
		
		return "/index/indexIG"; // That Bai view len dang nhap
	}
	
	@RequestMapping("search")
	public String search(Model model, @RequestParam("keywords") Optional<String> kw, @RequestParam("page") Optional<Integer> page) {
		String keywords = kw.orElse(sessionService.get("keyworks",""));
		sessionService.set("keywords", keywords);
		Pageable pageable = PageRequest.of(page.orElse(0),5);
		Page<Product> pageProduct = productDAO.findByKeywords("%"+keywords+"%", pageable);
		model.addAttribute("pageProduct",pageProduct);
		return "/index/list-product-right";
	}

}