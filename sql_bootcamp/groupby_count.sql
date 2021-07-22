SELECT staff_id, COUNT(payment.staff_id) as count
FROM payment
GROUP BY staff_id;