package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_SCHEDULE")
public class MSK_SCHEDULE {
	
	@EmbeddedId
	private MskSchedulePK pk;
	
	@Column(name = "JOB_START_TM", nullable = false)
	private String job_start_tm;
	
	@Column(name = "JOB_END_TM", nullable = false)
	private String job_end_tm;
	
	@Column(name = "JOB_START_TM_HOL", nullable = false)
	private String job_start_tm_hol;
	
	@Column(name = "JOB_END_TM_HOL", nullable = false)
	private String job_end_tm_hol;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
