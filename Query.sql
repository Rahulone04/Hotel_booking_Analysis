--1. What is the distribution of booking statuses?
SELECT booking_status,
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY booking_status;

--2. Which booking channel has the highest number of bookings?

SELECT booking_channel,
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY booking_channel
ORDER BY total_bookings DESC;

---3. Which room type is booked the most?
SELECT room_type,
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY room_type
ORDER BY total_bookings DESC;

---4. Which star rating receives the most bookings?
SELECT star_rating,
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY star_rating
ORDER BY total_bookings DESC;

--5. What is the total revenue generated from bookings?
SELECT SUM(booking_value) AS total_revenue
FROM hotel_bookings;

--6. Which booking channel generates the highest revenue?
SELECT booking_channel,
       SUM(booking_value) AS revenue
FROM hotel_bookings
GROUP BY booking_channel
ORDER BY revenue DESC;


--7. Which room type generates the highest revenue?
SELECT room_type,
       SUM(booking_value) AS revenue
FROM hotel_bookings
GROUP BY room_type
ORDER BY revenue DESC;

--8. How many bookings were cancelled?
SELECT COUNT(*) AS cancelled_bookings
FROM hotel_bookings
WHERE booking_status='Cancelled';


--9. Which booking channel has the most cancellations?
SELECT booking_channel,
       COUNT(*) AS cancellations
FROM hotel_bookings
WHERE booking_status='Cancelled'
GROUP BY booking_channel
ORDER BY cancellations DESC;

--10. Which room type has the most cancellations?
SELECT room_type,
       COUNT(*) AS cancellations
FROM hotel_bookings
WHERE booking_status='Cancelled'
GROUP BY room_type
ORDER BY cancellations DESC;

--11. What is the average booking value by room type?
SELECT room_type,
       AVG(booking_value) AS avg_booking_value
FROM hotel_bookings
GROUP BY room_type;

--12. What is the monthly booking trend?
SELECT MONTH(booking_date) AS month,
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY MONTH(booking_date)
ORDER BY month;

--13. How many bookings used coupons?
SELECT [Coupon USed?],
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY [Coupon USed?];

--14. Which payment method is used the most?
SELECT payment_method,
       COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY payment_method
ORDER BY total_bookings DESC;

--15. What is the average cashback given per booking?
SELECT AVG(cashback) AS avg_cashback
FROM hotel_bookings;





