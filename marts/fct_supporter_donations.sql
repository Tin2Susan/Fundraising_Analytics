with donations as (
    select * from {{ ref('stg_donations') }}
),

campaigns as (
    select * from {{ ref('stg_campaigns') }}
),

supporters as (
    select * from {{ ref('stg_supporters') }}
),

joined as (
    select
        d.donation_id,
        d.supporter_id,
        s.name as supporter_name,
        s.email,
        s.signup_date,
        s.location,
        d.campaign,
        c.campaign_name,
        c.campaign_type,
        c.start_date,
        c.end_date,
        c.target_amount,
        d.amount,
        d.donation_type,
        d.donation_date
    from donations d
    left join supporters s on d.supporter_id = s.supporter_id
    left join campaigns c on lower(d.campaign) = lower(c.campaign_name)
)

select * from joined
