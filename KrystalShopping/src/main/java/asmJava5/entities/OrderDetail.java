package asmJava5.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="OrderDetail")
public class OrderDetail implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int quantity ;
	private int price ;
	private String country;
	private String city;
	private boolean payment;
	private String fullname;
	
	@ManyToOne
	@JoinColumn(name="order_id")
	Order order ;
	@ManyToOne
	@JoinColumn(name = "Productid")
	Product product;
}
