CREATE OR REPLACE VIEW manufacturing.products_details
 AS
 SELECT products.product_id,
    products.name AS product_name,
    products.manufacturing_cost,
    categories.name AS category_name,
    categories.market
   FROM manufacturing.products
     JOIN manufacturing.categories ON products.category_id = categories.category_id;

ALTER TABLE manufacturing.products_details
    OWNER TO postgres;