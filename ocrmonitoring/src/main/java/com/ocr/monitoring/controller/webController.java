package com.ocr.monitoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

import com.ocr.monitoring.repo.mskGroupInfoRepository;

@Controller
public class webController {
	
	@Autowired
	mskGroupInfoRepository repository;
		
	@RequestMapping("/")
	public String home(Model model) {
		return dashboard(model);
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		return "dashboard";
	}
	
	@RequestMapping("/accumulate")
	public String accumulate(Model model) {
		return "accumulate";
	}
	
	@RequestMapping("/detail-status")
	public String detailStatus(Model model) {
		return "detail-status";
	}
	
	@RequestMapping("/errorlog")
	public String errorLog(Model model) {
		return "errorlog";
	}
	
	@RequestMapping("/server")
	public String server(Model model) {
		return "server";
	}
	
	@RequestMapping("/settingscode")
	public String settingsCode(Model model) {
		return "settingscode";
	}
	
	@RequestMapping("/status")
	public String status(Model model) {
		return "status";
	}
	
	@RequestMapping("/workercode")
	public String worderCode(Model model) {
		return "workercode";
	}
	
	@RequestMapping("/worklog")
	public String worklog(Model model) {
		return "worklog";
	}
}
