
-- LumaScape E-Commerce Analytics
-- View: vw_comparable_yoy_growth
-- Purpose: Calculate annual revenue and profit growth.
-- Grain: One row per sales year.

WITH annual_performance AS (
  SELECT
    EXTRACT(YEAR FROM sales_month) AS sales_year,
    ROUND(SUM(net_revenue), 2) AS net_revenue,
    ROUND(SUM(gross_profit), 2) AS gross_profit
  FROM
    `lumascape-e-commerce-analytics.lumascape_analytics.vw_monthly_sales_performance`
  GROUP BY
    sales_year
),

year_comparison AS (
  SELECT
    sales_year,
    net_revenue,
    gross_profit,

    LAG(net_revenue) OVER (
      ORDER BY sales_year
    ) AS previous_year_revenue,

    LAG(gross_profit) OVER (
      ORDER BY sales_year
    ) AS previous_year_profit

  FROM annual_performance
)

SELECT
  sales_year,
  net_revenue,
  gross_profit,
  previous_year_revenue,
  previous_year_profit,

  ROUND(
    100 * SAFE_DIVIDE(
      net_revenue - previous_year_revenue,
      previous_year_revenue
    ),
    2
  ) AS revenue_growth_pct,

  ROUND(
    100 * SAFE_DIVIDE(
      gross_profit - previous_year_profit,
      previous_year_profit
    ),
    2
  ) AS profit_growth_pct

FROM year_comparison
ORDER BY sales_year;
