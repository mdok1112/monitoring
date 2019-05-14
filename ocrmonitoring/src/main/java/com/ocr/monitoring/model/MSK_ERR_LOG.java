package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_ERR_LOG")
public class MSK_ERR_LOG {

	@EmbeddedId
	private MskErrLogPK pk;
	
	@Column(name = "MASKING_LOG_VALUE", nullable = true)
	private String masking_log_value;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
