
-- LumaScape E-Commerce Analytics
-- View: vw_monthly_category_performance
-- Purpose: Analyze monthly product category sales,
-- revenue, cost of goods sold, gross profit,
-- and gross margin.
-- Grain: One row per sales month and product category.
-- Source: BigQuery order_items, orders, and products.

SELECT
  DATE_TRUNC(o.order_date, MONTH) AS sales_month,
  p.category,

  COUNT(DISTINCT oi.product_id) AS products_sold,
  COUNT(DISTINCT oi.order_id) AS total_orders,
  SUM(oi.quantity) AS units_sold,

  ROUND(SUM(
    oi.quantity * oi.unit_price - oi.discount_amount
  ), 2) AS net_revenue,

  ROUND(SUM(
    oi.quantity * oi.unit_cost_at_sale
  ), 2) AS total_cogs,

  ROUND(SUM(
    oi.quantity * oi.unit_price
    - oi.discount_amount
    - oi.quantity * oi.unit_cost_at_sale
  ), 2) AS gross_profit,

  ROUND(
    100 * SAFE_DIVIDE(
      SUM(
        oi.quantity * oi.unit_price
        - oi.discount_amount
        - oi.quantity * oi.unit_cost_at_sale
      ),
      SUM(
        oi.quantity * oi.unit_price - oi.discount_amount
      )
    ), 2
  ) AS gross_margin_pct

FROM
  `lumascape-e-commerce-analytics.lumascape_analytics.order_items` oi

JOIN
  `lumascape-e-commerce-analytics.lumascape_analytics.orders` o
  ON oi.order_id = o.order_id

JOIN
  `lumascape-e-commerce-analytics.lumascape_analytics.products` p
  ON oi.product_id = p.product_id

GROUP BY
  sales_month,
  p.category;
