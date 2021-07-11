package asmJava5.entities;

import java.io.Serializable;
import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;


/**
 * The persistent class for the Customers database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Customer")
public class Customer implements Serializable {

	@Id
	private int id;
	private String address;
	private Timestamp birthDay;
	private String email;
	private String name;
	private String province;
	private String tel;

}