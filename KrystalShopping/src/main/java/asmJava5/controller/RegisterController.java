package asmJava5.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import asmJava5.entities.User;
import asmJava5.service.CoockieService;
import asmJava5.service.ParamService;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;
import asmJava5.service.UserService;

@Controller
@RequestMapping("index")
public class RegisterController {

	// 1. tiêm vào
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

	@GetMapping("register")
	public String register(Model model) {
		model.addAttribute("cart_items",shoppingCartService.getAllItems());
		model.addAttribute("total",shoppingCartService.getAmount());
		model.addAttribute("SumItem", shoppingCartService.getProductID());
		model.addAttribute("register", new User());
		return "/index/register";
	}

	@PostMapping("register")
	public String register2(@Validated @ModelAttribute("register") User user, BindingResult result, Model model,
			MultipartFile multipartFile) throws IOException {
		if (result.hasErrors()) {
			return "/index/register";

		}
		userService.save(user);
		model.addAttribute("register", new User());
		return "redirect:/index/login";
	}
}
