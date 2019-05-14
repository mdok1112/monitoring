package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_CONFIG")
public class MSK_CONFIG {

	@EmbeddedId
	private MskConfigPK pk;
	
	
	@Column(name = "CONFIG_VALUE")
	private String config_value;
	
	@Column(name = "CONFG_DESC")
	private String config_desc;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
