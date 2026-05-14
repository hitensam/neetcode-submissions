SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE c.customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE product_name = 'A'
)
AND c.customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE product_name = 'B'
)
AND c.customer_id NOT IN (
    SELECT customer_id
    FROM Orders
    WHERE product_name = 'C'
)
Order by c.customer_name;