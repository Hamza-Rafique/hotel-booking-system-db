# 🏨 Hotel Booking System Database

A fully normalized **Hotel Booking System Database** designed using **PostgreSQL**, following **3rd Normal Form (3NF)** principles.  
This project demonstrates real-world database design, indexing, stored procedures, and query optimization.

---

## 📌 Features

- ✅ 9 normalized tables (3NF)
- ✅ Proper foreign key relationships
- ✅ Indexes for performance optimization
- ✅ Stored procedures for business logic
- ✅ Query optimization using `EXPLAIN ANALYZE`
- ✅ Clean and professional SQL structure

---

## 🗂 Database Tables

- users
- hotels
- room_types
- rooms
- bookings
- payments
- amenities
- room_amenities
- reviews

---

## ⚙️ Technologies Used

- PostgreSQL
- SQL
- GitHub Codespaces

---

## 🚀 How to Run the Project

1. Open repository in **GitHub Codespaces**
2. Install PostgreSQL
3. Create database:
   ```sql
   CREATE DATABASE hotel_db;
```
4.Run SQL files:
   ```sql
   \i schema/01_create_tables.sql
\i schema/02_indexes.sql
\i schema/03_stored_procedures.sql
```