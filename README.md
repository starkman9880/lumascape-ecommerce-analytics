
# LumaScape | E-Commerce Analytics

### End-to-End Business Intelligence & Data Analytics Portfolio Project

**Tools:** Google Cloud BigQuery · SQL · Looker Studio (Data Studio) · GitHub  
**Analysis Period:** January 2024 – 2026  
**Focus:** Revenue, profitability, sales trends, product performance, and year-over-year growth

---

## 1. Executive Summary

LumaScape is an e-commerce analytics portfolio project focused on transforming transactional sales data into actionable business intelligence.

The project uses Google BigQuery and SQL reporting views to support a three-page interactive Looker Studio dashboard.

The analysis addresses five business questions:

1. How are revenue and gross profit changing over time?
2. Which product categories generate the most revenue and profit?
3. How are order volume and units sold changing?
4. Is gross margin remaining stable as the business grows?
5. How does performance compare year over year?

The objective is to demonstrate an end-to-end analytics workflow, from structured transactional data to executive reporting and business recommendations.

## 2. Business Problem

E-commerce businesses generate large volumes of customer, order, product, and transaction data.

Without centralized reporting, management may struggle to understand sales performance, identify profitable product categories, and monitor growth.

LumaScape addresses these challenges through a structured reporting model designed to provide:

- Executive visibility into financial performance
- Consistent KPI definitions
- Monthly sales and profitability trends
- Product category comparisons
- Year-over-year growth analysis
- Interactive date-based reporting

## 3. Technology Stack

| Technology | Purpose |
|---|---|
| Google Cloud BigQuery | Cloud data warehouse |
| SQL | Data transformation, aggregation, and KPI calculations |
| Looker Studio / Data Studio | Interactive business intelligence dashboards |
| GitHub | Project documentation and version control |

## 4. Data Architecture

The analytical workflow follows this structure:

```text
E-Commerce Transactional Data
             |
             v
      Google BigQuery
             |
             v
       SQL Data Model
             |
             v
     SQL Reporting Views
             |
             v
       Looker Studio
             |
             v
  Executive BI Dashboard
             |
             v
 Business Insights & Actions
```

### Source Tables

The BigQuery dataset `lumascape_analytics` contains five core tables:

| Table | Analytical purpose |
|---|---|
| `customers` | Customer information and segmentation |
| `orders` | Order-level transactions and dates |
| `order_items` | Product-level sales, quantity, pricing, discounts, and costs |
| `products` | Product details and categories |
| `returns` | Product return information |

### Reporting Views

The project includes reporting views supporting:

- Product category performance
- Monthly product category performance
- Monthly financial performance
- Monthly returns performance
- Comparable year-over-year growth
- Customer acquisition performance
- Customer segmentation
- Geographic performance

These views separate analytical calculations from dashboard presentation.

## 5. KPI Framework

| KPI | Business definition |
|---|---|
| Net Revenue | Sales revenue after recorded discounts |
| Gross Profit | Net revenue minus cost of goods sold |
| Gross Margin % | Gross profit divided by net revenue |
| Total Orders | Distinct customer orders |
| Units Sold | Total product units sold |
| Revenue Growth YoY | Percentage change in revenue versus the comparable prior-year period |
| Profit Growth YoY | Percentage change in gross profit versus the comparable prior-year period |

### Core Financial Calculations

**Net Revenue**

```sql
SUM(
  quantity * unit_price
  - discount_amount
)
```

**Cost of Goods Sold**

```sql
SUM(
  quantity * unit_cost_at_sale
)
```

**Gross Profit**

```sql
SUM(
  quantity * unit_price
  - discount_amount
  - quantity * unit_cost_at_sale
)
```

**Gross Margin Percentage**

```sql
100 * SAFE_DIVIDE(gross_profit, net_revenue)
```

These definitions reflect the transaction-level reporting logic used in the project.

## 6. Executive Dashboard

The interactive Looker Studio report contains three pages.

### Page 1 — E-Commerce Performance Overview

Provides executive-level visibility into:

- Net revenue
- Gross profit
- Total orders
- Units sold
- Gross margin percentage
- Revenue growth YoY
- Profit growth YoY
- Monthly revenue and gross profit trends

### Page 2 — Sales & Product Performance

Analyzes:

