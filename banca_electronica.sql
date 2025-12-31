/* ============================================================
   ETL Regulatorio – Banca Electrónica
   Query representativo basado en experiencia real
   ============================================================ */

SELECT
    DATE_TRUNC('month', t.transaction_date) AS period_month,
    COUNT(DISTINCT c.customer_id)           AS total_customers,
    COUNT(t.transaction_id)                 AS total_transactions,
    SUM(t.amount)                           AS total_amount
FROM transactions t
JOIN customers c
    ON t.customer_id = c.customer_id
WHERE c.status = 'ACTIVE'
  AND t.channel = 'ELECTRONIC'
  AND t.product_code = 'PRODUCT_X'
  AND t.transaction_date BETWEEN
        DATE '2024-01-01' AND DATE '2024-03-31'
GROUP BY
    DATE_TRUNC('month', t.transaction_date)
ORDER BY
    period_month;
