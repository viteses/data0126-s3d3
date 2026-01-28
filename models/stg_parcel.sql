with
    source as (
     select 
        *
     from {{ source("raw", "parcel") }} --`ardent-sun-473612-m9.raw_data_circle.raw_cc_parcel`
    ),

renamed as (
    select  
        Parcel_id as parcel_id
    from source
)

select * from renamed