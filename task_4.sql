SELECT *
FROM information_schema.COLUMNS
WHERE table_schema = DATABASE()
AND table_name = "books"
ORDER BY ordinal_position;



