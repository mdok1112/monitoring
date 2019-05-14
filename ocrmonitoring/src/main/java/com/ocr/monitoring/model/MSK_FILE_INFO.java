package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_FILE_INFO")
public class MSK_FILE_INFO {
	
	@EmbeddedId
	private MskFileInfoPK pk;
	
	@Column(name = "IMG_FORMAT")
	private String img_format;
	
	@Column(name = "IMG_PATH")
	private String img_path;
	
	@Column(name = "DN_SVR_IP")
	private String dn_svr_ip;
	
	@Column(name = "IMG_PAGE_CNT")
	private int img_page_cnt;
	
	@Column(name = "IMG_SIZE_BEFORE")
	private int img_size_before;
	
	@Column(name = "IMG_SIZE_AFTER")
	private int img_size_after;
	
	@Column(name = "ITEM_CNT_DETECT_FP", nullable = false)
	private int item_cnt_detect_fp;
	
	@Column(name = "ITEM_CNT_DETECT_ID", nullable = false)
	private int item_cnt_detect_id;
	
	@Column(name = "ITEM_CNT_MISS_FP")
	private int item_cnt_miss_fp;
	
	@Column(name = "ITEM_CNT_MISS_ID")
	private int item_cnt_miss_id;
	
	@Column(name = "ITEM_CNT_FAIL_FP")
	private int item_cnt_fail_fp;
	
	@Column(name = "ITEM_CNT_FAIL_ID")
	private int item_cnt_fail_id;
	
	@Column(name = "UPLOAD_YN")
	private String upload_yn;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}
