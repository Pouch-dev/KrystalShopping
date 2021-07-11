package asmJava5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asmJava5.entities.Order;

public interface OrderDAO extends JpaRepository<Order, Integer>{
}
