-- Ariline Table
CREATE TABLE Airline(
	AirlineID INTEGER NOT NULL PRIMARY KEY,
	Airline TEXT)

-- City Table
CREATE TABLE City(
	CityID INTEGER NOT NULL PRIMARY KEY,
	City TEXT)

-- Arrival_time Table
CREATE TABLE Arrival_time(
	ArrivaltimeID INTEGER NOT NULL PRIMARY KEY,
	scheduled_arrival TEXT)

-- Number_of_stops Table
CREATE TABLE Number_of_stops(
	Stop_id INTEGER NOT NULL PRIMARY KEY,
	Stop_count TEXT)

-- Ticket_class Table
CREATE TABLE Ticket_class(
	TicketID INTEGER NOT NULL PRIMARY KEY,
	ticket_type TEXT)

-- Flights Table
CREATE TABLE Flights(
	FlightID INTEGER NOT NULL PRIMARY KEY,
	Flight_Number TEXT,
	source_city TEXT,
	destination_city TEXT)

-- Flight_Fare Table
CREATE TABLE Flight_Fare(
	Flight_Fare_ID INTEGER NOT NULL PRIMARY KEY,
	airlineID INTEGER,
	FlightID INTEGER,
	departure_time_id INTEGER,
	stop_id INTEGER,
	arrival_time_id INTEGER,
	ticketID INTEGER,
	duration INTEGER,
	days_left INTEGER,
	price INTEGER,
	FOREIGN KEY(airlineID) REFERENCES Airline(AirlineID),
	FOREIGN KEY(FlightID) REFERENCES Flights(FlightID),
	FOREIGN KEY(arrival_time_id) REFERENCES Arrival_time(ArrivaltimeID),
	FOREIGN KEY(stop_id) REFERENCES Number_of_stops(Stop_id),
	FOREIGN KEY(departure_time_id) REFERENCES Arrival_time(ArrivaltimeID),
	FOREIGN KEY(ticketID) REFERENCES Ticket_class(TicketID))