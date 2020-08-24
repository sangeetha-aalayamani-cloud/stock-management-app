package com.stock.dto;

import java.sql.Date;

import com.stock.model.Stock;
import lombok.Data;

@Data
public class StockDTO {

	private Long id;
	private String stockName;
	private double purchasePrice;
	private Date purchaseDate;
	private double quantity;
	
	public StockDTO() {
		
	}
	
	public StockDTO(Stock s) {
		this.id = s.getId();
		this.stockName = s.getStockName();
		this.purchasePrice = s.getPurchasePrice();
		this.purchaseDate = s.getPurchaseDate();
		this.quantity = s.getQuantity();
	}
		
}
