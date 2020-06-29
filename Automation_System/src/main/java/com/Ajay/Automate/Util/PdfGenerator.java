package com.Ajay.Automate.Util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.springframework.stereotype.Component;

import com.Ajay.Automate.Models.Patient;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Component
public class PdfGenerator {

	
	public void generateItinary(Patient patient, String filepath) {

		Document document = new Document(PageSize.A4);
		try {
			PdfWriter.getInstance(document, new FileOutputStream(filepath));
			document.open();
			document.add(generateTable(patient));
			document.close();
		} catch (FileNotFoundException | DocumentException e) {
			System.out.println(e);
		}
	}

	private PdfPTable generateTable(Patient patient) {
		
		PdfPTable table = new PdfPTable(2);
		PdfPCell cell;
		cell = new PdfPCell(new Phrase("Medical Prescription"));
		cell.setColspan(2);
		cell.setPadding(5);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(cell);

		cell = new PdfPCell(new Phrase("Patient Details"));
		cell.setColspan(2);
		cell.setPadding(5);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(cell);

		cell = new PdfPCell(new Phrase("Date"));
		cell.setColspan(1);
		cell.setPadding(5);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(cell);
		
		cell = new PdfPCell(new Phrase(patient.getDateAndtime().toString()));
		cell.setColspan(1);
		cell.setPadding(5);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(cell);
		
		
//		table.addCell("Date");
//		table.addCell(patient.getDateAndtime().toString());
		
		table.addCell("Patient Id");
		table.addCell(Integer.toString(patient.getSapid()));

		table.addCell("Name");
		table.addCell(patient.getName());

		table.addCell("Contact Number");
		table.addCell(patient.getContact());

		table.addCell("Age");
		table.addCell(Integer.toString(patient.getAge()));

		table.addCell("Gender");
		table.addCell(patient.getGender());

		table.addCell("Course");
		table.addCell(patient.getCourse());
		
		table.addCell("Temperature");
		table.addCell(patient.getTemperature());
		
		table.addCell("Blood Pressure");
		table.addCell(patient.getBloodpressure());
		
		table.addCell("Weight");
		table.addCell(patient.getWeight());
		
		table.addCell("Chronic Ailment");
		table.addCell(patient.getChronicAilment());
		
		table.addCell("Allergies");
		table.addCell(patient.getAllergies());
		
		table.addCell("Conveyance");
		table.addCell(patient.getConveyance());
		
		table.addCell("Hostel Address");
		table.addCell(patient.getHostelAddr());
		

		cell = new PdfPCell(new Phrase("Diagnosis"));
		cell.setColspan(2);
		cell.setPadding(5);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(cell);

		table.addCell("Doctor");
		table.addCell(patient.getDoctorname());

		table.addCell("Medicines Prescribed");
		table.addCell(patient.getMedicine());

		table.addCell("Remarks");
		table.addCell(patient.getDiagnosis());

		return table;
	}
}
