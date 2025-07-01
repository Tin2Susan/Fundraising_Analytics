
INSERT INTO oxfam_analytics.supporters
(supporter_id, name, email, signup_channel, signup_date, location)
SELECT
    supporter_id, name, email, signup_channel,
    TRY_CAST(signup_date AS DATE),
    location
FROM oxfam_analytics.supporters_staging;

-- Insert data from staging into donations
INSERT INTO oxfam_analytics.donations
(donation_id, supporter_id, donation_date, amount, campaign, donation_type)
SELECT
    donation_id, supporter_id,
    TRY_CAST(donation_date AS DATE),
    TRY_CAST(amount AS FLOAT),
    campaign,
    donation_type
FROM oxfam_analytics.donations_staging;

-- Insert data from staging into campaigns
INSERT INTO oxfam_analytics.campaigns
(campaign_id, campaign_name, campaign_type, start_date, end_date, target_amount)
SELECT
    campaign_id, campaign_name, campaign_type,
    TRY_CAST(start_date AS DATE),
    TRY_CAST(end_date AS DATE),
    TRY_CAST(target_amount AS FLOAT)
FROM oxfam_analytics.campaigns_staging;
