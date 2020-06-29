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

import com.demo.Entities.NSS.Nss;
import com.demo.Entities.Tac.Transport;
import com.demo.Repositories.NSS.NssRepo;
import com.demo.Repositories.Tac.TransportRepo;

@Service
@Transactional
public class SpringnssServiceImpl implements SpringnssService {

	@Autowired
	NssRepo nssR;

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
			Nss edu = new Nss();
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
				edu.setNet_deposit(row.getCell(2).getNumericCellValue());
			}

			
			Nss byDistrict = nssR.findByDistrict(edu.getDistrict());
			if(byDistrict==null) {
				nssR.save(edu);
			}
			else {
				byDistrict.setApprove(0);
				byDistrict.setLoc_category(2);
				byDistrict.setLoc_id(2);
				byDistrict.setYear(edu.getYear());
				byDistrict.setDistrict(edu.getDistrict());
				byDistrict.setNet_deposit(edu.getNet_deposit());
				byDistrict.setApprove(0);
				nssR.save(byDistrict);
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
