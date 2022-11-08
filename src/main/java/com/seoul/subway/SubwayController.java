package com.seoul.subway;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.javassist.runtime.DotClass;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SubwayController {
	
	private static final Logger logger = LoggerFactory.getLogger(SubwayController.class);
	
	@Autowired
	private SubwayDAO subwayDAO;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "subway";
	}
	
	@RequestMapping(value = "/api/subway" , method = RequestMethod.POST)
	public@ResponseBody int addSubway(@RequestBody List<SubwayDTO> list, 
										@ModelAttribute SubwayDTO dto) {
		logger.info("api를 list로 받아온다");
		System.out.println("list ==" + list);
		System.out.println("list.size() == " + list.size());
		int result = -1;
		for(int i =0; i < list.size(); i++) {
			 result = subwayDAO.insertSubway(list.get(i));
			System.out.println("result  :: " + result);
			System.out.println("insert 성공!!");
		}
		System.out.println("real result  :: " + result);
		return result;
	}
}
