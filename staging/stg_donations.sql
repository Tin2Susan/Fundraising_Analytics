with source as (
    select * from {{ source('oxfam', 'donations') }}
),

renamed as (
    select
        donation_id,
        supporter_id,
        cast(donation_date as date) as donation_date,
        amount,
        campaign,
        donation_type
    from source
)

select * from renamed
