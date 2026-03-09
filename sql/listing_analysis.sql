USE airbnb;
CREATE VIEW vw_listings_by_region AS
SELECT
neighbourhood_group,
COUNT(*) AS total_listings
FROM airbnb
GROUP BY neighbourhood_group;

CREATE VIEW vw_region_market_share AS
SELECT
neighbourhood_group,
COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS market_share_percent
FROM airbnb
GROUP BY neighbourhood_group;

CREATE VIEW vw_neighbourhood_listing_rank AS
SELECT
neighbourhood,
COUNT(*) AS listings,
RANK() OVER (ORDER BY COUNT(*) DESC) AS neighbourhood_rank
FROM airbnb
GROUP BY neighbourhood;

CREATE VIEW vw_host_listing_counts AS
SELECT
host_id,
COUNT(*) AS listings
FROM airbnb
GROUP BY host_id;