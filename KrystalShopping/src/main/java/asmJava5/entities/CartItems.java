package asmJava5.entities;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartItems {
	private int productID;
	private String name;
	private String detail;
	private int price;
	private String image;
	private float sale;
	int saprice;
	@Temporal(TemporalType.DATE)
	Date createDate = new Date();
	private int orders;
	private int status;
	private int quantity = 1;

}
