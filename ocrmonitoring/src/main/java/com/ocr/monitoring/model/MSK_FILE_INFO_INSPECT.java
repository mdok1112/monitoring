package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_FILE_INFO_INSPECT")
public class MSK_FILE_INFO_INSPECT {

	@EmbeddedId
	private MskFileInfoInspectPK pk;
	
	@Column(name = "INSEPCT_TYPE", nullable = false)
	private String inspect_type;
	
	@Column(name = "MASKING_YN", nullable = false)
	private String masking_yn;
	
	@Column(name = "DN_SVR_IP")
	private String dn_svr_ip;
	
	@Column(name = "IMG_PATH")
	private String img_path;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
