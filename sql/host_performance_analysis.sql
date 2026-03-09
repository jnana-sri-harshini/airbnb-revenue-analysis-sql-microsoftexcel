CREATE VIEW vw_host_performance AS
SELECT
host_id,
SUM(calculated_host_listings_count) AS total_host_listings
FROM airbnb
GROUP BY host_id;

CREATE VIEW vw_host_verification_distribution AS
SELECT
host_identity_verified,
COUNT(*) AS hosts
FROM airbnb
GROUP BY host_identity_verified;

CREATE VIEW vw_host_revenue AS
SELECT
host_id,
SUM(price + service_fee) AS total_revenue
FROM airbnb
GROUP BY host_id;

CREATE VIEW vw_host_revenue_rank AS
SELECT
host_id,
SUM(price + service_fee) AS revenue,
RANK() OVER (ORDER BY SUM(price + service_fee) DESC) AS revenue_rank
FROM airbnb
GROUP BY host_id;
