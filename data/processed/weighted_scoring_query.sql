SELECT City,
       population_score,
       urbanization_pct_score,
       nsdp_per_capita_score,
       saturation_score,
       ROUND(
         population_score * 0.30 +
         nsdp_per_capita_score * 0.25 +
         urbanization_pct_score * 0.20 +
         saturation_score * 0.25
       , 2) AS final_score
FROM master_scoring_table
ORDER BY final_score DESC;