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
import com.demo.Repositories.Police.PoliceRepo;

@Service
@Transactional
public class SpringPoliceServiceImpl implements SpringPoliceService {

	@Autowired
	PoliceRepo policeRepo;
	
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
			pc_police_stations_registered_crimes_year edu = new pc_police_stations_registered_crimes_year();
			edu.setLoc_category(2);
			edu.setLoc_id(2);
			edu.setApprove(0);
			if(row.getCell(0).getCellType()== Cell.CELL_TYPE_STRING) {
				edu.setYear(row.getCell(0).getStringCellValue());
			}
			if(row.getCell(1).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setPolicestations_rural(row.getCell(1).getNumericCellValue());
			}
			if(row.getCell(2).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setPolicestations_urban(row.getCell(2).getNumericCellValue());
			}
			if(row.getCell(3).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setRobbery(row.getCell(3).getNumericCellValue());
			}
			if(row.getCell(4).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setMurder(row.getCell(4).getNumericCellValue());
			}
			if(row.getCell(5).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setKidnapping(row.getCell(5).getNumericCellValue());
			}
			if(row.getCell(6).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setTheft(row.getCell(6).getNumericCellValue());
			}
			if(row.getCell(7).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setRiots(row.getCell(7).getNumericCellValue());
			}
			if(row.getCell(8).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setHarrassment_of_sc_st(row.getCell(8).getNumericCellValue());
			}
			if(row.getCell(9).getCellType()== Cell.CELL_TYPE_NUMERIC) {
				edu.setOther_crimes(row.getCell(9).getNumericCellValue());
			}
			edu.setPolicestations_total(edu.getPolicestations_rural()+edu.getPolicestations_urban());
			pc_police_stations_registered_crimes_year byDistrict = policeRepo.findByYear(edu.getYear());
			if(byDistrict==null) {
				policeRepo.save(edu);
			}
			else {
				byDistrict.setApprove(0);
				byDistrict.setLoc_category(2);
				byDistrict.setLoc_id(2);
				byDistrict.setPolicestations_total(edu.getPolicestations_total());
				byDistrict.setYear(edu.getYear());
				byDistrict.setPolicestations_rural(edu.getPolicestations_rural());
				byDistrict.setPolicestations_urban(edu.getPolicestations_urban());
				byDistrict.setRobbery(edu.getRobbery());
				byDistrict.setMurder(edu.getMurder());
				byDistrict.setKidnapping(edu.getKidnapping());
				byDistrict.setTheft(edu.getTheft());
				byDistrict.setRiots(edu.getRiots());
				byDistrict.setHarrassment_of_sc_st(edu.getHarrassment_of_sc_st());
				byDistrict.setOther_crimes(edu.getOther_crimes());
				policeRepo.save(byDistrict);
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
