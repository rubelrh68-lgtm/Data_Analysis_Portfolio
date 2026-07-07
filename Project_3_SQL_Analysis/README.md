# Project 3 — SQL Data Analysis
**Environment:** Microsoft SQL Server 2022 · SSMS · database `Data_Analytics`, table `dbo.Orders` (1,200 rows)

## Objective
Re-derive the key findings of Project 2 through structured SQL queries — and reconcile every result against the Excel EDA figures. Two tools, one truth.

## Queries
| # | Technique | Query | Result |
|---|---|---|---|
| 1 | `COUNT(*)` / `TOP` | Import verification | 1,200 rows — matches source exactly |
| 2 | `UPDATE` + `ROUND` | Numeric precision fix at the database layer | 1,200 rows corrected to 2 dp |
| 3 | `WHERE` | Returned orders | 247 rows — matches EDA status mix |
| 4 | `ORDER BY` + `TOP` | Top 10 orders by value | Identical to the EDA outlier list (max ORD200789, £3,456.40) |
| 5 | `GROUP BY` + `COUNT/SUM/AVG` | Revenue by product | Penny-exact match to EDA (Chair £195,620.11 → Phone £151,722.39) |
| 6 | `HAVING` | Products above £50K revenue | 7 of 7 pass |

## Cross-Validation
**8 of 8 checks reconciled (100%)** between SQL and the Project 2 EDA — row count, returned-order count, the full top-10 list, and the complete product revenue ranking. Any discrepancy would have indicated an import fault or formula error; there were none.

## Files
- [Project_3_SQL_Analysis_Report.pdf](Project_3_SQL_Analysis_Report.pdf) — full report with all queries, results, execution screenshots, and the cross-validation table
- [SQL_Queries_Project_3.sql](SQL_Queries_Project_3.sql) — the complete script
- [README.md](README.md) - the highlight of the project

## Skills Demonstrated
SELECT / WHERE / ORDER BY / GROUP BY / HAVING · aggregations (COUNT, SUM, AVG) · in-database data correction (UPDATE/ROUND) · SQL logical execution order · cross-tool result reconciliation
