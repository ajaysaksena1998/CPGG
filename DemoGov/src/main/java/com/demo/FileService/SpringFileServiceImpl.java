package com.demo.FileService;

import java.io.File;
import java.util.Iterator;

import javax.transaction.Transactional;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.demo.Entities.Education.Education_institution_district;
import com.demo.Repositories.Education.Edu_Ins_Dis_Repo;

@Service
@Transactional
public class SpringFileServiceImpl implements SpringFileService {

	@Autowired
	Edu_Ins_Dis_Repo eduRepo;
	
	@Override
	public boolean saveDataFromFile(MultipartFile file) {
		
		boolean isFlag= false;
		String extension = FilenameUtils.getExtension(file.getOriginalFilename());
		if(extension.equalsIgnoreCase("xls") || extension.equalsIgnoreCase("xlsx")){
			isFlag = readDataFromExcel(file);
		}
		
		return false;
	}

	private boolean readDataFromExcel(MultipartFile file) {
		
		Workbook workbook = getWorkBook(file);
		Sheet sheet = workbook.getSheetAt(0);
		Iterator<Row> rows = sheet.iterator();
		rows.next();
		while(rows.hasNext()) {
			Row row = rows.next();
			Education_institution_district edu = new Education_institution_district();
			edu.setLoc_category(2);
			edu.setLoc_id(2);
			edu.setApprove(0);
			if(row.getCell(0).getCellType()== Cell.CELL_TYPE_STRING) {
				edu.setYear(row.getCell(0).getStringCellValue());
			}
			if(row.getCell(1).getCellType()== Cell.CELL_TYPE_STRING) {
				edu.setDistrict(row.getCell(1).getStringCellValue());
			}
			if(row.getCell(2).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setJunior_Basic_Schools(row.getCell(2).getNumericCellValue());
			}
			if(row.getCell(3).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setSenior_Secondary(row.getCell(3).getNumericCellValue());
			}
			if(row.getCell(4).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setDegree(row.getCell(4).getNumericCellValue());
			}
			if(row.getCell(5).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setUniversities(row.getCell(5).getNumericCellValue());
			}
			if(row.getCell(6).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setDeemed_Universities(row.getCell(6).getNumericCellValue());
			}
			if(row.getCell(7).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setIit(row.getCell(7).getNumericCellValue());
			}
			
			Education_institution_district byDistrict = eduRepo.findByDistrict(edu.getDistrict());
			if(byDistrict==null) {
				eduRepo.save(edu);
			}
			else {
				byDistrict.setApprove(0);
				byDistrict.setYear(edu.getYear());
				byDistrict.setJunior_Basic_Schools(edu.getJunior_Basic_Schools());
				byDistrict.setSenior_Secondary(edu.getSenior_Secondary());
				byDistrict.setDegree(edu.getDegree());
				byDistrict.setUniversities(edu.getUniversities());
				byDistrict.setDeemed_Universities(edu.getDeemed_Universities());
				byDistrict.setIit(edu.getIit());
				eduRepo.save(byDistrict);
			}
			
			
		}
		return true;
	}

	private Workbook getWorkBook(MultipartFile file) {
		
		Workbook workbook = null;
		String extension = FilenameUtils.getExtension(file.getOriginalFilename());
		try {
			
			if(extension.equalsIgnoreCase("xlsx")) {
				workbook = new XSSFWorkbook(file.getInputStream());
			}
			else if(extension.equalsIgnoreCase("xls")) {
				workbook = new HSSFWorkbook(file.getInputStream());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return workbook;
	}
	
}
