DROP FUNCTION IF EXISTS divide_values;

DELIMITER $$

CREATE FUNCTION divide_values(param1 FLOAT, param2 FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF param2 = 0 THEN
        RETURN NULL;
    ELSE
        RETURN param1 / param2;
    END IF;
END$$

DELIMITER ;

SELECT 
    id,
    order_id,
    product_id,
    quantity,
    divide_values(quantity, 2.0) AS divided_quantity
FROM 
    order_details;
