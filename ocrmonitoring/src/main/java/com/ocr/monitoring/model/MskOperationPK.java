package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskOperationPK implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(name = "JOB_GB", nullable = false)
	private String job_gb;
	
	@Column(name = "SERVER_IP", nullable = false)
	private String server_ip;
	
	public MskOperationPK(String job_gb, String server_ip) {
		super();
		this.job_gb = job_gb;
		this.server_ip = server_ip;
	}
}
