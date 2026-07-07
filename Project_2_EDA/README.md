# Project 2 — Exploratory Data Analysis (EDA)
**Tool:** Microsoft Excel · **Input:** Project 1 verified dataset (1,200 orders, £1.26M gross value)

## Objective
Interrogate the cleaned dataset to uncover patterns, trends, and outliers — and translate every statistical finding into a business implication (the "So What?" test).

## Headline Finding
**41.4% of all order value is at risk.** 497 orders ended Cancelled or Returned (£519,674 gross) — more than the £488,760 actually realised through Delivered and Shipped orders. Reducing cancellations is a bigger revenue lever than acquiring new orders.

## Analysis (Five Phases)
1. **Descriptive statistics** — mean order £1,053.97 vs median £823.62 (28% gap → right-skewed; median used for forecasting)
2. **Category breakdowns** — revenue evenly spread across all 7 products (12–15.5% each); Instagram is the best channel (most orders, lowest cancellation rate at 15.8%); coupons show no effect on basket size
3. **Trend over time** — monthly revenue flat at ~£42K across 30 months; no seasonality; a stagnant business
4. **Outlier analysis (IQR method)** — 8 orders above the upper bound (£3,330.41), all legitimate max-quantity purchases: signal, not noise
5. **Correlation** — ItemsInCart vs Quantity r = 0.65; cart-building features are a plausible order-size lever

## Files
- `Project_2_EDA_Report.pdf` — full report with all statistics, breakdowns, 7 charts, observations, and recommendations
- Workbook — descriptive statistics, category pivots, monthly trend, outlier analysis, and key observations sheets

## Skills Demonstrated
Descriptive statistics · five-number summary · mean-vs-median diagnosis · pivot-style aggregation · IQR outlier detection · Pearson correlation · insight-to-impact translation
