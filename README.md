# 🍕 Pizza Sales Analysis — SQL Project

**Author:** Mohamed Elshafie  
**Tool:** MySQL  
**Dataset:** [Pizza Place Sales — Kaggle](https://www.kaggle.com/datasets/mysarahmadbhat/pizza-place-sales)

---

## 📌 Project Overview

This project analyzes one full year of sales data from a pizza restaurant.  
The goal is to uncover key business insights around revenue, customer behavior, product performance, and peak demand periods — using SQL only.

---

## 🗂️ Database Structure

The database consists of 4 related tables:

| Table | Description |
|---|---|
| `pizza_types` | Pizza names, categories, and ingredients |
| `pizzas` | Pizza sizes and prices |
| `orders` | Order dates and times |
| `order_details` | Quantity and pizza per order |

---

## 🧹 Data Cleaning

Before analysis, the following checks were performed:

- ✅ No NULL values found across all tables
- ✅ No duplicate orders
- ✅ No invalid prices or quantities (zero or negative)

**Conclusion:** Dataset was clean and ready for analysis without modifications.

---

## 📊 Exploratory Data Analysis (EDA)

### 💰 Revenue Analysis

- **Total Revenue:** $817,860.05
- **Average Order Value:** $38.31
- **Highest Revenue Month:** July
- **Lowest Revenue Month:** October
- Monthly revenue was consistently between $60K–$70K, showing stable demand year-round with no strong seasonality.

---

### 🍕 Product Performance

**Revenue by Category:**

| Category | Revenue | Quantity Sold |
|---|---|---|
| Classic | $220,053.11 | 14,888 |
| Supreme | $208,197 | 11,987 |
| Chicken | $195,919.51 | 11,050 |
| Veggie | $193,690.45 | 11,649 |

**Top 5 Best-Selling Pizzas:**

| Pizza | Units Sold | Revenue |
|---|---|---|
| Classic Deluxe | 2,453 | $38,180.50 |
| Barbecue Chicken | 2,432 | $42,768.00 |
| Hawaiian | 2,422 | $32,273.25 |
| Pepperoni | 2,418 | $30,161.75 |
| Thai Chicken | 2,371 | $43,434.25 |

**Bottom 5 Worst-Selling Pizzas:**

| Pizza | Units Sold | Revenue |
|---|---|---|
| Brie Carre | 490 | $11,588.50 |
| Mediterranean | 934 | $15,360.50 |
| Calabrese | 937 | $15,934.25 |
| Spinach Supreme | 950 | $15,277.75 |
| Soppressata | 961 | $16,425.75 |

---

### 📦 Size Analysis

- **Most popular size:** Large (L)
- Followed by Medium (M) and Small (S)
- XL and XXL had very low demand and minimal revenue contribution

---

### ⏰ Peak Demand Analysis

**Busiest Hours:**

| Rank | Hour |
|---|---|
| 1 | 12:00 PM |
| 2 | 1:00 PM |
| 3 | 7:00 PM |
| 4 | 5:00 PM |
| 5 | 6:00 PM |

Lunch (12–1 PM) and dinner (5–7 PM) are the two clear peak periods.

**Busiest Days of the Week:**

Friday → Thursday → Saturday → Wednesday → Tuesday → Monday → Sunday

Fridays are consistently the busiest day, with weekdays performing better than Sunday.

---

## 🔍 Key Insights

1. **Classic pizzas dominate** both in revenue and quantity — a safe menu anchor.
2. **Brie Carre is significantly underperforming** — selling less than half of any other pizza. Worth reconsidering.
3. **Revenue is stable year-round** — no strong seasonal spikes, suggesting consistent loyal customer base.
4. **Lunch and dinner rushes are predictable** — staffing and inventory can be optimized around 12–1 PM and 5–7 PM.
5. **Large size is the clear favorite** — XL/XXL may not be worth maintaining on the menu.
6. **Fridays are the busiest day** — promotions or deals could be targeted mid-week to boost slower days.

---

## 🛠️ SQL Concepts Used

- `JOIN` (multiple tables)
- `GROUP BY` & `ORDER BY`
- `Aggregate Functions` (SUM, COUNT, ROUND)
- `MONTH()`, `HOUR()`, `DAYNAME()` date functions
- `LIMIT` for top/bottom filtering
- Subqueries and derived metrics

---

*Analysis performed using MySQL Workbench*
