package com.data.service;

import java.util.ArrayList;

import com.data.GoogleMapInfo;

public class XmlConversionService 
{
	public static ArrayList<GoogleMapInfo> getGoogleMapValues() {
		ArrayList<GoogleMapInfo> googleList = new ArrayList<GoogleMapInfo>();
		GoogleMapInfo googleMapInfo = new GoogleMapInfo();
		googleMapInfo.setTitle("Pune");
		googleMapInfo.setDescription("Pune is the seventh largest metropolis in India, the second largest in the state of Maharashtra after Mumbai.");
		googleMapInfo.setLatitude("18.523600");
		googleMapInfo.setLongitude("73.847800");
		
		GoogleMapInfo googleMapInfo2 = new GoogleMapInfo();
		googleMapInfo2.setTitle("Mumbai");
		googleMapInfo2.setDescription("Mumbai formerly Bombay, is the capital city of the Indian state of Maharashtra.");
		googleMapInfo2.setLatitude("18.964700");
		googleMapInfo2.setLongitude("72.825800");
		
		GoogleMapInfo googleMapInfo3 = new GoogleMapInfo();
		googleMapInfo3.setTitle("Surat");
		googleMapInfo3.setDescription("Surat is a coastal town and a municipal council in India.");
		googleMapInfo3.setLatitude("21.1594695");
		googleMapInfo3.setLongitude("72.682336");
		
		GoogleMapInfo googleMapInfo4 = new GoogleMapInfo();
		googleMapInfo4.setTitle("MadhyaPradesh");
		googleMapInfo4.setDescription("MadhyaPradesh is a coastal town and an most population council in India.");
		googleMapInfo4.setLatitude("23.4312446");
		googleMapInfo4.setLongitude("76.5466449");
		
		GoogleMapInfo googleMapInfo5 = new GoogleMapInfo();
		googleMapInfo5.setTitle("Ahmedabad");
		googleMapInfo5.setDescription("Ahmedabad is an clean and big city in India.");
		googleMapInfo5.setLatitude("23.0204978");
		googleMapInfo5.setLongitude("72.4396531");
		
		googleList.add(googleMapInfo);
		googleList.add(googleMapInfo2);
		googleList.add(googleMapInfo3);
		googleList.add(googleMapInfo4);
		googleList.add(googleMapInfo5);
		
		return googleList;
	}

}
