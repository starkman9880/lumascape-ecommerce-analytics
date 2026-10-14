
# LumaScape | E-Commerce Analytics

### End-to-End Business Intelligence & Data Analytics Portfolio Project

**Tools:** Google Cloud BigQuery · SQL · Looker Studio · GitHub  
**Analysis Period:** January 2024 – Available 2026 Data  
**Focus:** Revenue, profitability, sales trends, product performance, and year-over-year growth

---

## 1. Executive Summary

LumaScape is an end-to-end e-commerce analytics portfolio project focused on transforming transactional sales data into actionable business intelligence.

The project combines Google Cloud BigQuery, SQL reporting views, and a three-page interactive Looker Studio dashboard to analyze financial performance, sales activity, and product category profitability.

The analysis addresses five business questions:

1. How are revenue and gross profit changing over time?
2. Which product categories generate the most revenue and profit?
3. How are order volume and units sold changing?
4. Is gross margin remaining stable as the business grows?
5. How does current-year performance compare with the equivalent prior-year period?

**Project Objective:** Demonstrate a complete business intelligence workflow, from transactional data and cloud-based SQL analysis to executive dashboards, business insights, and management recommendations.

---

## 2. Business Problem

E-commerce businesses generate transactional data across customers, orders, products, sales, and returns.

Without centralized reporting, management may struggle to monitor profitability, identify high-performing product categories, understand sales trends, and evaluate year-over-year growth.

LumaScape addresses these challenges through a structured analytics model designed to provide:

- Executive visibility into financial performance
- Consistent financial and operational KPI definitions
- Monthly revenue and gross profit reporting
- Sales volume and units sold analysis
- Product category revenue and profitability comparisons
- Comparable year-over-year growth analysis
- Interactive date-based reporting
- Actionable management recommendations

---

## 3. Technology Stack

| Technology | Purpose |
|---|---|
| Google Cloud BigQuery | Cloud-based data warehouse |
| SQL | Data transformation, aggregation, and KPI calculations |
| Looker Studio | Interactive business intelligence dashboards |
| GitHub | SQL documentation, screenshots, and version control |

---

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

The BigQuery dataset `lumascape_analytics` contains five core transactional and reference tables.

| Table | Analytical Purpose |
|---|---|
| `customers` | Customer information and segmentation |
| `orders` | Order-level transactions and dates |
| `order_items` | Product-level sales, quantities, pricing, discounts, and costs |
| `products` | Product information and categories |
| `returns` | Product return information |

### SQL Reporting Views

The analytical model supports reporting across:

- Product category performance
- Monthly category performance
- Monthly sales performance
- Comparable year-over-year growth
- Returns performance
- Customer acquisition and segmentation
- Geographic sales performance

The published SQL files document core reporting calculations used in the portfolio project.

---

## 5. KPI Framework

| KPI | Business Definition |
|---|---|
| Net Revenue | Sales revenue after recorded discounts |
| Gross Profit | Net revenue minus cost of goods sold |
| Gross Margin % | Gross profit divided by net revenue |
| Total Orders | Number of distinct customer orders |
| Units Sold | Total quantity of products sold |
| Revenue Growth YoY % | Percentage change in revenue versus the comparable prior-year period |
| Profit Growth YoY % | Percentage change in gross profit versus the comparable prior-year period |

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

The financial calculations are based on the project's transaction-level reporting logic.

---

## 6. Executive Dashboard

The LumaScape Looker Studio report contains three analytical pages.

### Page 1 — E-Commerce Performance Overview

**Purpose:** Provide executive-level visibility into financial performance and business growth.

**Key Performance Indicators**

- Net Revenue
- Gross Profit
- Total Orders
- Units Sold
- Gross Margin %
- Revenue Growth YoY %
- Profit Growth YoY %

**Visualizations**

- Executive KPI scorecards
- Monthly Net Revenue Trend
- Monthly Gross Profit Trend
- Executive Business Insights

**Business Questions**

1. How much revenue and gross profit is the business generating?
2. How are financial results changing over time?
3. How does current-year performance compare with the prior year?
4. Is gross profit growing at a similar rate to revenue?

