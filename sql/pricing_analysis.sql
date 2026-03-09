USE airbnb;
CREATE VIEW vw_avg_price_region AS
SELECT
neighbourhood_group,
AVG(price) AS avg_price
FROM airbnb
GROUP BY neighbourhood_group;

CREATE VIEW vw_avg_price_room_type AS
SELECT
room_type,
AVG(price) AS avg_price
FROM airbnb
GROUP BY room_type;

CREATE VIEW vw_listing_revenue_model AS
SELECT
id,
price,
service_fee,
(price + service_fee) AS estimated_revenue
FROM airbnb;

CREATE VIEW vw_expensive_listings_rank AS
SELECT
id,
neighbourhood_group,
room_type,
price,
RANK() OVER (ORDER BY price DESC) AS price_rank
FROM airbnb;