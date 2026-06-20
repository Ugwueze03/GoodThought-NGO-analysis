--Query 1: Top 5 Assignments by Total Donation Amount, Split by Donor Type--
SELECT 
	a.assignment_name, a.region, 
	ROUND(SUM(d.amount), 2) AS rounded_total_donation_amount,
	ds.donor_type
FROM assignments AS a
INNER JOIN donations AS d
ON a.assignment_id = d.assignment_id
INNER JOIN donors AS ds 
ON d.donor_id = ds.donor_id 
GROUP BY ds.donor_type, a.assignment_name, a.region
	ORDER BY rounded_total_donation_amount DESC
LIMIT 5; 

--Query 2: Highest Impact Assignment per Region--
WITH stephen_sql_project AS(
SELECT a.assignment_name, a.region, MAX(impact_score) AS impact_score,
	ROW_NUMBER() OVER(PARTITION BY region ORDER BY a.impact_score DESC) AS r_impact_score,
	COUNT(d.donation_id) AS num_total_donations
FROM assignments AS a
INNER JOIN donations AS d
ON a.assignment_id = d.assignment_id
GROUP BY a.region, a.assignment_name, a.impact_score
HAVING COUNT(d.donation_id) >= 1
ORDER BY region, a.impact_score DESC)
SELECT assignment_name, region, impact_score, num_total_donations
FROM stephen_sql_project
WHERE r_impact_score = 1	
ORDER BY region;
