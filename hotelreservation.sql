show databases;
use hotelreservation;
select * from mytable;

select count(*) 
from mytable; #1

select type_of_meal_plan, count(type_of_meal_plan) as no_of_times_ordered
from mytable
group by type_of_meal_plan
order by no_of_times_ordered desc; #2

select avg(avg_price_per_room) as avg_price_per_room_involving_children
from mytable
where no_of_children=0; #3

select COUNT(booking_id) as total_no_of_reservation_in_2017    # not giving result
from mytable
where year(arrival_date) = 2017; #4

select room_type_reserved, count(room_type_reserved) as max_no_of_times_booked_room
from mytable
group by room_type_reserved
order by max_no_of_times_booked_room desc; #5

select COUNT(booking_id) as no_of_reservations_on_weekend 
from mytable 
where no_of_weekend_nights>0; #6

select MAX(lead_time) as highest_lead_time, MIN(lead_time)
from mytable; #7

select market_segment_type, COUNT(market_segment_type) as max_no_of_times_used
from mytable
group by market_segment_type 
order by max_no_of_times_used desc; #8

select COUNT(booking_status) as no_of_confirmed_bookings 
from mytable
where booking_status= "Not_Canceled";      #9

select sum(no_of_adults) as Total_no_of_adults, sum(no_of_children) as Total_no_of_children 
from mytable;    #10

select AVG(no_of_weekend_nights) as avg_of_weekend_nights 
from mytable
where no_of_children!=0;             #11

select COUNT(Booking_Id) as no_of_reservations, MONTH(arrival_date) as Month, YEAR(arrival_date) as Year
from mytable
group by Month(arrival_date), YEAR(arrival_date)
order by no_of_reservations desc;     #12

select room_type_reserved, AVG(no_of_weekend_nights) as avg_weekend_nights, AVG(no_of_week_nights) as avg_week_nights
from mytable
group by room_type_reserved; #13

select room_type_reserved, COUNT(room_type_reserved) as max_times_reserved, avg(avg_price_per_room) as avg_price_of_room
from mytable
group by room_type_reserved 
order by max_times_reserved desc; #14

select market_segment_type, max(avg_price_per_room) as highest_of_avg_price_of_room
from mytable
group by market_segment_type 
order by highest_of_avg_price_of_room desc; #15