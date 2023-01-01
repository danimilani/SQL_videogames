-- Select year and sum of games_sold, aliased as total_games_sold; order results by total_games_sold descending
-- Filter game_sales based on whether each year is in the list returned in the previous task

SELECT g.year, SUM(g.games_sold) AS "total_games_sold" FROM game_sales g
WHERE g.year IN (
SELECT year FROM top_critic_years_more_than_four_games
INTERSECT
SELECT year FROM top_user_years_more_than_four_games
)
GROUP BY g.year
ORDER BY "total_games_sold" DESC;
