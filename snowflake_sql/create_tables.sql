
CREATE SCHEMA IF NOT EXISTS oxfam_analytics;

-- Create supporters table
CREATE OR REPLACE TABLE oxfam_analytics.supporters (
    supporter_id INTEGER,
    name STRING,
    email STRING,
    signup_channel STRING,
    signup_date DATE,
    location STRING
);

-- Create donations table
CREATE OR REPLACE TABLE oxfam_analytics.donations (
    donation_id INTEGER,
    supporter_id INTEGER,
    donation_date DATE,
    amount FLOAT,
    campaign STRING,
    donation_type STRING
);

-- Create campaigns table
CREATE OR REPLACE TABLE oxfam_analytics.campaigns (
    campaign_id INTEGER,
    campaign_name STRING,
    campaign_type STRING,
    start_date DATE,
    end_date DATE,
    target_amount FLOAT
);
