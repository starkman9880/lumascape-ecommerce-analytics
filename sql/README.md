
# SQL Reporting Views

## Overview

This folder documents the Google BigQuery SQL reporting layer for the LumaScape E-Commerce Analytics portfolio project.

The reporting views transform transactional e-commerce data into business-ready metrics for the three-page Looker Studio (Data Studio) executive dashboard.

## Data Architecture

Source Tables → BigQuery SQL Views → Looker Studio Dashboard → Business Insights

### Source Tables

- `customers` — customer information
- `orders` — order transactions
- `order_items` — products purchased within orders
- `products` — product information and categories
- `returns` — product return records

## Reporting Views

| View | Business Purpose |
|---|---|
| `vw_monthly_financial_performance` | Monthly revenue, gross profit, gross margin, and sales performance |
| `vw_monthly_category_performance` | Monthly revenue and profitability by product category |
| `vw_category_performance` | Overall category-level sales and profitability |
| `vw_comparable_yoy_growth` | Comparable year-over-year revenue and profit growth |
| `vw_customer_acquisition_performance` | Customer acquisition trends |
| `vw_customer_segmentation` | Customer-level segmentation analysis |
| `vw_geographic_performance` | Geographic sales performance |
| `vw_monthly_returns_performance` | Monthly returns analysis |

## Dashboard Integration

The SQL reporting views support three dashboard pages:

1. **Executive Performance Overview:** Revenue, gross profit, orders, units sold, gross margin, and year-over-year growth.
2. **Sales & Product Performance:** Monthly order and unit trends, product category revenue, and gross profit comparisons.
3. **Profitability & Margin Analysis:** Monthly gross profit, gross margin trends, and management recommendations.

## KPI Definitions

- **Net Revenue:** Revenue after applicable sales adjustments, as defined in the reporting SQL.
- **Gross Profit:** Net revenue minus cost of goods sold.
- **Gross Margin %:** Gross profit divided by net revenue, multiplied by 100.
- **Total Orders:** Count of distinct qualifying orders.
- **Units Sold:** Sum of qualifying item quantities.
- **Year-over-Year Growth %:** Percentage change compared with the corresponding prior-year period, using comparable reporting periods.

## SQL Documentation Standards

Each SQL file added to this folder should include:

- The BigQuery view name and business purpose.
- Source tables and join logic.
- KPI calculations and aggregation grain.
- Date filters and handling of incomplete periods.
- Assumptions, exclusions, and data-quality considerations.

## Project Status

The reporting views are present in the BigQuery `lumascape_analytics` dataset. The next repository step is to add and document the corresponding SQL definitions so that the analysis can be independently reviewed.

## Privacy and Reproducibility

Do not upload credentials, personal customer information, or confidential transaction records. SQL examples should be suitable for a sanitized portfolio repository.
  
