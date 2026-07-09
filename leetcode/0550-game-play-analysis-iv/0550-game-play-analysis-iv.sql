SELECT
ROUND(
    COUNT(DISTINCT player_id)::numeric
    /
    (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2
) AS fraction
FROM Activity a
WHERE event_date = (
    SELECT MIN(event_date) + INTERVAL '1 day'
    FROM Activity
    WHERE player_id = a.player_id
);