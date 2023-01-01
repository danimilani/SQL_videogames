-- Select the year results that appear on both tables

SELECT year FROM top_critic_years_more_than_four_games
INTERSECT
SELECT year FROM top_user_years_more_than_four_games;
