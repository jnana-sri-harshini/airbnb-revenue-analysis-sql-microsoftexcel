CREATE VIEW vw_instant_booking_distribution AS
SELECT
instant_bookable,
COUNT(*) AS listings
FROM airbnb
GROUP BY instant_bookable;

CREATE VIEW vw_cancellation_policy_distribution AS
SELECT
cancellation_policy,
COUNT(*) AS listings
FROM airbnb
GROUP BY cancellation_policy;

CREATE VIEW vw_instant_booking_room_type AS
SELECT
room_type,
instant_bookable,
COUNT(*) AS listings
FROM airbnb
GROUP BY room_type, instant_bookable;

CREATE VIEW vw_cancellation_policy_region AS
SELECT
neighbourhood_group,
cancellation_policy,
COUNT(*) AS listings
FROM airbnb
GROUP BY neighbourhood_group, cancellation_policy;