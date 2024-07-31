package Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@jakarta.persistence.Entity
@Getter
@Setter
@Table(name="member_table")
public interface Entity {

	@Id // pk지정
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String user;
	
	@Column
	private String wser;
	
	@Column 
	private String pser1;
	
	
}
