package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_PAGE_INFO")
public class MSK_PAGE_INFO {

	@EmbeddedId
	private MskPageInfoPK pk;
	
	@Column(name = "ITEM_TYPE", nullable = false)
	private String item_type;
	
	@Column(name = "ITEM_RECT", nullable = false)
	private String item_rect;
	
	@Column(name = "ITEM_AUTO_YN")
	private String item_auto_yn;
	
	@Column(name = "ITEM_MISS_YN")
	private String item_miss_yn;
	
	@Column(name = "ITEM_FAIL_YN")
	private String item_fail_yn;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
