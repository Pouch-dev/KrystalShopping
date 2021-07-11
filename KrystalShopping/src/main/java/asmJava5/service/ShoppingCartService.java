package asmJava5.service;

import java.util.Collection;

import asmJava5.entities.CartItems;

public interface ShoppingCartService {
	long getProductID();
	Collection<CartItems> getAllItems();
	CartItems add(Integer id);
	void remove(Integer id);
	CartItems update(Integer id, int qty);
	void clear();
	Collection<CartItems> getItems();
	int getCount();
	double getAmount();
}
