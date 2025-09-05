with

source as (
    select * from {{ source('stripe', 'payment') }}
),

renamed as (
    select
        id as payment,
        orderid as order_id,
        paymentmethod as payment_method,
        status as payment_status,
        amount,
        created,
        _batched_at

    from source
)

SELECT * from renamed