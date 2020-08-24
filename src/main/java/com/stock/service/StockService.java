package com.stock.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stock.dto.StockDTO;
import com.stock.model.Stock;
import com.stock.repository.StockRepository;

/**
 * 
 * @author sangeetha
 *
 */
@Service
public class StockService {

	@Autowired
	private StockRepository stockRepository;

	/**
	 * createOrUpdateStock
	 * 
	 * @param dto
	 */
	public void createOrUpdateStock(StockDTO dto) {
		Stock s = convertDtoToModel(dto);
		stockRepository.save(s);
	}

	/**
	 * getStock
	 * 
	 * @return
	 */
	public List<StockDTO> getStock() {
		List<Stock> list = stockRepository.findAll();
		List<StockDTO> l = list.stream().map(StockDTO::new).collect(Collectors.toCollection(ArrayList::new));
		return l;
	}

	/**
	 * editStock
	 * 
	 * @param id
	 * @return
	 */
	public StockDTO editStock(Long id) {
		Stock s = stockRepository.getOne(id);
		return convertModelToDTO(s);
	}

	private Stock convertDtoToModel(StockDTO s) {
		Stock stock = new Stock();
		if (s.getId() != null) {
			stock.setId(s.getId());
		}
		stock.setStockName(s.getStockName());
		stock.setPurchasePrice(s.getPurchasePrice());
		stock.setPurchaseDate(s.getPurchaseDate());
		stock.setQuantity(s.getQuantity());
		return stock;
	}

	private StockDTO convertModelToDTO(Stock s) {
		StockDTO dto = new StockDTO();
		if (s.getId() != null) {
			dto.setId(s.getId());
		}
		dto.setStockName(s.getStockName());
		dto.setPurchasePrice(s.getPurchasePrice());
		dto.setPurchaseDate(s.getPurchaseDate());	
		dto.setQuantity(s.getQuantity());

		return dto;
	}
}