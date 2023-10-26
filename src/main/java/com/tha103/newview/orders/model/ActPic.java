package com.tha103.newview.orders.model;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.tha103.newview.act.model.ActVO;
import com.tha103.newview.actcategory.model.ActCategory;

@Entity(name = "act2")
@Table(name = "actpic")
public class ActPic {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "actPicID", updatable = false)
	private Integer actPicID;

	

	@Column(name = "actPic", columnDefinition = "LONGBLOB")
	private byte[] actPic;



	public ActPic() {
		super();
		// TODO Auto-generated constructor stub
	}



	public ActPic(Integer actPicID, byte[] actPic) {
		super();
		this.actPicID = actPicID;
		this.actPic = actPic;
	}

}
