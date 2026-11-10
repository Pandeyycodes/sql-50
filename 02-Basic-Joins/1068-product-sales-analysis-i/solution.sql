Select p.product_name, s.year,s.price 
From Sales s 
left join Product P 
on s.product_id = p.Product_id 