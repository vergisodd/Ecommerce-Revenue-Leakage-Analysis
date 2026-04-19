# Ecommerce Revenue Leakage Analysis

![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-blue)
![Type](https://img.shields.io/badge/Project-Analytics%20Case%20Study-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Domain](https://img.shields.io/badge/Domain-E--commerce-orange)

> An SQL-based case study analyzing how product returns affect e-commerce revenue, which customers and products drive the most loss, and where the business should prioritize intervention.

## What This Project Shows
- Analyzed a **$5.87M e-commerce operation** using SQL to quantify revenue leakage from product returns.
- Identified the **highest-risk customers, products, and categories** contributing to lost revenue.
- Translated the analysis into **business recommendations** focused on return reduction and profitability improvement.

---

## Business Problem

E-commerce businesses often lose revenue through returns, but the real challenge is understanding **where that loss is concentrated** and **which issues matter most**. This project investigates return-driven revenue leakage to answer:

**How much revenue is being lost, what is causing it, and where should the business act first?**

---

## Objectives

- Quantify revenue loss caused by returns
- Measure the overall return rate
- Identify high-risk customers and return-heavy behavior
- Detect products responsible for disproportionate losses
- Compare category-level revenue, return rates, and leakage
- Generate business-focused recommendations using SQL

---

## Dataset

This project uses a real-world e-commerce dataset containing order and return information:

[Kaggle: E-commerce Dataset - Order & Return](https://www.kaggle.com/datasets/angellawl/e-commerce-dataset-order-and-return?resource=download)

---

## Tools

- SQL
- SQLite / PostgreSQL-compatible queries
- GitHub

---

SQL Techniques Demonstrated
Data modeling using a normalized relational schema (customers, products, orders, returns)
Complex joins across multiple tables to combine transactional and return data
Aggregations to compute revenue, return loss, and performance metrics
Subqueries and filtering to isolate high-risk entities
Window functions (if used — if not, we can add one easily)
Data cleaning and transformation directly in SQL

---

## Analytical Approach

The analysis was structured in four parts:

1. Revenue overview to measure total revenue, return loss, and net revenue
2. Customer analysis to identify high-value and high-risk customer behavior
3. Product analysis to detect top-performing and high-loss SKUs
4. Category analysis to compare revenue concentration and return-driven leakage across business segments

---

## Executive Summary

### Revenue Overview
- **Total Revenue:** $5,865,293.05
- **Return Loss:** $388,755.97
- **Net Revenue:** $5,476,537.08
- **Overall Return Rate:** 5.52%

### Business Interpretation
The business retains roughly **93% of gross revenue**, which suggests the operation is fundamentally healthy. However, returns still account for nearly **$389K in lost revenue**, making return management a meaningful profitability opportunity.

### Key Takeaway
This is a **$5.8M e-commerce business** where a **5.5% return rate leads to nearly $390K in revenue leakage**. The strongest improvement opportunities appear in product-level optimization, category-level return reduction, and tighter monitoring of repeat return behavior.

---

## Key Business Findings

### 1. Revenue leakage is meaningful, but concentrated
Most revenue is retained, but losses are large enough to justify targeted action. The leakage is not evenly distributed across the business, which means selective intervention is likely to outperform broad policy changes.

### 2. Customer value and return risk are not the same thing
A small number of customers generate a disproportionately large share of total revenue, showing a clear Pareto pattern. At the same time, frequent return behavior is mostly not concentrated among the highest-value customers.

### 3. Product-level leakage is highly uneven
A small set of products drives a disproportionately large share of lost revenue. This makes SKU-level review especially important for reducing leakage efficiently.

### 4. Electronics is both a growth driver and a risk area
Electronics is the top-performing category by revenue, but it also produces the largest absolute return loss. This creates a high-revenue, high-risk trade-off that should be actively managed.

### 5. Fashion has the highest return rate
Fashion shows the highest category return rate, likely reflecting issues such as fit, expectation mismatch, or product presentation. Even though Electronics drives more total loss, Fashion appears operationally less stable.

---

## Customer Analysis

### Top Customers by Lifetime Value
- C16655 → **13,885.10**
- C13565 → **11,984.28**
- C15379 → **11,375.58**
- C17116 → **7,424.34**
- C15644 → **7,244.07**

**Insight:** Revenue is concentrated among a relatively small group of customers, indicating strong customer value concentration and retention importance.

### High Return Customers
- Several customers recorded **3 returns each**
- These customers generally show **low to moderate spending levels**

**Insight:** Frequent returns are not primarily driven by the most valuable customers, suggesting return risk should be monitored separately from customer value.

### Customer Risk Segmentation
- Some customers show a **100% return rate**
- Several customers are flagged as **high risk**

**Insight:** A subset of customers demonstrates inefficient purchasing behavior, but some cases are based on low order volume. Risk scoring should therefore account for sample size.

---

## Product Analysis

### Top Revenue-Generating Products
- P217031 (Toys) → **13,035.01**
- P242326 (Electronics) → **11,747.30**
- P224743 (Electronics) → **11,298.30**
- P216077 (Electronics) → **8,035.78**
- P225406 (Electronics) → **6,786.53**

**Insight:** Electronics dominates the highest-revenue SKUs, showing strong demand concentration in a limited product set.

### High Return Products
- P221459 → **3 returns**
- P247404 → **2 returns**
- P245813 → **2 returns**
- P244770 → **2 returns**

**Insight:** Return activity is concentrated in a small number of products, although low transaction counts may exaggerate perceived risk for some SKUs.

### Product Risk Segmentation
Several products show a **100% return rate**:
- P249954
- P249845
- P249843
- P249757
- P249740

**Insight:** These products should be flagged for review, but interpretation should consider low sample size before taking action.

### Revenue Loss by Product
- P238199 → **5,150.28**
- P221460 → **4,883.44**
- P237985 → **4,423.38**
- P245871 → **3,840.66**
- P244063 → **3,547.45**

**Insight:** A very small set of products accounts for a disproportionate share of total revenue leakage, making them high-priority intervention targets.

---

## Category Analysis

### Revenue by Category
- Electronics → **2,018,229.53**
- Home → **1,260,730.54**
- Sports → **987,048.96**
- Toys → **640,088.06**
- Fashion → **587,083.14**
- Grocery → **288,711.99**
- Beauty → **83,400.83**

**Insight:** Revenue is heavily concentrated in Electronics and Home, increasing the business's dependency on a limited set of categories.

### Return Rate by Category
- Fashion → **8.05%**
- Electronics → **7.30%**
- Home → **5.53%**
- Sports → **5.28%**
- Toys → **5.13%**
- Beauty → **3.42%**
- Grocery → **2.59%**

**Insight:** Fashion has the highest return rate, while Electronics combines high scale with high return exposure, making both categories operational priorities for different reasons.

### Revenue Loss by Category
- Electronics → **166,260.11**
- Home → **74,698.63**
- Sports → **51,167.41**
- Fashion → **45,591.28**
- Toys → **32,037.92**
- Grocery → **15,780.72**
- Beauty → **3,219.90**

**Insight:** Electronics is the largest source of return-driven revenue loss by a wide margin, reinforcing its role as the business's highest-value but highest-risk category.

---

## Business Recommendations

Based on the analysis, the business should prioritize:

- Reviewing the highest-loss products first, since a small number of SKUs drive a large share of leakage
- Auditing Electronics products for quality issues, fulfillment defects, or expectation mismatch
- Investigating Fashion returns for sizing, product description, or customer expectation problems
- Separating **high customer value** from **high return risk** in customer monitoring
- Building a recurring dashboard to track return rate, return loss, and high-risk segments over time

--
Data Modeling & Architecture

Detailed data preparation, normalization, and schema design are documented here:

link: Data Modeling & Preparation
