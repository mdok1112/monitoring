package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_OPERATION")
public class MSK_OPERATION {

	@EmbeddedId
	private MskOperationPK pk;
	
	@Column(name = "OPERATION_REQ", nullable = false)
	private String operation_req;
	
	@Column(name = "OPERATION_RES", nullable = false)
	private String operation_res;
	
	@Column(name = "STATUS_CPU")
	private String status_cpu;
	
	@Column(name = "STATUS_MEM")
	private String status_mem;
	
	@Column(name = "STATUS_HDD")
	private String status_hdd;
	
	@Column(name = "STATUS_HDD_REMAIN")
	private String status_hdd_remain;
	
	@Column(name = "LST_ALIVE_DTTM", nullable = false)
	private String lst_alive_dttm;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
