package asmJava5.entities;

import java.io.Serializable;

import javax.persistence.Entity;
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
@Table(name="Shop")
public class Shop implements Serializable{
	
	@Id
	private int Id ;
	private String Name ;
	private String Address ;
	private String Tel ;
	@ManyToOne
	@JoinColumn(name="province_id")
	private Province province ;
}
