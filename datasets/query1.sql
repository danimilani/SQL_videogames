-- Select all information for the top ten best-selling games
-- Order the results from best-selling game down to tenth best-selling

SELECT * FROM game_sales
ORDER BY games_sold DESC
LIMIT 10;
