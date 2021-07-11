package asmJava5.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asmJava5.dao.OrderDAO;
import asmJava5.dao.ProductDAO;
import asmJava5.dao.UserDAO;
import asmJava5.entities.CartItems;
import asmJava5.entities.Order;
import asmJava5.entities.OrderDetail;
import asmJava5.dao.OrderDetailDAO;
import asmJava5.entities.User;
import asmJava5.service.SessionService;
import asmJava5.service.ShoppingCartService;

@Controller
@RequestMapping("shopping-cart")
public class CheckOutController {
	
	@Autowired
	SessionService sessionService;
	@Autowired
	UserDAO userDAO;
	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	OrderDetailDAO orderDetailDAO;

	@GetMapping("checkout")
	public String showcheck(Model model) {

		model.addAttribute("cart_items",shoppingCartService.getAllItems());
		model.addAttribute("total",shoppingCartService.getAmount());
		model.addAttribute("SumItem", shoppingCartService.getProductID());
		
		return "/index/checkout";
	}
	
	@PostMapping("checkout")
	public String checkout(@RequestParam("email")String email, 
						   @RequestParam("fullname")String fullname,
						   @RequestParam("numberphone")Integer numberphone, 
						   @RequestParam("address")String address, 
						   @RequestParam("country")String country, 
						   @RequestParam("city")String city) {
		String username = sessionService.get("username");
		if(username == null) {
			return "redirect:/index/login";
		}
		User user = null;
		if (userDAO.findById(username).isPresent()) {
			user = userDAO.findById(username).get();
			Order ord = new Order();
			ord.setAccount(user);
			ord.setDateorder(new Date());
			ord.setAddress(address);
			ord.setNumberphone(numberphone);
			ord.setEmail(email);
			List<OrderDetail> orderDT = new ArrayList<>();
			for(CartItems item : shoppingCartService.getItems()) {
				OrderDetail od = new OrderDetail();
				od.setOrder(ord);
				productDAO.findById(item.getProductID()).ifPresent(p->{od.setProduct(p);});
				od.setPrice(item.getSaprice());
				od.setQuantity(item.getQuantity());
				od.setCity(city);
				od.setCountry(country);
				od.setFullname(fullname);
				orderDT.add(od);
			}
			ord.setOrder_id(orderDT);
			orderDAO.save(ord);
			for(OrderDetail dt: orderDT) {
				orderDetailDAO.save(dt);
			}
			shoppingCartService.clear();
		}
			return "redirect:/shopping-cart/cart";
	}
}
