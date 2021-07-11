package asmJava5.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asmJava5.dao.OrderDAO;
import asmJava5.dao.OrderDetailDAO;
import asmJava5.dao.ProductDAO;
import asmJava5.dao.UserDAO;
import asmJava5.entities.Product;
import asmJava5.service.CoockieService;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;

@Controller
@RequestMapping("shopping-cart")
public class ShoppingCartController {
	
	@Autowired
	ProductService productService;
	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	SessionService sessionService;
	@Autowired
	CoockieService cookieService;
	@Autowired
	UserDAO userDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@GetMapping("cart")
	public String viewProduct(Model model) {
		List<Product> ls = productService.findAll();
		model.addAttribute("list_product", ls);
		model.addAttribute("cart_items",shoppingCartService.getAllItems());
		model.addAttribute("total",shoppingCartService.getAmount());
		model.addAttribute("SumItem", shoppingCartService.getProductID());
		return "index/shopping-cart";
	}
	
	@GetMapping("add/{id}")
	public String add(@PathVariable("id") Integer id) {
		String username = sessionService.get("username");
		if(username == null) {
		return "redirect:/index/login";
		}else {
		shoppingCartService.add(id);
		return "redirect:/shopping-cart/cart"; // hiển thị giỏ hàng
		}
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
