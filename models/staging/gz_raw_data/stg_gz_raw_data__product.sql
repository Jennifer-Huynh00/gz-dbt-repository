with 

source as (

    select * from {{ source('gz_raw_data', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price AS purchase_price
        CAST (purchase_price AS FLOAT64 )

    from source

)

select * from renamed