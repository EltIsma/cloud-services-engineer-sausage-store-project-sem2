SELECT setval('orders_id_seq', (SELECT MAX(id) FROM orders));
SELECT setval('product_id_seq', (SELECT MAX(id) FROM product));
