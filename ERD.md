### Entity Relationship Diagram

## Overview

The database is structured using a normalized relational model centered around the orders table.

### Key Relationships

Each customer can have multiple orders
Each product can appear in multiple orders
Each order is linked to a single customer and product
Each order can have at most one return

### Design Rationale

Eliminates data redundancy
Enables efficient joins across entities
Supports multi-level analysis (customer, product, category)
Ensures accurate tracking of return-related revenue loss

