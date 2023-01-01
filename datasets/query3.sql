-- Select release year and average critic score for each year, rounded and aliased
-- Join the game_sales and reviews tables
-- Group by release year
-- Order the data from highest to lowest avg_critic_score and limit to 10 results

SELECT g.year, ROUND(AVG(r.critic_score),2) AS "avg_critic_score" FROM game_sales g
LEFT JOIN reviews r
ON g.game = r.game
GROUP BY g.year
ORDER BY "avg_critic_score" DESC
LIMIT 10;
