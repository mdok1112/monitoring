package com.ocr.monitoring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MskGroupInfoPK implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(name = "BUSI_CD", nullable = false)
	private String busi_cd;
	
	@Column(name = "MSK_GRP_KEY", nullable = false)
	private String msk_grp_key;
	
	public MskGroupInfoPK(String busi_cd, String msk_grp_key) {
		super();
		this.busi_cd = busi_cd;
		this.msk_grp_key = msk_grp_key;
	}
}
