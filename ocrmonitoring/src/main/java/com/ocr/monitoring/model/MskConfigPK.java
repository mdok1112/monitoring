package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskConfigPK implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(name = "CONFIG_SECTION", nullable = false)
	private String config_section;
	
	@Column(name = "CONFIG_KEY", nullable = false)
	private String config_key;
	
	public MskConfigPK(String config_section ,String config_key) {
		super();
		this.config_section = config_section;
		this.config_key= config_key;
	}
}
