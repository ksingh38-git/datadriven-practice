SELECT product_id, REPLACE(product_name, 'e', 'E') as modified_name
FROM products
ORDER BY product_id
