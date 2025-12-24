CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE hotels (
    hotel_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE room_types (
    room_type_id SERIAL PRIMARY KEY,
    type_name VARCHAR(50),
    description TEXT
);

CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
    hotel_id INT REFERENCES hotels(hotel_id),
    room_type_id INT REFERENCES room_types(room_type_id),
    room_number VARCHAR(10),
    price_per_night DECIMAL(10,2)
);

CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    room_id INT REFERENCES rooms(room_id),
    check_in DATE,
    check_out DATE,
    booking_status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES bookings(booking_id),
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE amenities (
    amenity_id SERIAL PRIMARY KEY,
    amenity_name VARCHAR(50)
);

CREATE TABLE room_amenities (
    room_id INT REFERENCES rooms(room_id),
    amenity_id INT REFERENCES amenities(amenity_id),
    PRIMARY KEY (room_id, amenity_id)
);

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    hotel_id INT REFERENCES hotels(hotel_id),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT
);



