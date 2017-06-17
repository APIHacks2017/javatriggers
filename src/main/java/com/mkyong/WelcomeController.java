package com.mkyong;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.data.GoogleMapInfo;
import com.data.service.XmlConversionService;

@Controller
public class WelcomeController {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "welcome";
	}
	
	/*@RequestMapping("/optimalroute")
	public String optimalroute(Map<String, Object> model) {
		model.put("message", this.message);
		return "googlemap";
	}*/
	
	@RequestMapping(value = "/optimalroute", method = RequestMethod.GET)
	public String getdata() {
		ArrayList<GoogleMapInfo> googleMapList = XmlConversionService.getGoogleMapValues();
		//return back to index.jsp
		ModelAndView model = new ModelAndView("index");
		model.addObject("markersList", googleMapList);

		return "googlemap";
	}

}