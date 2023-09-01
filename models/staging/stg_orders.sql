select 
--from raw orders
    orderid,
    orderdate,
    shipdate,
    shipmode,
    ordersellingprice - ordercostprice as orderprofit,
--from raw customer
    c.customername,
    c.segment,
    c.country,
--from raw prodfuct
    p.category,
    p.productname,
    p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c on c.customerid = o.customerid
left join {{ ref('raw_products') }} as p on o.productid = p.productid