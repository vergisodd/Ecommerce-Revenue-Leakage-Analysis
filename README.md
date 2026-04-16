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
