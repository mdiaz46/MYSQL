SELECT 
   
 market_date, 
   
 customer_id, 
   
 vendor_id, 
   
 quantity * cost_to_customer_per_qty price
FROM farmers_market.customer_purchases
WHERE 
   
 market_date IN
      
 (
      
 SELECT market_date
      
 FROM farmers_market.market_date_info
      
 WHERE market_rain_flag = 1
      
 )
