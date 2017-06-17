package com.route;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Controller;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import com.data.GoogleMapInfo;

@Controller
public class OptimalShortestPath {
	
	public static void main(String args[]) {
		GoogleMapInfo googleMapInfo = optimalPath();
	}

	public static GoogleMapInfo optimalPath() {
		String path = "C:" + File.separatorChar + "Users" + File.separatorChar + "CIPL" + File.separatorChar + "Desktop" + File.separatorChar + "sample1.xml";
		File newFile = new File(path);
		Document docProductSiteMap = readFile(newFile);
		
		Element docEle = docProductSiteMap.getDocumentElement();
		System.out.println("Root element :" + docProductSiteMap.getDocumentElement().getNodeName());
		NodeList nl = docEle.getElementsByTagName("note");
		
		GoogleMapInfo googleMapInfo = new GoogleMapInfo();
		return googleMapInfo;
	}
	
	
	// Read data from "XML" file
	public static Document readFile(File file)
	{
		Document doc=null;
			try{
				DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
				doc = dBuilder.parse(file);
			} catch(Exception e) {
				e.printStackTrace();
			}
		return doc;
	}
}
