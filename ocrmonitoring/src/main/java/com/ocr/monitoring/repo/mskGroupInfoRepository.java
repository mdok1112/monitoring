package com.ocr.monitoring.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.ocr.monitoring.model.MSK_GROUP_INFO;
import com.ocr.monitoring.model.MskGroupInfoPK;;

public interface mskGroupInfoRepository extends CrudRepository<MSK_GROUP_INFO, MskGroupInfoPK>{
	List<MSK_GROUP_INFO> findAll();
	
}
