-- ProductPulse: run in SQLite against data/productpulse.db
SELECT COUNT(*) AS sessions, SUM(product_view) AS product_views,
 SUM(add_to_cart) AS carts, SUM(checkout_started) AS checkouts,
 SUM(purchase) AS purchases, ROUND(SUM(revenue_usd),2) AS revenue,
 ROUND(100.0*SUM(purchase)/COUNT(*),2) AS conversion_pct,
 ROUND(100.0*(SUM(add_to_cart)-SUM(purchase))/NULLIF(SUM(add_to_cart),0),2) AS cart_abandonment_pct
FROM sessions;

-- Segment analysis; compare mobile vs desktop without implying causality
SELECT device, COUNT(*) sessions, SUM(add_to_cart) carts, SUM(purchase) purchases,
 ROUND(100.0*SUM(purchase)/COUNT(*),2) conversion_pct,
 ROUND(100.0*SUM(purchase)/NULLIF(SUM(add_to_cart),0),2) cart_to_purchase_pct,
 ROUND(SUM(revenue_usd),2) revenue
FROM sessions GROUP BY device ORDER BY sessions DESC;

-- Acquisition channel performance
SELECT channel, COUNT(*) sessions, SUM(purchase) purchases,
 ROUND(100.0*SUM(purchase)/COUNT(*),2) conversion_pct,
 ROUND(SUM(revenue_usd),2) revenue
FROM sessions GROUP BY channel ORDER BY revenue DESC;

-- Weekly trends
SELECT strftime('%Y-%W',date) year_week, COUNT(*) sessions,
 SUM(purchase) purchases, ROUND(SUM(revenue_usd),2) revenue
FROM sessions GROUP BY year_week ORDER BY year_week;
