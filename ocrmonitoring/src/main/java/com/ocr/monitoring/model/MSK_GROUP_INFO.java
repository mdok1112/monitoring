package com.ocr.monitoring.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MSK_GROUP_INFO")
public class MSK_GROUP_INFO {
	
	@EmbeddedId
	private MskGroupInfoPK pk;
	
	@Column(name = "GRP_DN_STATUS", nullable = false)
	private String grp_dn_status;
	
	@Column(name = "GRP_DN_SVR_IP")
	private String grp_dn_svr_ip;
	
	@Column(name = "GRP_DN_DTTM")
	private String grp_dn_dttm;
	
	@Column(name = "GRP_DN_FILE_CNT")
	private int grp_dn_file_cnt;
	
	@Column(name = "GRP_UP_STATUS", nullable = false)
	private String grp_up_status;
	
	@Column(name = "GRP_UP_SVR_IP")
	private String grp_up_svr_ip;
	
	@Column(name = "GRP_UP_DTTM")
	private String grp_up_dttm;
	
	@Column(name = "GRP_UP_FILE_CNT")
	private int grp_up_file_cnt;
	
	@Column(name = "GRP_MSK_STATUS", nullable = false)
	private String grp_msk_status;
	
	@Column(name = "GRP_MSK_SVR_IP")
	private String grp_msk_svr_ip;
	
	@Column(name = "GRP_MSK_START_DTTM")
	private String grp_msk_start_dtm;
	
	@Column(name = "GRP_MSK_END_DTTM")
	private String grp_msk_end_dttm;
	
	@Column(name = "GRP_MSK_PAGE_CNT")
	private int grp_msk_page_cnt;
	
	@Column(name = "GRP_INSPECT_USER")
	private String grp_inspect_user;
	
	@Column(name = "FILE_CNT_DETECT")
	private int file_cnt_detect;
	
	@Column(name = "FILE_CNT_DETECT_FP")
	private int file_cnt_detect_fp;
	
	@Column(name = "FILE_CNT_DETECT_ID")
	private int file_cnt_detect_id;
	
	@Column(name = "FILE_CNT_DETECT_DUP")
	private int file_cnt_detect_dup;
	
	@Column(name = "ITEM_CNT_DETECT_FP")
	private int item_cnt_detect_fp;
	
	@Column(name = "ITEM_CNT_DETECT_ID")
	private int item_cnt_detect_id;
	
	@Column(name = "ITEM_CNT_MISS_FP")
	private int item_cnt_miss_fp;
	
	@Column(name = "ITEM_CNT_MISS_ID")
	private int item_cnt_miss_id;
	
	@Column(name = "ITEM_CNT_FAIL_FP")
	private int item_cnt_fail_fp;
	
	@Column(name = "ITEM_CNT_FAIL_ID")
	private int item_cnt_fail_id;
	
	@Column(name = "MISS_INSPECT_YN_FP")
	private String miss_inspect_yn_fp;
	
	@Column(name = "MISS_INSPECT_YN_ID")
	private String miss_inspect_yn_id;
	
	@Column(name = "FAIL_INSPECT_YN_FP")
	private String fail_inspect_yn_fp;
	
	@Column(name = "FAIL_INSPECT_YN_ID")
	private String fail_inspect_yn_id;
	
	@Column(name = "MISS_INSPECT_DTTM")
	private String miss_insepct_dttm;
	
	@Column(name = "FAIL_INSPECT_DTTM")
	private String fail_inspect_dttm;
	
	@Column(name = "CONFIRM_FILE_CNT")
	private int confirm_file_cnt;
	
	@Column(name = "FST_REG_DTTM")
	private String fst_reg_dttm;
	
	@Column(name = "LST_CHG_DTTM")
	private String lst_chg_dttm;
}