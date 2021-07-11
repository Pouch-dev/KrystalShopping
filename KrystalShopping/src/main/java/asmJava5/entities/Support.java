package asmJava5.entities;

import java.io.Serializable;
import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the Support database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Support")
public class Support implements Serializable {

	@Id
	private int id;
	private String name;
	private String tel;
	private int type;
	private String nick;
	private int orders;
	private int status;

}