### Page 2 — Sales & Product Performance

**Purpose:** Analyze sales volume and identify the product categories contributing most to business performance.

**Visualizations**

- Monthly Total Orders Trend
- Monthly Units Sold Trend
- Net Revenue by Product Category
- Gross Profit by Product Category
- Product Category Business Insights

**Business Questions**

1. Which product categories generate the most revenue?
2. Which categories contribute the most gross profit?
3. How are orders and units sold changing over time?
4. Which categories require further management investigation?

### Page 3 — Profitability & Margin Analysis

**Purpose:** Evaluate gross profit growth and gross margin stability.

**Visualizations**

- Monthly Gross Profit Trend
- Gross Margin %
- Profitability and Margin Insights

**Business Questions**

1. Is gross profit increasing?
2. Is gross margin stable as sales expand?
3. What additional analysis could explain changes in profitability?

**Dashboard Functionality**

The Looker Studio dashboard includes date controls for examining different reporting periods.

---

## 7. Selected Results

### 2026 Executive Overview

The dashboard displays the following results for the selected 2026 reporting period.

| Metric | Dashboard Result |
|---|---:|
| Net Revenue | $11.39M |
| Gross Profit | $5.18M |
| Total Orders | 13.4K |
| Units Sold | 100.7K |
| Gross Margin | 45.46% |
| Revenue Growth YoY | 156.76% |
| Profit Growth YoY | 156.44% |

**Reporting Note:** These are rounded dashboard values for the selected reporting period. Available 2026 data does not necessarily represent a completed calendar year.

### Full-Period Product Category Performance

Across the analyzed reporting period, Transformers lead the product categories in both net revenue and gross profit.

Other major categories include:

- Spotlights
- Floodlights
- Well Lights
- Path Lights
- Accessories

Product category comparisons help identify which product lines contribute most to revenue and profitability.

---

## 8. Business Insights

### Insight 1 — Strong Revenue Growth

Comparable net revenue increased by 156.76% versus the equivalent prior-year period.

This indicates substantial growth in the selected reporting comparison.

Further analysis should determine how much of this increase is attributable to order volume, units sold, pricing, and product mix.

### Insight 2 — Gross Profit Growth

Comparable gross profit increased by 156.44%.

Gross profit growth closely tracked revenue growth, suggesting that overall profitability scaled alongside sales.

### Insight 3 — Gross Margin Stability

Gross margin generally remained around 45%–46% across the analyzed periods.

This suggests relatively stable gross profitability despite significant growth in sales and gross profit.

### Insight 4 — Product Category Leadership

Transformers generated the highest revenue and gross profit across the analyzed categories.

Category-level margin comparisons would help determine whether the highest-revenue products also provide the strongest profitability rates.

### Insight 5 — Increasing Sales Activity

Monthly total orders and units sold increased over the reporting period, with particularly strong growth during 2026.

This provides additional context for the financial performance trends.

---

## 9. Business Recommendations

### 1. Investigate Revenue Growth Drivers

Separate the contributions of:

- Order volume
- Units per order
- Average selling price
- Product category mix

### 2. Monitor Gross Margin Performance

Track gross margin alongside net revenue and gross profit to identify changes in profitability.

### 3. Evaluate Product Category Profitability

Compare category revenue, gross profit, and gross margin to identify opportunities for product portfolio optimization.

### 4. Expand Customer Analytics

Investigate customer acquisition, retention, purchasing frequency, and segmentation.

### 5. Analyze Product Returns

Evaluate how returns affect realized revenue and category performance.

### 6. Standardize Executive Reporting

Maintain reusable SQL reporting views and consistent KPI definitions to support reliable recurring analysis.

---

## 10. Project Deliverables

The repository contains SQL reporting views, dashboard documentation, and screenshots.

### Repository Structure

