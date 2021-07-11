package asmJava5.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the Users database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Users")
public class User implements Serializable{

	@Id
	@NotEmpty(message = "Username not emty")
	private String username;
	@NotEmpty(message = "Email not emty")
	private String email;
	@NotEmpty(message = "Fullname not emty")
	private String fullname;
	@NotEmpty(message = "Password not empty")
	@Size(min = 2, message =  "Password height 3")
	private String password;
	@NotEmpty(message = "Address not emty")
	private String address;
	private boolean role = false;
	private boolean status = true;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> account_id;
}