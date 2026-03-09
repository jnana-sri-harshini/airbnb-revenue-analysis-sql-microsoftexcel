CREATE VIEW vw_availability_distribution AS
SELECT
availability_365,
COUNT(*) AS listings
FROM airbnb
GROUP BY availability_365;

CREATE VIEW vw_avg_availability_room_type AS
SELECT
room_type,
AVG(availability_365) AS avg_availability
FROM airbnb
GROUP BY room_type;

CREATE VIEW vw_high_availability_rank AS
SELECT
id,
room_type,
availability_365,
RANK() OVER (ORDER BY availability_365 DESC) AS availability_rank
FROM airbnb;

CREATE VIEW vw_property_age_distribution AS
SELECT
construction_year,
COUNT(*) AS listings
FROM airbnb
GROUP BY construction_year;