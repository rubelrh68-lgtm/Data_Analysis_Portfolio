# Data Analytics Portfolio — DecodeLabs Industrial Training Programme
**Batch 2026 · Data Analytics Track · Rubel Hasan**

An end-to-end analytics project on a single e-commerce sales dataset (1,200 orders, £1.26M gross value, Jan 2023 – Jun 2025), carried through four milestones and three tools — from raw file to boardroom-ready dashboard. Each stage validates the one before it: the dataset is cleaned and verified once, then every figure is reconciled across Excel, SQL Server, and Power BI.

```
Raw data ──► 1. Clean & verify (Excel) ──► 2. Explore & diagnose (Excel)
                                      ──► 3. Query & cross-validate (SQL Server)
                                      ──► 4. Visualise & recommend (Power BI)
```

---

## The Projects

### [01 — Data Cleaning & Preparation](./01-data-cleaning-excel/) · Excel
Audited the raw dataset for missing values, duplicates, and format errors; resolved every issue through a documented, reversible workflow (raw backup → clean copy → change log CR001–CR009 → verification gate). Key decision: 309 missing coupon codes (25.8% of records) imputed as `NO_COUPON` through business logic rather than deleted.
**Result: verification gate PASS — 0 duplicate IDs, 0 invalid dates, 0 blanks, 0 calculation mismatches, 0 records lost.**

### [02 — Exploratory Data Analysis](./02-eda-excel/) · Excel
Five-phase EDA: descriptive statistics, category breakdowns, 30-month trend, IQR outlier detection, and correlation — every finding passed through the "So What?" test.
**Headline: 41.4% of all order value ends Cancelled or Returned (£519,674 at risk) — more than the business actually realises through completed orders.** Also: right-skewed order values (median £824 vs mean £1,054), flat ~£42K/month revenue, Instagram the strongest channel, coupons showing no effect on basket size.

### [03 — SQL Data Analysis](./03-sql-analysis/) · SQL Server 2022
Re-derived the key findings in T-SQL — SELECT, WHERE, ORDER BY, GROUP BY, COUNT/SUM/AVG, and HAVING — against the imported `dbo.Orders` table, with SSMS execution evidence.
**Result: 8 of 8 checks reconciled exactly with the Excel EDA — row counts, the returned-orders segment (247), the full top-10 order list, and the penny-exact product revenue ranking. Two tools, one truth.**

### [04 — Data Visualization](./04-powerbi-dashboard/) · Power BI
A 5-page Sales Performance Dashboard on four DAX measures (Total Revenue, Total Orders, Avg Order Value, Return Rate), built to the brief's three pillars — chart-to-question matching, maximum data-ink, and action-title storytelling — plus a root-cause diagnosis for every headline finding.
**Key diagnosis: 1,189 unique customers across 1,200 orders — a repeat-purchase rate under 1%. The business runs on one-time buyers; retention, not acquisition, is the untapped growth lever.**

---

## Key Business Findings

| Finding | Evidence | Recommended Action |
|---|---|---|
| Fulfilment failure is the #1 revenue leak | 497 orders (41.4%) Cancelled/Returned; £519,674 at risk vs £488,760 realised | Reason codes on every failure; fix Google/Email journeys (24% cancellation vs Instagram's 15.8%) |
| Growth is a retention problem | Repeat-purchase rate < 1%; flat ~£42K/month revenue for 30 months | Post-purchase flows and second-purchase incentives before more acquisition spend |
| Coupons are margin giveaways | AOV nearly identical across all codes, including NO_COUPON | Minimum-spend thresholds; targeted issuance; A/B test vs control |
| Bulk demand is being truncated | All top-10 orders hit the 5-unit quantity cap | Raise the cap; add a bulk-pricing tier; contact the premium segment |

## Repository Structure

```
data-analytics-portfolio/
├── 01-data-cleaning-excel/     README + Project 1 report (PDF)
├── 02-eda-excel/               README + Project 2 report (PDF, 7 charts)
├── 03-sql-analysis/            README + Project 3 report (PDF) + .sql script
└── 04-powerbi-dashboard/       README + Project 4 report (PDF) + .pbix + dashboard export
```

Each folder's README gives the project summary; each PDF report contains the full methodology, results, and evidence. The dataset was provided by DecodeLabs for educational purposes.

## Tools & Skills

**Tools:** Microsoft Excel · SQL Server 2022 / SSMS · Power BI Desktop (DAX)
**Skills:** data auditing & cleaning · imputation strategy · descriptive statistics · IQR outlier detection · correlation analysis · T-SQL querying & aggregation · cross-tool validation · DAX measures · dashboard design & data storytelling · root-cause analysis & business recommendations

## About

I'm Rubel Hasan — MSc Business Intelligence & Analytics candidate (University of Huddersfield) with 8+ years of experience in customs, VAT, and finance operations, now applying that domain grounding to data analytics. This repository is my submission for the DecodeLabs Industrial Training Programme, Batch 2026.

📫 Connect on [LinkedIn](#) <!-- add your LinkedIn URL -->
