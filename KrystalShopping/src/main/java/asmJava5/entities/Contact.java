package asmJava5.entities;

import java.io.Serializable;
import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;


/**
 * The persistent class for the Contact database table.
 * 
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Contact")
public class Contact implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;
	private String address;
	private String company;
	private Timestamp date;
	private String detail;
	private String mal;
	private String name;
	private String tel;

}