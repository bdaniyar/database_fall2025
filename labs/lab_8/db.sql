create table airline (
	airline_id INT,
	airline_code VARCHAR(50),
	airline_name VARCHAR(50),
	airline_country VARCHAR(50),
	created_at DATE,
	update_at DATE
); create table airport (
	airport_id INT,
	airport_name VARCHAR(50),
	country VARCHAR(50),
	state VARCHAR(50),
	city VARCHAR(50),
	created_at DATE,
	update_at DATE
);create table baggage_check (
	baggage_check_id INT,
	check_result VARCHAR(50),
	created_at DATE,
	update_at DATE,
	booking_id INT,
	passenger_id INT
);create table baggage (
	baggage_id INT,
	weight_in_kg DECIMAL(4,2),
	created_date DATE,
	update_date DATE,
	booking_id INT
);create table boarding_pass (
	boarding_pass_id INT,
	booking_id INT,
	seat VARCHAR(50),
	boarding_time DATE,
	created_at DATE,
	update_at DATE
);create table booking_flight (
	booking_flight_id INT,
	booking_id INT,
	flight_id INT,
	created_at DATE,
	update_at DATE
);create table booking (
	booking_id INT,
	passenger_id INT,
	booking_platform VARCHAR(50),
	created_at DATE,
	update_at DATE,
	status VARCHAR(50),
	price DECIMAL(7,2)
);create table flights (
	flight_id INT,
	flight_no VARCHAR(50),
	scheduled_departure DATE,
	scheduled_arrival DATE,
	departure_airport_id INT,
	arrival_airport_id INT,
	departing_gate VARCHAR(50),
	arriving_gate VARCHAR(50),
	airline_id INT,
	status VARCHAR(50),
	actual_departure DATE,
	actual_arrival DATE,
	created_at DATE,
	update_at DATE
);create table passengers (
	passenger_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	date_of_birth DATE,
	gender VARCHAR(50),
	country_of_citizenship VARCHAR(50),
	country_of_residence VARCHAR(50),
	passport_number VARCHAR(50),
	created_at DATE,
	update_at DATE
);create table security_check (
	security_check_id INT,
	check_result VARCHAR(50),
	created_at DATE,
	update_at DATE,
	passenger_id INT 
); 