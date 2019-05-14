package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskFileInfoInspectPK implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(name = "BUSI_CD", nullable = false)
	private String busi_cd;
	
	@Column(name = "MSK_GRP_KEY", nullable = false)
	private String msk_grp_key;
	
	@Column(name = "ELEMENTID", nullable = false)
	private String elementId;
	
	@Column(name = "INSPECT_DTTM", nullable = false)
	private String inspect_dttm;
	
	public MskFileInfoInspectPK(String busi_cd, String msk_grp_key, String elementId, String inspect_dttm) {
		super();
		this.busi_cd = busi_cd;
		this.msk_grp_key = msk_grp_key;
		this.elementId = elementId;
		this.inspect_dttm = inspect_dttm;
	}
}
