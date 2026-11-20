# How to learn and explain ProductPulse

## Step 1 — Understand the problem
Say: "I examined a simulated shopping funnel to identify where conversion opportunities might exist, then designed a strategy for testing improvements."

## Step 2 — Understand the dataset
Open `data/sessions.csv`. Each row is a session. A purchase implies checkout, cart, and product view. The numbers are intentionally synthetic.

## Step 3 — Explain the metrics
Conversion = purchases / sessions. Cart abandonment = (carts - purchases) / carts. Revenue = sum of revenue_usd. Be able to explain why these denominators differ.

## Step 4 — Reproduce the analysis
From the folder run `python3 python/analyze_data.py`. Then open the SQLite database and run `sql/product_analysis.sql`. Compare results to dashboard cards.

## Step 5 — Explore the dashboard
Open `dashboard/index.html`. Filter to Mobile vs Desktop and observe how conversion changes. A segment difference is a lead for investigation, not proof of a cause.

## Step 6 — Explain product decisions
The roadmap proposes customer interviews, a mobile checkout prototype, and A/B testing. RICE scores are illustrative assumptions. Explain why testing comes before claiming revenue gains.

## Step 7 — Practice interview answers
Q: What was the business problem? A: A hypothetical e-commerce team wanted to understand funnel drop-offs and prioritize product experiments.
Q: What did you build? A: A reproducible synthetic dataset, SQL/Python analyses, an interactive HTML dashboard, and a strategy case study with prioritization.
Q: What was the biggest insight? A: The simulated funnel shows losses between cart and purchase; device segmentation provides hypotheses to investigate, not causal findings.
Q: How did you measure impact? A: I modeled a hypothetical conversion uplift, clearly distinguished from observed impact; I proposed an A/B test for validation.
Q: What was AI's role? A: AI assisted with implementation and drafting; I ran the analyses, inspected the outputs, and learned to explain the metrics and recommendations. Only say the latter after actually doing it.

## Suggested resume bullet after personal review
"Built an independent synthetic e-commerce product analytics case study using SQL, Python, and an interactive dashboard to evaluate conversion funnels, segment behavior, and feature-prioritization scenarios." 
