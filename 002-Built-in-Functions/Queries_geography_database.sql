SELECT `country_name`, `iso_code`
FROM `countries`
WHERE `country_name` LIKE '%a%a%a%'
ORDER BY `iso_code`;

SELECT `peak_name`, `river_name`, concat(lower(`peak_name`), substring(lower(`river_name`), 2)) AS `mix`
FROM `peaks`,
     `rivers`
WHERE right (`peak_name`, 1) = left (`river_name`, 1)
ORDER BY `mix`;