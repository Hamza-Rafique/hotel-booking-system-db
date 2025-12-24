CREATE OR REPLACE FUNCTION create_booking(
    p_user_id INT,
    p_room_id INT,
    p_check_in DATE,
    p_check_out DATE
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO bookings(user_id, room_id, check_in, check_out, booking_status)
    VALUES (p_user_id, p_room_id, p_check_in, p_check_out, 'CONFIRMED');
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION calculate_booking_cost(p_booking_id INT)
RETURNS DECIMAL AS $$
DECLARE total DECIMAL;
BEGIN
    SELECT (check_out - check_in) * r.price_per_night
    INTO total
    FROM bookings b
    JOIN rooms r ON b.room_id = r.room_id
    WHERE b.booking_id = p_booking_id;

    RETURN total;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION cancel_booking(p_booking_id INT)
RETURNS VOID AS $$
BEGIN
    UPDATE bookings
    SET booking_status = 'CANCELLED'
    WHERE booking_id = p_booking_id;
END;
$$ LANGUAGE plpgsql;
