# Ecommerce Revenue Leakage Analysis

## Overview
This project analyzes e-commerce transaction data to identify revenue loss caused by returns, understand customer behavior, and evaluate product performance.

# Key Business Findings:
## Revenue Overview
Total Revenue: $5,865,293.05
Return Loss: $388,755.97
Net Revenue: $5,476,537.08
## Return Rate
Overall Return Rate: 5.52%
## Business Interpretation
Returns represent a meaningful revenue leakage (~$389K).
The business is still financially healthy, with ~93% of revenue retained after returns.
This indicates an optimization problem, not a failing system.
## Key Insight

This dataset represents a $5.8M e-commerce operation where:

A 5.5% return rate is causing nearly $390K in revenue leakage, highlighting opportunities in product quality, customer targeting, or return policy optimization.

## Customer Analysis (04)
### Top Customers by Lifetime Value

C16655 → 13,885.10

C13565 → 11,984.28

C15379 → 11,375.58

C17116 → 7,424.34

C15644 → 7,244.07

### Insight: A small group of customers generates a disproportionate share of revenue, indicating a strong Pareto distribution.

### High Return Customers
Multiple customers show 3 returns each
These customers generally have low-to-moderate spending

### Insight: Frequent return behavior is not necessarily tied to high value customers.

### Customer Risk Segmentation
Some customers show 100% return rate (1 order = 1 return)
Many are flagged as HIGH RISK

### Insight: A subset of customers exhibits extremely inefficient purchase behavior, but further filtering is needed to account for low-volume bias.

## Product Analysis (05)
### Top Revenue-Generating Products

The analysis identified a small set of products driving the majority of revenue:

P217031 (Toys) → $13,035.01
P242326 (Electronics) → $11,747.30
P224743 (Electronics) → $11,298.30
P216077 (Electronics) → $8,035.78
P225406 (Electronics) → $6,786.53
Insight:

Electronics dominates high-revenue SKUs, indicating strong demand concentration in this category. Toys and Sports also contribute significantly but at lower scale.

### High Return Products

Products with repeated return activity include:

P221459 → 3 returns
P247404 → 2 returns
P245813 → 2 returns
P244770 → 2 returns
Insight:

Return activity is concentrated in a small subset of products, but many of these are low-volume items, which can distort perceived risk if not normalized.

### Product Risk Segmentation

Several products show a 100% return rate, meaning every recorded order was returned:

P249954
P249845
P249843
P249757
P249740
Insight:

These products are flagged as high-risk, but most are single-order cases. This highlights the importance of considering volume thresholds when evaluating risk.

### Revenue Loss by Product

The highest financial losses from returned orders are:

P238199 → $5,150.28
P221460 → $4,883.44
P237985 → $4,423.38
P245871 → $3,840.66
P244063 → $3,547.45
Insight:

A small number of products are responsible for a disproportionate share of revenue leakage, making them key targets for operational or quality improvements.

### Overall Conclusion

The product-level analysis reveals a classic Pareto pattern:

A small number of products drive most revenue
A small number of products drive most losses
Electronics is both the strongest and most dominant category

### This creates a clear opportunity for:

product quality optimization
return reduction strategies
SKU-level performance monitoring

## Objectives
- Quantify revenue lost due to returns
- Identify high-risk customers
- Detect underperforming products
- Generate business insights using SQL

## Tools
- SQL (PostgreSQL / MySQL)
- GitHub

## Project Structure
- data/: raw and processed datasets
- sql/: SQL scripts for analysis
- docs/: documentation and insights
