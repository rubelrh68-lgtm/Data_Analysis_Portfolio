# Project 4 — Data Visualization (Power BI Dashboard)
**Tool:** Microsoft Power BI Desktop · **Input:** Project 1 verified dataset (1,200 orders, Jan 2023 – Jun 2025)

## Objective
The optional Mastery Phase of the DecodeLabs track: translate the verified findings of Projects 1–3 into a boardroom-ready interactive dashboard — data storytelling, not "pretty pictures." The mandate shifts from finding the pattern to explaining it.

## Deliverable
A 5-page **Sales Performance Dashboard** driven by four explicit DAX measures:

| KPI | Value |
|---|---|
| Total Revenue | $1.26M |
| Total Orders | 1,200 |
| Avg Order Value | $1.05K |
| Return Rate | 20.6% |

**Pages:** Executive landing page (KPI strip + four core breakdowns) · Monthly revenue trend · Product performance · Order status & payment methods · Coupon analysis.

## Design Principles Applied
- **The Architect** — chart types matched strictly to the business question (line for trend, columns for comparison, horizontal bars for long labels); zero pie charts; every axis starts at zero
- **The Editor** — direct data labels instead of legends; chartjunk removed; single-hue palette with conditional saturation encoding order count on the product chart
- **The Storyteller** — KPIs top-left (5-second rule); action annotation on the trend page ("Revenue is volatile month-to-month… no sustained trend"); one page, one message

## Root-Cause Diagnosis (the "So What?")
The report goes beyond describing the visuals to explain **why** each pattern exists and what to do:
- **41.4% of orders fail** — cancellation rates vary sharply by channel (15.8% Instagram vs 24.1% Google), pointing to expectation mismatch at the funnel top, not product faults. A 10-point reduction protects ~£126K of gross value.
- **Revenue is flat because retention is near zero** — 1,189 unique customers across 1,200 orders means a repeat-purchase rate under 1%; the business re-earns every month from scratch. Retention, not acquisition, is the untapped growth lever.
- **Coupons don't lift baskets** — parity with NO_COUPON is the signature of unconditional, untargeted discounting; redesign with minimum-spend thresholds and A/B test.
- **Every top order stops at exactly 5 units** — the quantity cap is truncating bulk demand; raise the limit and add a bulk tier.

## Cross-Project Consistency
8 of 8 dashboard figures reconcile with Projects 1–3 — KPIs, product ranking, status mix, coupon parity, and monthly extremes all trace back through SQL and Excel to the verified source dataset.

## Files
- `Project_4_PowerBI_Report.pdf` — full report: dashboard pages, design decisions mapped to the brief's three pillars, root-cause diagnosis, and recommendations
- `DecodeLabs_Project4_Dashboard.pbix` — the interactive dashboard (open in Power BI Desktop)
- `Project_4_Power_BI.pdf` — static PDF export of all five dashboard pages

## Skills Demonstrated
Power BI · DAX measures (SUM, COUNTROWS, DIVIDE patterns) · KPI card design · chart selection · data-ink ratio & direct labeling · conditional formatting · data storytelling (SCR framework) · root-cause analysis & recommendation writing
