package asmJava5.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asmJava5.dao.ProductDAO;
import asmJava5.entities.Product;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;

@Controller
@RequestMapping("index")
public class ListProductController {
	
	@Autowired
	ProductService productService;
	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SessionService sessionService;
	
	@GetMapping("list")
	public String listProduc(Model model, @RequestParam("show") Optional<Integer> show) {
		model.addAttribute("cart_items",shoppingCartService.getAllItems());
		model.addAttribute("total",shoppingCartService.getAmount());
		model.addAttribute("SumItem", shoppingCartService.getProductID());		
		PageRequest pageable = PageRequest.of(show.orElse(0),7);
		Page<Product> page = productService.findAll(pageable);
		model.addAttribute("list_product", page);
		return "/index/list-product-right";
	}
	
	@PostMapping("search-list")
	public String search(Model model, @RequestParam("keywords") Optional<String> kw, @RequestParam("page") Optional<Integer> page) {
		String keywords = kw.orElse(sessionService.get("keyworks",""));
		sessionService.set("keywords", keywords);
		Pageable pageable = PageRequest.of(page.orElse(0),5);
		Page<Product> pageProduct = productDAO.findByKeywords("%"+keywords+"%", pageable);
		model.addAttribute("list_product",pageProduct);
		return "/index/list-product-right";
	}
}
