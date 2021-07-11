package asmJava5.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the Province database table.
 * 
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Province")
public class Province implements Serializable {

	@Id
	private int id;
	private String name;


	@JsonIgnore
	@OneToMany(mappedBy = "province")
	List<Shop> province_id;
}