
-- Query a: SELECT, WHERE, ORDER BY
SELECT * FROM Customers
WHERE country = 'India'
ORDER BY name ASC;

-- Query b: GROUP BY with Aggregate
SELECT o.customer_id, c.name, SUM(p.price * od.quantity) AS total_spent
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.name
ORDER BY total_spent DESC;

-- Query c: INNER and LEFT JOIN
SELECT o.order_id, c.name, o.order_date
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

SELECT c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- Query d: Subquery
SELECT name FROM Customers
WHERE customer_id IN (
    SELECT customer_id FROM Orders o
    JOIN OrderDetails od ON o.order_id = od.order_id
    JOIN Products p ON od.product_id = p.product_id
    GROUP BY o.customer_id
    HAVING SUM(p.price * od.quantity) > (
        SELECT AVG(total_spent) FROM (
            SELECT SUM(p.price * od.quantity) AS total_spent
            FROM Orders o
            JOIN OrderDetails od ON o.order_id = od.order_id
            JOIN Products p ON od.product_id = p.product_id
            GROUP BY o.customer_id
        )
    )
);

-- Query e: View
CREATE VIEW HighValueCustomers AS
SELECT o.customer_id, c.name, SUM(p.price * od.quantity) AS total_spent
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.name
HAVING total_spent > 10000;

-- Query f: Indexes
CREATE INDEX idx_customer_id ON Orders(customer_id);
CREATE INDEX idx_product_id ON OrderDetails(product_id);
