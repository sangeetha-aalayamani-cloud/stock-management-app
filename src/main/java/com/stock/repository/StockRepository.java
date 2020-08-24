package com.stock.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stock.model.Stock;
/**
 * 
 * @author sangeetha
 *
 */
@Repository
public interface StockRepository extends JpaRepository<Stock, Long> {

}
