with source as (
    select * from {{ source('oxfam', 'supporters') }}
),

renamed as (
    select
        supporter_id,
        name,
        email,
        signup_channel,
        cast(signup_date as date) as signup_date,
        location
    from source
)

select * from renamed
