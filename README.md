#### **# Multi-Source Market Expansion Analysis**

\### Should a D2C fashion/apparel brand expand into new cities — and which ones?



\---



#### \## Business Question

> A mid-size D2C fashion/apparel brand currently operating in Tier-1 cities (Delhi, Mumbai, Bangalore, Chennai)

> wants to expand into 2 new cities. Which cities among \*\*Lucknow, Indore, Surat, Nagpur, Coimbatore, and Jaipur\*\*

> offer the best combination of market size, purchasing power, and low competitive saturation?



\---



#### \## Final Recommendation

\*\*Expand into Surat first, then Coimbatore.\*\*



Both cities combine large, urbanizing populations, strong purchasing power, and low existing retail saturation — offering the clearest market whitespace among the 6 candidates studied. Nagpur (ranked #3) is a strong candidate for a future expansion wave.



| Rank | City | Final Score |

|---|---|---|

| 1 | \*\*Surat\*\* | \*\*91.19\*\* |

| 2 | \*\*Coimbatore\*\* | \*\*81.93\*\* |

| 3 | Nagpur | 80.11 |

| 4 | Lucknow | 49.06 |

| 5 | Jaipur | 42.23 |

| 6 | Indore | 6.84 |



Full reasoning, caveats, and methodology notes: \[`/docs/executive\_summary.md`](./docs/executive\_summary.md)



\---



#### \## Why This Niche

D2C fashion/apparel was chosen over skincare or quick-commerce because:

\- Income and urbanization are the dominant, easily-sourced drivers of demand

\- Competitive saturation can be proxied with organized retail (mall) presence

\- Every input maps to free, publicly available Indian data — no paywalled datasets required



\---



#### \## Candidate Cities

| City | State | Why it's in the mix |

|---|---|---|

| Lucknow | Uttar Pradesh | Large Tier-2 population, growing organized retail |

| Indore | Madhya Pradesh | Consistently ranked cleanest/most livable, strong consumption growth |

| Surat | Gujarat | High per-capita income (diamond/textile economy), textile-native market |

| Nagpur | Maharashtra | Central India logistics hub, mid-size urban market |

| Coimbatore | Tamil Nadu | High literacy/industrial base, South India entry point |

| Jaipur | Rajasthan | Tourism + retail hybrid economy, strong urban core |



\---



#### \## Scoring Criteria \& Weights

| Criterion | Weight | Data Proxy | Direction |

|---|---|---|---|

| Market size | 30% | District population (Census 2011, Village + Town levels) | Higher is better |

| Purchasing power | 25% | Per-capita NSDP, current prices (RBI Handbook of Statistics) | Higher is better |

| Urbanization | 20% | % urban population (Census 2011) | Higher is better |

| Competitive saturation | 25% | Organized retail (mall count) per capita | Lower is better (inverted in scoring) |



\---



#### \## Data Sources

| Source | What it provides | Link |

|---|---|---|

| India Data Portal — Census PCA Demography | District-level population, literacy, rural/urban split (Census 2011) | https://ckandev.indiadataportal.com |

| RBI — Handbook of Statistics on Indian States | Per-capita Net State Domestic Product (Table 19, Current Prices) | https://dbie.rbi.org.in |

| Manual compilation (Wikipedia + cross-checks) | Organized retail (mall) counts per city | https://en.wikipedia.org/wiki/List\_of\_shopping\_malls\_in\_India |



\---



#### \## Methodology

1\. \*\*Extract\*\* — pulled Census demography, RBI NSDP, and manually compiled mall-count data for the 6 candidate cities

2\. \*\*Clean \& merge\*\* — Python (pandas): filtered Census data to Village + Town level rows only (Ward-level rows excluded to avoid double-counting); patched a missing Gujarat NSDP data point with the latest available year; computed urbanization % and malls-per-capita

3\. \*\*Score\*\* — SQL: transparent weighted index (no ML / black-box models); all 4 metrics normalized to a 0-100 scale before weighting

4\. \*\*Audit\*\* — Excel: same scoring logic rebuilt with live formulas, so weights can be adjusted and rankings re-checked by hand

5\. \*\*Visualize\*\* — Power BI: ranked bar chart, criteria-breakdown stacked bar, detailed scoring table

6\. \*\*Recommend\*\* — 1-page executive summary ranking all 6 cities with supporting reasoning and caveats



\---



#### \## Key Caveats

\- Gujarat's 2024-25 and 2023-24 NSDP figures were unavailable in RBI's data; the 2022-23 value was used as the latest available proxy for Surat.

\- Population figures are computed from Census Village + Town level rows only; Ward-level rows were excluded to avoid double-counting with Town totals.

\- Indore's Census district population is lower than commonly cited urban-agglomeration figures, likely due to district-boundary definitions in the source data — flagged for further validation.

\- Competitive saturation was proxied via a manually compiled organized-retail (mall) count rather than a government dataset, since no clean district-level retail-density source exists publicly. Source and date-checked noted per entry in `/data/raw/mall\_counts\_raw.xlsx`.



\---



#### \## Deliverables

\- \[x] Cleaned dataset — \[`/data/processed/master\_scoring\_table.csv`](./data/processed/master\_scoring\_table.csv)

\- \[x] Python data prep notebook — \[`/notebooks/market\_expansion\_data\_prep.ipynb`](./notebooks/market\_expansion\_data\_prep.ipynb)

\- \[x] SQL scoring query — \[`/sql/weighted\_scoring\_query.sql`](./sql/weighted\_scoring\_query.sql)

\- \[x] Excel weighted scoring model — \[`/excel/weighted\_scoring\_model.xlsx`](./excel/weighted\_scoring\_model.xlsx)

\- \[x] Power BI dashboard — \[`/powerbi/market\_expansion\_dashboard.pbix`](./powerbi/market\_expansion\_dashboard.pbix)

\- \[x] Executive recommendation — \[`/docs/executive\_summary.md`](./docs/executive\_summary.md)



\---



#### \## Tools Used

SQL · Python (pandas) · Power BI · Excel



\---



#### \## Project Log

| Stage | Phase | Notes |

|---|---|---|

| 1 | Scope | Niche + 6 cities locked, business question finalized, weights drafted |

| 2 | Data collection | Census PCA Demography (India Data Portal), RBI Handbook NSDP per capita (Table 19), manual mall-count compilation via Wikipedia |

| 3 | Clean \& merge | Filtered Census to Village+Town level rows only; patched missing Gujarat NSDP with 2022-23 value; normalized all 4 metrics to 0-100 |

| 4 | Scoring model | Weighted SQL query built (30% population, 25% NSDP, 20% urbanization, 25% inverted saturation) |

| 5 | Excel audit layer | Formula-driven scoring model built for auditability; matches SQL output exactly |

| 6 | Power BI | 3 visuals built: ranked bar chart, criteria-breakdown stacked bar, detailed scoring table |

| 7 | Recommendation | Executive summary finalized: Surat and Coimbatore recommended as top 2 expansion cities |

