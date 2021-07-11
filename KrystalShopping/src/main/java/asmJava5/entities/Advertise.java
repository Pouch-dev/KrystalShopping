package asmJava5.entities;

import java.io.Serializable;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * The persistent class for the Advertise database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Advertise")
public class Advertise implements Serializable{

	@Id
	private int id;
	private String name;
	private String url;
	private int width;
	private int height;
	private String link;
	private int target;
	private int postion;
	private int orders;
	private int status;

}