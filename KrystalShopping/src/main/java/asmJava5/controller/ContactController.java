package asmJava5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import asmJava5.bean.MailInfo;
import asmJava5.dao.ProductDAO;
import asmJava5.service.CoockieService;
import asmJava5.service.MailerService;
import asmJava5.service.ParamService;
import asmJava5.service.ProductService;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;
import asmJava5.service.UserService;

@Controller
@RequestMapping("index")
public class ContactController {

	@Autowired
	MailerService mailer;
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
	
		@GetMapping("contact")
		public String demo3(Model model) {
			// 1. mail người nhận
			model.addAttribute("cart_items",shoppingCartService.getAllItems());
			model.addAttribute("total",shoppingCartService.getAmount());
			model.addAttribute("SumItem", shoppingCartService.getProductID());
			MailInfo mailinfo = new MailInfo();
			model.addAttribute("mailinfo", mailinfo);
			return "/index/contact-us";
		}
		
		@PostMapping("send")
		public String send(Model model, MailInfo mailinfo) {
			// 1. mail người nhận
			try {
			mailer.send(mailinfo.getTo(), mailinfo.getSubject(), mailinfo.getBody());
			model.addAttribute("mail", mailinfo);
			System.out.println("Send mail successfull!");
			return "redirect:/index/contact";
			} catch (Exception e) {
				// TODO: handle exception
				return e.getMessage();
			}
		}
}
