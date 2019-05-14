package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_JOB_LOG")
public class MSK_JOB_LOG {
	
	@EmbeddedId
	private MskJobLogPK pk;
	
	@Column(name = "MASKING_LOG_LEVEL", nullable = false)
	private String masking_log_level;
	
	@Column(name = "MASKING_LOG_VALUE", nullable = true)
	private String masking_log_value;
	
	@Column(name = "MASKING_LOG_CHECK", nullable = false)
	private String masking_log_check;
	
	@Column(name = "FST_REG_DTTM", nullable = false)
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM", nullable = false)
	private String lst_chg_dttm;
}
