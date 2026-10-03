SELECT product_id , SUBSTR(product_name, 1,3) as name_prefix
FROM products
ORDER by product_id
