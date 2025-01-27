SELECT 
   
 market_date, 
   
 vendor_id, 
   
 ROUND(SUM(quantity * cost_to_customer_per_qty),2) AS sales
FROM farmers_market.customer_purchases
GROUP BY market_date, vendor_id
ORDER BY market_date, vendor_id