# Project 1 — Data Cleaning & Preparation
**Tool:** Microsoft Excel · **Dataset:** E-commerce sales, 1,200 orders × 14 columns (Jan 2023 – Jun 2025)

## Objective
Transform a raw e-commerce sales dataset into a verified, analysis-ready source of truth — auditing for missing values, duplicates, and format errors, resolving them through a documented process, and proving a zero-error result before any analysis begins.

## Approach
A four-stage workflow modelled on professional practice:
1. **Raw Backup** — the original file preserved unchanged in its own sheet
2. **Clean Copy** — all edits made on a separate `Cleaned_Dataset` sheet
3. **Documented Log** — every change recorded with a change ID (CR001–CR009)
4. **Verification Gate** — completion only when every check returns zero errors

## Key Decisions & Results
| Issue | Action | Result |
|---|---|---|
| 309 missing CouponCode values (25.8%) | Imputed as explicit `NO_COUPON` label — business logic, not deletion | All 1,200 records preserved (deletion would have discarded ~26% of data) |
| Floating-point price artefacts (e.g. 533.8099999999999) | `ROUND` to 2 dp + consistent 0.00 format on UnitPrice & TotalPrice | 2,400 values at exact currency precision |
| Date formatting | Confirmed true Excel dates; standardised to ISO 8601 (YYYY-MM-DD) | 0 invalid dates; SQL Server / Power BI ready |
| Duplicates & integrity | Remove Duplicates + COUNTIF on OrderID; recomputed Qty × UnitPrice vs TotalPrice | 0 duplicate rows, 0 duplicate IDs, 0 mismatches |

**Verification gate: PASS** — 0 duplicate IDs · 0 incorrectly formatted dates · 0 blank cells · 0 calculation mismatches.

## Files
- `Project_1_Data_Cleaning_Report.pdf` — full report with methodology, cleaning log, and verification results
- Workbook (Raw_Backup / Cleaned_Dataset / Log_Sheet) — dataset provided by DecodeLabs

## Skills Demonstrated
Data auditing · missing-value strategy (imputation vs deletion) · Remove Duplicates & COUNTIF audits · cross-field validation · change-log documentation · verification-gated workflow
