# Database Project – International Airport (ERD)

## 📌 Description
This project represents an ER-Diagram for a database designed to manage international airport operations.  
The system covers airports, airlines, flights, passengers, bookings, baggage, and security checks.

## 📊 Entities and Attributes
The database contains the following tables:

1. **Airports** – airport information  
   - airport_id (PK)  
   - airport_name  
   - country, state, city  
   - created_at, updated_at  

2. **Airlines** – airlines  
   - airline_id (PK)  
   - airline_code, name, country  
   - created_at, updated_at  

3. **Flights** – flights  
   - flight_id (PK)  
   - airline_id (FK → airlines)  
   - departure_airport_id (FK → airports)  
   - arrival_airport_id (FK → airports)  
   - departing_gate, arriving_gate  
   - scheduled_departure, scheduled_arrival  
   - actual_departure, actual_arrival  
   - created_at, updated_at  

4. **Passengers** – passengers  
   - passenger_id (PK)  
   - first_name, last_name, gender, date_of_birth  
   - country_of_citizenship, country_of_residence  
   - passport_number (unique)  
   - created_at, updated_at  

5. **Bookings** – bookings  
   - booking_id (PK)  
   - flight_id (FK → flights)  
   - passenger_id (FK → passengers)  
   - status, booking_platform, ticket_price  
   - created_at, updated_at  

6. **Booking_changes** – booking modifications  
   - change_id (PK)  
   - booking_id (FK → bookings)  
   - change_description  
   - created_at, updated_at  

7. **Boarding_passes** – boarding passes  
   - boarding_pass_id (PK)  
   - booking_id (FK → bookings)  
   - seat, boarding_time  
   - created_at, updated_at  

8. **Baggage** – baggage details  
   - baggage_id (PK)  
   - booking_id (FK → bookings)  
   - weight_kg  
   - created_at, updated_at  

9. **Baggage_checks** – baggage checks  
   - baggage_check_id (PK)  
   - baggage_id (FK → baggage)  
   - passenger_id (FK → passengers)  
   - check_results  
   - created_at, updated_at  

10. **Security_checks** – security checks  
    - security_check_id (PK)  
    - passenger_id (FK → passengers)  
    - check_results  
    - created_at, updated_at  

## 🔗 Relationships
- Airline **1 → N** Flights  
- Airport **1 → N** Flights (as departure and arrival airports)  
- Passenger **1 → N** Bookings  
- Flight **1 → N** Bookings  
- Booking **1 → N** Booking_changes  
- Booking **1 → N** Boarding_passes  
- Booking **1 → N** Baggage  
- Baggage **1 → N** Baggage_checks  
- Passenger **1 → N** Security_checks  

## 📐 Normalization
All tables are normalized up to **Third Normal Form (3NF)**:  
- Every attribute depends only on the primary key.  
- No transitive dependencies exist.  
- Redundancy is minimized by separating airports, airlines, passengers, and other entities into independent tables.  
 