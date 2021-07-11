package asmJava5.admin_controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asmJava5.dao.ProductDAO;
import asmJava5.entities.Product;
import asmJava5.service.CoockieService;
import asmJava5.service.ParamService;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;
import asmJava5.service.UserService;

@Controller
@RequestMapping("indexAD")
public class AdminController {
	
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
		@Autowired
		ProductDAO productDAO;
	
	@GetMapping("admin")
	public String admin() {
		return "/index/loginAD";
	}
	
	@GetMapping("home")
	public String showlogin(Model model, @RequestParam("show") Optional<Integer> show) {
		/*------------------- Hiển thị sản phẩm id giảm dần -------------------*/
//		Product item = new Product();
//		model.addAttribute("item", item);
		List<Product> ls = productService.findAll();
		model.addAttribute("list_product", ls);		
		/*------------------- Hiển thị sản phẩm id giảm dần -------------------*/
		model.addAttribute("cart_items",shoppingCartService.getAllItems());
		model.addAttribute("total",shoppingCartService.getAmount());
		model.addAttribute("SumItem", shoppingCartService.getProductID());
		PageRequest pageable = PageRequest.of(show.orElse(0),5);
		Page<Product> page = productService.findAll(pageable);
		model.addAttribute("list_product", page);
		return "/index/indexAD3"; //3. view trang login lên
	}
	
	@GetMapping("add/{id}")
	public String add(@PathVariable("id") Integer id) {
		shoppingCartService.add(id);
		return "redirect:/indexAD/home"; // hiển thị giỏ hàng
	}
	@GetMapping("remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		shoppingCartService.remove(id);
		return "redirect:/shopping-cart/cart";
	}
	@RequestMapping("update/{id}")
	public String update(@PathVariable("id") Integer id, 
	@RequestParam("qty") Integer qty) {
		shoppingCartService.update(id, qty);
		return "redirect:/shopping-cart/cart";
	}
	@GetMapping("/clear")
	public String clear() {
		shoppingCartService.clear();
		return "redirect:/shopping-cart/cart";
	}
}
