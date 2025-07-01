-- models/marts/Staging/stg_campaigns.sql

with source as (
    select * from {{ source('oxfam', 'campaigns') }}
),

renamed as (
    select
        campaign_id,
        campaign_name,
        campaign_type,
        start_date,
        end_date,
        target_amount
    from source
)

select * from renamed
