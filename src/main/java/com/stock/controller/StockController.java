package com.stock.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stock.dto.StockDTO;
import com.stock.service.StockService;

/**
 * 
 * @author sangeetha
 *
 */

@Controller
public class StockController {

	@Autowired
	StockService stockService;

	/**
	 * createStock
	 * 
	 * @param stock
	 * @return
	 */
	@PostMapping("/home")
	public String createStock(@ModelAttribute("stock") StockDTO stock) {
		stockService.createOrUpdateStock(stock);
		return "redirect:/displayStock";
	}

	/**
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("/displayStock")
	public String displayStock(Model model) {
		List<StockDTO> stockList = stockService.getStock();
		model.addAttribute("stockList", stockList);
		return "stockList";
	}

	/**
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("/register")
    public String register(Map<String, Object> model) {
          model.put("stock", new StockDTO());
          return "register";
	}
          
	@GetMapping("/edit")
	public String editStock(@RequestParam("id") String id, Map<String, Object> model) {
		StockDTO s = stockService.editStock(Long.parseLong(id));
		model.put("stock", s);
		return "register";
	}
}
