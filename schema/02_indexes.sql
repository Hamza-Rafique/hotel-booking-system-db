
CREATE INDEX idx_bookings_user ON bookings(user_id);

CREATE INDEX idx_bookings_room ON bookings(room_id);

CREATE INDEX idx_rooms_hotel ON rooms(hotel_id);

CREATE INDEX idx_payments_booking ON payments(booking_id);