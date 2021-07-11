package asmJava5.implement;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import asmJava5.dao.ProductDAO;
import asmJava5.entities.Product;
import asmJava5.service.ShoppingCartService;
import asmJava5.entities.CartItems;

@Service
@SessionScope
public class ShoppingCartServiceImplement implements ShoppingCartService{
	@Autowired
	ProductDAO dao;	
	
	@Override
	public Collection<CartItems> getAllItems(){
		return map.values();
	}
	@Override
	public long getProductID() {
		return map.values().stream().mapToLong(item -> item.getProductID()).count();
	}
	Map<Integer, CartItems> map = new HashMap<>();
	@Override
	public CartItems add(Integer id) {
		CartItems item = map.get(id);
		if(item == null) {
			item = new CartItems();
			Product p = new Product();
			List<Product> list = dao.findAll() ;
			p = list.stream().filter(it->it.getId()==id).collect(Collectors.toList()).get(0);
			item.setProductID(p.getId());
			item.setName(p.getName());
			item.setPrice(p.getPrice());
			item.setSale((p.getSale()*100));
			item.setImage(p.getImage());
			item.setCreateDate(p.getCreateDate());
			item.setDetail(p.getDetail());
			item.setStatus(p.getStatus());
			item.setSaprice((int) (p.getPrice()*(1-p.getSale())));
			item.setQuantity(1);
			map.put(id, item);
		} else {
			item.setQuantity(item.getQuantity() + 1);
		}
		return item;
	}
	@Override
	public void remove(Integer id) {
		map.remove(id);
	}
	@Override
	public CartItems update(Integer id, int qty) {
		CartItems item = map.get(id);
		item.setQuantity(qty);
		return item;
	}
	@Override
	public void clear() {
		map.clear();
	}
	@Override
	public Collection<CartItems> getItems() {
		return map.values();
	}
	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQuantity()).sum();
	}
	@Override
	public double getAmount() {
		return map.values().stream().mapToInt(item -> item.getSaprice()*item.getQuantity()).sum();

	}
}
