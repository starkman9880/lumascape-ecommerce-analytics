
-- LumaScape E-Commerce Analytics
-- View: vw_category_performance
-- Purpose: Analyze revenue, cost, gross profit,
-- and gross margin by product category.
-- Grain: One row per product category.

SELECT
  p.category,

  COUNT(DISTINCT oi.product_id) AS products_sold,

  COUNT(DISTINCT oi.order_id) AS total_orders,

  SUM(oi.quantity) AS units_sold,

  ROUND(
    SUM(
      oi.quantity * oi.unit_price
      - oi.discount_amount
    ), 2
  ) AS net_revenue,

  ROUND(
    SUM(
      oi.quantity * oi.unit_cost_at_sale
    ), 2
  ) AS total_cogs,

  ROUND(
    SUM(
      oi.quantity * oi.unit_price
      - oi.discount_amount
      - oi.quantity * oi.unit_cost_at_sale
    ), 2
  ) AS gross_profit,

  ROUND(
    100 * SAFE_DIVIDE(
      SUM(
        oi.quantity * oi.unit_price
        - oi.discount_amount
        - oi.quantity * oi.unit_cost_at_sale
      ),
      SUM(
        oi.quantity * oi.unit_price
        - oi.discount_amount
      )
    ), 2
  ) AS gross_margin_pct

FROM
  `lumascape-e-commerce-analytics.lumascape_analytics.order_items` oi

JOIN
  `lumascape-e-commerce-analytics.lumascape_analytics.products` p
  ON oi.product_id = p.product_id

GROUP BY
  p.category;