- Monthly total orders
- Monthly units sold
- Net revenue by product category
- Gross profit by product category
- Category-level business insights

### Page 3 — Profitability & Margin Analysis

Analyzes:

- Monthly gross profit trends
- Gross margin percentage trends
- Profitability stability
- Business interpretations and recommendations

The dashboard supports date filtering across the available reporting periods.

## 7. Selected Results

### 2026 Executive Overview

The 2026 dashboard displays the following results for the selected reporting period:

| Metric | Dashboard result |
|---|---:|
| Net Revenue | $11.39M |
| Gross Profit | $5.18M |
| Total Orders | 13.4K |
| Units Sold | 100.7K |
| Gross Margin | 45.46% |
| Revenue Growth YoY | 156.76% |
| Profit Growth YoY | 156.44% |

*Values are displayed as rounded dashboard figures. The 2026 reporting period contains data through the latest available transaction month rather than necessarily representing a completed calendar year.*

### Product Category Performance

Across the full reporting period, Transformers lead the analyzed product categories in both net revenue and gross profit.

Other significant categories include Spotlights, Floodlights, Well Lights, and Path Lights.

Category-level comparisons help management identify which product lines contribute most strongly to financial performance.

## 8. Business Insights

### Revenue and Profit Growth

The dashboard shows substantial revenue and gross profit growth, particularly during 2026.

This creates an opportunity to investigate whether growth is being driven by increasing order volume, units sold, product mix, or changes in average selling prices.

### Margin Stability

Gross margin generally remains near 45%–46% across the observed periods.

This suggests that profitability has remained relatively stable as sales expanded, although category-level margin differences require additional investigation.

### Product Category Leadership

Transformers generate the highest revenue and gross profit among the analyzed categories.

Comparing revenue, gross profit, and gross margin by category can reveal whether high sales volume translates into strong profitability.

### Sales Volume

Monthly orders and units sold increase over the reporting period.

Tracking both metrics provides additional context for revenue growth.

## 9. Business Recommendations

1. **Investigate growth drivers:** Separate the effects of order volume, units per order, product pricing, and category mix.
2. **Monitor gross margins:** Track profitability as revenue increases.
3. **Evaluate product categories:** Compare category revenue, gross profit, and gross margin to identify opportunities.
4. **Analyze customer behavior:** Extend reporting to customer acquisition, retention, and purchasing patterns.
5. **Track returns:** Assess how returns affect realized revenue and category performance.
6. **Automate executive reporting:** Maintain consistent KPI calculations through reusable BigQuery reporting views.

## 10. Project Deliverables

This repository is intended to contain:

```text
lumascape-ecommerce-analytics/
|
|-- README.md
|
|-- sql/
|   |-- README.md
|   |-- reporting-view SQL files
|
|-- dashboard/
|   |-- README.md
|   |-- executive-overview.png
|   |-- sales-product-performance.png
|   |-- profitability-margin-analysis.png
|
|-- data/
|   |-- README.md
|   |-- sanitized sample data or data dictionary
|
|-- docs/
    |-- business-insights.md
    |-- kpi-definitions.md
```

*The directory structure above describes the planned repository organization. Files will be added as they are prepared and reviewed.*

## 11. Skills Demonstrated

- SQL querying and aggregation
- Relational data modeling
- Cloud-based data analysis using BigQuery
- Financial KPI development
- Year-over-year comparative analysis
- Product performance analytics
- Interactive dashboard development
- Data storytelling
- Business recommendations
- Technical documentation

## 12. Project Status

**Completed**

- BigQuery transactional data model
- SQL reporting views
- Three-page Looker Studio dashboard
- Financial and sales KPI reporting
- Product category analysis
- Date-filter verification
- Year-over-year growth scorecard verification

**Portfolio Packaging In Progress**

- SQL source documentation
- Dashboard screenshot publication
- Data dictionary and KPI documentation
- Detailed business case study
- Portfolio website integration

## 13. Data and Portfolio Disclaimer

LumaScape is an e-commerce analytics portfolio case study. Reported figures are project dataset results and should not be interpreted as audited financial results from a real business.

This repository is intended for educational, analytical, and professional portfolio demonstration purposes.

---

**Project:** LumaScape E-Commerce Analytics  
**Portfolio Focus:** Data Analyst · Business Intelligence Analyst · Cloud Data Analytics
