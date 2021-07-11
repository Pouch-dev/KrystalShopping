package asmJava5.entities;

import java.io.Serializable;
import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the Company database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Company")
public class Company implements Serializable {

	@Id
	private String name;
	private String address;
	private String fax;
	private String phoneNumber;

}