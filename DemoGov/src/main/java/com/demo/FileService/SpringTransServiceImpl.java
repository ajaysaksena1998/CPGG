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

import com.demo.Entities.Tac.Transport;
import com.demo.Repositories.Tac.TransportRepo;

@Service
@Transactional
public class SpringTransServiceImpl implements SpringTransService {

	@Autowired
	TransportRepo transRepo;

	@Override
	public boolean saveDataFromFile(MultipartFile file) {
		
		System.out.println("Hi");
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
			Transport edu = new Transport();
			edu.setLoc_category(2);
			edu.setLoc_id(2);
			edu.setApprove(0);
			
			if(row.getCell(0).getCellType()== Cell.CELL_TYPE_STRING) {
				edu.setYear(row.getCell(0).getStringCellValue());
			}
			if(row.getCell(1).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setHeavy_vehicles(row.getCell(1).getNumericCellValue());
			}
			if(row.getCell(2).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setDeliver_recovery_van(row.getCell(2).getNumericCellValue());
			}
			if(row.getCell(3).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setBuses(row.getCell(3).getNumericCellValue());
			}
			if(row.getCell(4).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setMaxi_taxi_cab(row.getCell(4).getNumericCellValue());
			}
			if(row.getCell(5).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setThree_wheelers(row.getCell(5).getNumericCellValue());
			}
			if(row.getCell(6).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setTwo_wheelers(row.getCell(6).getNumericCellValue());
			}
			if(row.getCell(7).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setFour_wheelers(row.getCell(7).getNumericCellValue());
			}
			if(row.getCell(8).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setOthers(row.getCell(8).getNumericCellValue());
			}
			
			edu.setTotal(edu.getHeavy_vehicles()+edu.getDeliver_recovery_van()+edu.getBuses()+edu.getMaxi_taxi_cab()+edu.getThree_wheelers()+edu.getTwo_wheelers()+edu.getFour_wheelers()+edu.getOthers());
			
			Transport byDistrict = transRepo.findByYear(edu.getYear());
			if(byDistrict==null) {
				System.out.println(edu);
				transRepo.save(edu);
			}
			else {
				byDistrict.setApprove(0);
				byDistrict.setLoc_category(2);
				byDistrict.setLoc_id(2);
				byDistrict.setBuses(edu.getBuses());
				byDistrict.setDeliver_recovery_van(edu.getDeliver_recovery_van());
				byDistrict.setFour_wheelers(edu.getFour_wheelers());
				byDistrict.setHeavy_vehicles(edu.getHeavy_vehicles());
				byDistrict.setMaxi_taxi_cab(edu.getMaxi_taxi_cab());
				byDistrict.setOthers(edu.getOthers());
				byDistrict.setThree_wheelers(edu.getThree_wheelers());
				byDistrict.setTotal(edu.getTotal());
				byDistrict.setTwo_wheelers(edu.getTwo_wheelers());
				byDistrict.setYear(edu.getYear());
				transRepo.save(byDistrict);
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
