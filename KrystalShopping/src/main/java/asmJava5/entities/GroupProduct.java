package asmJava5.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the GroupProduct database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="GroupProduct")
public class GroupProduct implements Serializable{

	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String content;
	private String images;
	private int orders;
	private int status;

	@ManyToOne
	@JoinColumn(name="category_id")
	private GroupProduct category;
	
	@JsonIgnore
	@OneToMany(mappedBy = "group")
	List<Product> group_id;
	
}