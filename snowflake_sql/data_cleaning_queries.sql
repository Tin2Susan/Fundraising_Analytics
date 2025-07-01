-- Check for NULLs in supporters
SELECT COUNT(*) AS null_count_supporter_id FROM oxfam_analytics.supporters WHERE supporter_id IS NULL;
SELECT COUNT(*) AS null_count_email FROM oxfam_analytics.supporters WHERE email IS NULL;

-- Check for NULLs in donations
SELECT COUNT(*) AS null_count_donation_id FROM oxfam_analytics.donations WHERE donation_id IS NULL;
SELECT COUNT(*) AS null_count_amount FROM oxfam_analytics.donations WHERE amount IS NULL;

-- Check for NULLs in campaigns
SELECT COUNT(*) AS null_count_campaign_id FROM oxfam_analytics.campaigns WHERE campaign_id IS NULL;
SELECT COUNT(*) AS null_count_target_amount FROM oxfam_analytics.campaigns WHERE target_amount IS NULL;


-- Check joins between donations and supporters
SELECT d.*, s.name, s.email
FROM oxfam_analytics.donations d
LEFT JOIN oxfam_analytics.supporters s
    ON d.supporter_id = s.supporter_id
LIMIT 10;

-- Check joins between donations and campaigns
SELECT d.*, c.campaign_name, c.campaign_type
FROM oxfam_analytics.donations d
LEFT JOIN oxfam_analytics.campaigns c
    ON d.campaign = c.campaign_id::STRING  
LIMIT 10;

-- Sample: Donations by campaign
SELECT
    c.campaign_name,
    COUNT(d.donation_id) AS donation_count,
    SUM(d.amount) AS total_amount
FROM oxfam_analytics.donations d
JOIN oxfam_analytics.campaigns c
    ON d.campaign = c.campaign_id::STRING  
GROUP BY c.campaign_name
ORDER BY total_amount DESC;
