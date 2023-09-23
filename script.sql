-- “аблицы products и categories имеют св€зь многие ко многим, так как у продукта есть 
-- много категорий, а у категории есть много продуктов. —ледовательно, необходима 
-- промежуточна€ таблица product_categories, котора€ св€звает продукты и категории.

-- «апрос дл€ получени€ всех пар продукт - категори€
SELECT products.name, categories.name  FROM products
	LEFT JOIN product_categories ON products.id = product_categories.product_id
	LEFT JOIN categories ON product_categories.category_id = categories.id 