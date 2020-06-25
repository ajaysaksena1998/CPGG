package com.demo.FileService;

import org.springframework.web.multipart.MultipartFile;

public interface SpringFileService {

	boolean saveDataFromFile(MultipartFile file);

}
