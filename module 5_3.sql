SELECT 
    sub.order_id,
    AVG(sub.quantity) AS avg_quantity
FROM 
    (SELECT 
         order_id, 
         quantity
     FROM 
         order_details
     WHERE 
         quantity > 10) AS sub
GROUP BY 
    sub.order_id;
