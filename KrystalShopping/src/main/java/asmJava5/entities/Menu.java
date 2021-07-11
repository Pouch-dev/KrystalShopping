package asmJava5.entities;

import java.io.Serializable;
import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the Menu database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Menu")
public class Menu implements Serializable {

	@Id
	private int id;
	private String name;
	private String link;
	private int orders;
	private int parentID;

}