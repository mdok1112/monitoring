package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskSchedulePK implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Column(name = "JOB_GB", nullable = false)
	private String job_gb;
	
	public MskSchedulePK(String job_gb) {
		super();
		this.job_gb = job_gb;
	}
}
