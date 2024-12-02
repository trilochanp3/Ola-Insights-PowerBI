use ola;

-- 1)all successfull bookings
select count(*) from bookings
where Booking_Status= 'Success';

create view successfull_bookings as
select * from bookings
where Booking_Status= 'Success';

-- 2)Average ride distande for eacg vehicle type
  create view avg_ride_distance as
  select vehicle_Type, avg(Ride_Distance)
   from bookings
   group by vehicle_Type;

-- 3) Get the total number of cancelled rides by customer
	create view total_cancelled_rides as
    select count(*) from bookings
     where canceled_rides_by_customer is not null;
     
-- 4) top 5 customers who book most rides
	create view top5_customers as
    select distinct customer_ID as customers, count(customer_id)
     from bookings 
     group by customers
     order by  count(customer_id) desc
     limit 5;
	
--  5) rides cancelled by drivers due to personal and car related issues
	create view driver_canclled_rides as
    select count(*) from bookings
     where canceled_rides_by_driver is not null;

-- 6) Finding maximum and ninimum driver ratings for prime sedan bookings
	create view max_and_min_driver_rating as
    select vehicle_type, max(customer_rating) as max_rating, min(customer_rating) as minimum_rating
    from bookings
     where vehicle_type = 'Prime Sedan'
     group by vehicle_type;

-- 7) Retrieve all rides where payment was made using UPI
	create view upi_payments as
    select * from bookings
    where payment_method = 'UPI';

-- 8) Find average customer rating per vehicle type
	create view avg_rating_per_vehicle as
    select vehicle_type, avg(customer_rating) as average_rating
    from bookings
     group by vehicle_type;
     
-- 9) Calculate the total booking value of rides completed successfully
	create view total_booking_value_sucessfull_rides as
    select sum(booking_value) from bookings
	 where booking_status = 'Success';

-- 10) All incomplete rides along with reason
	create view incomplete_rides_With_reason as
    select booking_id, incomplete_rides_reason from bookings
	where incomplete_rides ='Yes' and incomplete_rides_reason is not null;


