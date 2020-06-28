package com.demo.FileService;

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

import com.demo.Entities.Police.pc_police_stations_registered_crimes_year;
import com.demo.Entities.cpi.District_cpi;
import com.demo.Repositories.cpi.CpiRepo;

@Service
@Transactional
public class SpringcpiServiceImpl implements SpringcpiService {
	
	@Autowired
	CpiRepo cpiR;

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
			District_cpi edu = new District_cpi();
			edu.setLoc_category(2);
			edu.setLoc_id(2);
			edu.setApprove(0);
			if(row.getCell(0).getCellType()== Cell.CELL_TYPE_STRING) {
				edu.setDistrict(row.getCell(0).getStringCellValue());
			}
			if(row.getCell(1).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setInd(row.getCell(1).getNumericCellValue());
			}
			
			District_cpi byDistrict = cpiR.findByDistrict(edu.getDistrict());
			if(byDistrict==null) {
				cpiR.save(edu);
			}
			else {
				byDistrict.setApprove(0);
				byDistrict.setLoc_category(2);
				byDistrict.setLoc_id(2);
				byDistrict.setDistrict(edu.getDistrict());
				byDistrict.setInd(edu.getInd());
				cpiR.save(byDistrict);
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
