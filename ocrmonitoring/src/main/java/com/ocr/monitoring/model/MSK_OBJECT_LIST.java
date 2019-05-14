package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_OBJECT_LIST")
public class MSK_OBJECT_LIST {
	
	@EmbeddedId
	private MskObjectListPK pk;
	
	@Column(name = "DN_FLAG", nullable = false)
	private String dn_flag;
	
	@Column(name = "DN_DTTM")
	private String dn_dttm;
	
	@Column(name = "DN_PATH")
	private String dn_path;
	
	@Column(name = "UP_FLAG", nullable = false)
	private String up_flag;
	
	@Column(name = "UP_DTTM")
	private String up_dttm;
	
	@Column(name = "UP_PATH")
	private String up_path;
	
	@Column(name = "MSK_FLAG", nullable = false)
	private String msk_flag;
	
	@Column(name = "MSK_DTTM")
	private String msk_dttm;
	
	@Column(name = "MSK_GRP_KEY", nullable = false)
	private String msk_grp_key;
	
	@Column(name = "FILE_LOCATION")
	private String file_location;
	
	@Column(name = "DEL_FLAG", nullable = false)
	private String del_flag;
	
	@Column(name = "SUB_BUSI_CD")
	private String sub_busi_cd;
	
}
