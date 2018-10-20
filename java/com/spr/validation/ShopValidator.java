package com.spr.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.spr.model.Shop;

@Component
public class ShopValidator implements Validator{
	
	private final static String EMPLOYEE_NUMBER="emplNumber";
	
	public boolean supports (Class <?> clazz) {
		return Shop.class.isAssignableFrom(clazz);
	}
	
	//Always implement validate method on validate interface
	public void validate(Object target, Errors errors) {
		Shop shop = (Shop) target;
		Integer emplNumber = shop.getEmplNumber();
		
		ValidationUtils.rejectIfEmpty(errors, "name", "shop.name.empty");
		ValidationUtils.rejectIfEmpty(errors, EMPLOYEE_NUMBER, "shop.emplNumber.empty");
		
		if(emplNumber != null && emplNumber < 1)
			errors.rejectValue(EMPLOYEE_NUMBER, "shop.emplNumber.lessThenOne");
		
	}

}
