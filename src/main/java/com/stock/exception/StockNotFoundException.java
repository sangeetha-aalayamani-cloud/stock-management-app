package com.stock.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 
 * @author sangeetha
 *
 */
@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class StockNotFoundException extends Exception {

		private static final long serialVersionUID = 1L;

		public StockNotFoundException(String errorMessage){
	    	super(errorMessage);
	    }
}
