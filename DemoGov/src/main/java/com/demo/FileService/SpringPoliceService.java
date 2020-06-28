package com.demo.FileService;

import org.springframework.web.multipart.MultipartFile;

public interface SpringPoliceService {

	boolean saveDataFromFile(MultipartFile file);
}
