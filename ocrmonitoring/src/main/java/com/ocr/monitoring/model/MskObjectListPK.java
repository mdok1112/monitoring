package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskObjectListPK implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(name = "BUSI_CD", nullable = false)
	private String busi_cd;
	
	@Column(name = "ELEMENTID", nullable = false)
	private String elementId;
	
	public MskObjectListPK(String busi_cd, String elementId) {
		super();
		this.busi_cd = busi_cd;
		this.elementId = elementId;
	}
}
