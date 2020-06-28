package com.demo.FileService;

import org.springframework.web.multipart.MultipartFile;

public interface SpringTransService {

	boolean saveDataFromFile(MultipartFile file);

}
