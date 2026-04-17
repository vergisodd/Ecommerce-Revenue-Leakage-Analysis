# Ecommerce Revenue Leakage Analysis

![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-blue)
![Type](https://img.shields.io/badge/Project-Analytics%20Case%20Study-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Domain](https://img.shields.io/badge/Domain-E--commerce-orange)

---

## Overview

This project analyzes e-commerce revenue leakage using SQL to identify where revenue is being lost, measure the business impact, and recommend actions to improve profitability.

* Identified the main sources of revenue leakage across transactions, discounts, returns, and payment behavior.
* Used SQL to clean, join, and analyze business data to uncover high-impact revenue loss patterns.
* Translated the analysis into business recommendations that could help an e-commerce business improve revenue retention.

---

## Key Business Findings

### Revenue Overview

- Total Revenue: **$5,865,293.05**  
- Return Loss: **$388,755.97**  
- Net Revenue: **$5,476,537.08**

### Return Rate

- Overall Return Rate: **5.52%**

### Business Interpretation

Returns represent a meaningful revenue leakage of approximately **$389K**. However, the business remains financially healthy, retaining ~93% of total revenue after returns. This indicates an optimization opportunity rather than a structural failure.

### Key Insight

This dataset represents a **$5.8M e-commerce operation** where a **5.5% return rate results in nearly $390K in revenue leakage**, highlighting opportunities in product quality, customer targeting, and return policy optimization.

---

## Customer Analysis

### Top Customers by Lifetime Value

- C16655 → **13,885.10**  
- C13565 → **11,984.28**  
- C15379 → **11,375.58**  
- C17116 → **7,424.34**  
- C15644 → **7,244.07**

**Insight:** A small number of customers generate a disproportionate share of total revenue, indicating a strong Pareto distribution.

---

### High Return Customers

- Several customers recorded **3 returns each**  
- These customers generally have low to moderate spending levels  

**Insight:** Frequent return behavior is not necessarily associated with high-value customers.

---

### Customer Risk Segmentation

- Some customers exhibit a **100% return rate (1 order = 1 return)**  
- Multiple customers are flagged as **high risk**

**Insight:** A subset of customers demonstrates highly inefficient purchasing behavior. However, low-volume bias should be considered when interpreting risk scores.

---

## Product Analysis

### Top Revenue-Generating Products

- P217031 (Toys) → **13,035.01**  
- P242326 (Electronics) → **11,747.30**  
- P224743 (Electronics) → **11,298.30**  
- P216077 (Electronics) → **8,035.78**  
- P225406 (Electronics) → **6,786.53**

**Insight:** Electronics dominates high-revenue SKUs, indicating strong demand concentration. Toys and Sports contribute meaningfully but at a lower scale.

---

### High Return Products

- P221459 → **3 returns**  
- P247404 → **2 returns**  
- P245813 → **2 returns**  
- P244770 → **2 returns**

**Insight:** Return activity is concentrated in a small subset of products. However, many are low-volume items, which can distort perceived risk.

---

### Product Risk Segmentation

Several products show a **100% return rate**:

- P249954  
- P249845  
- P249843  
- P249757  
- P249740  

**Insight:** These products are flagged as high risk, but most are based on single-order cases. Risk interpretation should account for sample size.

---

### Revenue Loss by Product

- P238199 → **5,150.28**  
- P221460 → **4,883.44**  
- P237985 → **4,423.38**  
- P245871 → **3,840.66**  
- P244063 → **3,547.45**

**Insight:** A small number of products are responsible for a disproportionate share of revenue leakage. These represent high-priority optimization targets.

---

### Overall Conclusion

The product-level analysis reveals a clear Pareto pattern:

- A small number of products generate most revenue  
- A small number of products generate most losses  
- Electronics is both the strongest and highest-risk category  

This creates opportunities in product quality optimization, return reduction strategies, and SKU-level performance monitoring.

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

**Insight:** Revenue is highly concentrated in Electronics and Home categories, indicating strong dependency on a limited set of revenue drivers.

---

### Return Rate by Category

- Fashion → **8.05%**  
- Electronics → **7.30%**  
- Home → **5.53%**  
- Sports → **5.28%**  
- Toys → **5.13%**  
- Beauty → **3.42%**  
- Grocery → **2.59%**

**Insight:** Fashion has the highest return rate, likely due to expectation mismatch or sizing issues. Electronics combines both high revenue and high return rate, making it a critical risk category. Grocery and Beauty are the most stable segments.

---

### Revenue Loss by Category

- Electronics → **166,260.11**  
- Home → **74,698.63**  
- Sports → **51,167.41**  
- Fashion → **45,591.28**  
- Toys → **32,037.92**  
- Grocery → **15,780.72**  
- Beauty → **3,219.90**

**Insight:** Electronics contributes the majority of revenue loss despite being the top revenue generator, reinforcing a high-revenue/high-risk trade-off.

---

## Objectives

- Quantify revenue loss due to returns  
- Identify high-risk customers  
- Detect underperforming products  
- Analyze category-level performance  
- Generate actionable business insights using SQL  

---

## Tools

- SQL (SQLite / PostgreSQL compatible)
- GitHub

---

## Project Structure

- data/ → raw dataset  
- sql/ → SQL scripts (schema, ETL, analysis)  
- docs/ → documentation and insights

---

## Data Source

This project uses a real-world e-commerce dataset containing orders and returns:

https://www.kaggle.com/datasets/angellawl/e-commerce-dataset-order-and-return?resource=download

---
