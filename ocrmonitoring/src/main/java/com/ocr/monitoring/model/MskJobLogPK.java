package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskJobLogPK implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(name = "JOB_GB", nullable = false)
	private String job_gb;
	
	@Column(name = "SERVER_IP", nullable = false)
	private String server_ip;
	
	@Column(name = "MASKING_LOG_KEY", nullable = false)
	private String masking_log_key;
	
	@Column(name = "MASKING_LOG_SEQ", nullable = false)
	private int masking_log_seq;
	
	public MskJobLogPK(String job_gb, String server_ip, String masking_log_key, int masking_log_seq) {
		super();
		this.job_gb = job_gb;
		this.server_ip = server_ip;
		this.masking_log_key = masking_log_key;
		this.masking_log_seq = masking_log_seq;
	}
}