```text
lumascape-ecommerce-analytics/
|
|-- README.md
|
|-- sql/
|   |-- README.md
|   |-- vw_category_performance.sql
|   |-- vw_comparable_yoy_growth.sql
|   |-- vw_monthly_category_performance.sql
|   |-- vw_monthly_sales_performance.sql
|
|-- dashboard/
    |-- README.md
    |-- executive-overview.png
    |-- executive-insights.png
    |-- category-performance.png
    |-- product-category-analysis.png
    |-- product-category-insights.png
    |-- profitability-margin-analysis.png
    |-- profitability-margin-insights.png
```

### SQL Documentation

[Explore SQL Reporting Views](sql/README.md)

### Dashboard Documentation

[Explore the Executive Dashboard](dashboard/README.md)

---

## 11. Dashboard Screenshots

The following screenshots demonstrate the LumaScape e-commerce business intelligence dashboard developed using Google BigQuery, SQL, and Looker Studio.

### Executive Performance Overview

![LumaScape Executive Performance Overview](dashboard/executive-overview.png)

### Executive Business Insights

![LumaScape Executive Business Insights](dashboard/executive-insights.png)

### Sales and Product Performance

![LumaScape Sales and Product Performance](dashboard/category-performance.png)

### Product Category Revenue and Profitability

![LumaScape Product Category Revenue and Profitability](dashboard/product-category-analysis.png)

### Product Category Business Insights

![LumaScape Product Category Business Insights](dashboard/product-category-insights.png)

### Profitability and Margin Analysis

![LumaScape Profitability and Margin Analysis](dashboard/profitability-margin-analysis.png)

### Profitability and Margin Business Insights

![LumaScape Profitability and Margin Business Insights](dashboard/profitability-margin-insights.png)

---

## 12. Skills Demonstrated

### Data Analytics

- SQL querying and aggregation
- Relational data modeling
- Financial KPI calculations
- Monthly trend analysis
- Comparable year-over-year analysis
- Product category performance analysis

### Business Intelligence

- Executive dashboard development
- Interactive date filtering
- KPI scorecard design
- Business performance reporting
- Data visualization
- Business insight communication

### Cloud Analytics

- Google Cloud BigQuery
- Cloud-based analytical reporting
- Reusable SQL reporting views
- Data transformation and aggregation

### Business Analysis

- Business problem identification
- KPI definition
- Revenue and profitability evaluation
- Product performance interpretation
- Management recommendations
- Technical documentation

---

## 13. Project Status

### Completed

- [x] BigQuery transactional data model
- [x] Core SQL reporting views
- [x] Three-page Looker Studio dashboard
- [x] Financial and sales KPI reporting
- [x] Product category analysis
- [x] Date-filter verification
- [x] Year-over-year growth scorecard verification
- [x] Dashboard screenshot publication
- [x] Dashboard README documentation
- [x] Main repository README documentation

### Portfolio Development — Next Steps

- [ ] Review and expand SQL source documentation
- [ ] Create data dictionary and detailed KPI documentation
- [ ] Develop a standalone LumaScape portfolio case study
- [ ] Integrate LumaScape into the personal portfolio website
- [ ] Test portfolio website responsiveness
- [ ] Publish and verify portfolio website links

---

## 14. Portfolio Value

LumaScape demonstrates the ability to transform e-commerce transactional data into structured analytical reporting.

The project combines:

- Cloud data warehousing
- SQL reporting and KPI calculations
- Interactive dashboard development
- Revenue and profitability analysis
- Product performance analytics
- Business recommendations
- Professional GitHub documentation

**Target Roles**

- Data Analyst
- Business Intelligence Analyst
- Business Analyst
- E-Commerce Analyst
- Cloud Data Analyst

---

## 15. Data and Portfolio Disclaimer

LumaScape is an e-commerce analytics portfolio case study.

The reported figures represent project dataset results and should not be interpreted as audited financial results from a real business.

The project is intended for educational, analytical, and professional portfolio demonstration purposes.

---

**Project:** LumaScape E-Commerce Analytics  
**Portfolio Focus:** Data Analytics | Business Intelligence | Cloud Analytics | E-Commerce Performance

**GitHub Repository:**  
https://github.com/starkman9880/lumascape-ecommerce-analytics
