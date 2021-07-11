package asmJava5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asmJava5.entities.OrderDetail;

public interface OrderDetailDAO extends JpaRepository< OrderDetail, Integer>{
}
