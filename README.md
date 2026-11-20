# ProductPulse — Product Analytics & Growth Strategy

An independent, **synthetic-data** portfolio case study showing how product analytics can inform prioritization and a testable product roadmap.

## Quick start
1. Download and unzip this folder.
2. Open `dashboard/index.html` in Chrome, Safari, or Edge. Filters work offline.
3. Run `python3 python/analyze_data.py` from the project root (standard library only).
4. Optional: open `data/productpulse.db` in SQLite and run `sql/product_analysis.sql`.
5. Read `reports/product_strategy.pdf` for recommendations, assumptions, and limitations.

## Data dictionary
Each row of `data/sessions.csv` is a **simulated session**, not a unique customer. Binary columns `product_view`, `add_to_cart`, `checkout_started`, and `purchase` are nested stages. `revenue_usd` is zero unless purchase=1. Device, channel, and customer type are simulated labels.

## Core results
- Sessions: 8,000; purchases: 1,310; conversion: 16.38%.
- Cart abandonment: 53.69%.
- Simulated revenue: $75,925.05.

## Product decisions
The report proposes three hypotheses, a RICE prioritization model, a roadmap, and an experiment measurement plan. It does **not** claim causal proof or measured revenue lift.

## Files
- `dashboard/index.html` — interactive offline analytics dashboard.
- `data/sessions.csv`, `data/productpulse.db` — synthetic dataset and SQLite database.
- `sql/product_analysis.sql` — reproducible analysis queries.
- `python/analyze_data.py` — independent KPI validation.
- `reports/product_strategy.md` and `.pdf` — business case study.
- `LEARNING_GUIDE.md` — interview-ready explanations and learning steps.

## Authorship disclosure
Created with AI assistance for synthetic data generation, coding, and drafting. The portfolio owner should personally review, run, validate, and understand the work before presenting it. No confidential employer data was used.
