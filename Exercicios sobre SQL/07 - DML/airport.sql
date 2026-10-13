-- PRAGMA foreign_keys = ON;
-- INSERT INTO flight (FlightID, RouteID, AircraftID) VALUES (904, 1003, 3223);

-- PRAGMA foreign_keys = ON;
-- INSERT INTO aircrafttype (AircraftTypeID, AircraftName) VALUES (787, 'Boeing 787-9');

-- PRAGMA foreign_keys = ON;
-- UPDATE stats SET CurrSeats = CurrSeats + 2 WHERE FlightID = 652 AND FlightDate = '2009-01-20' AND ClassID = 3;

-- PRAGMA foreign_keys = ON;
-- UPDATE stats SET CurrSeats = CurrSeats + 5, CurrPrice = CurrPrice * 1.20 WHERE FlightID = 652 AND FlightDate = '2009-01-20' AND ClassID = 2;

-- PRAGMA foreign_keys = ON;
-- UPDATE flight SET FlightID = 915 WHERE FlightID = 935;

-- PRAGMA foreign_keys = ON;
-- UPDATE route SET RouteStatus = 0 WHERE Origin IN (SELECT AirportID FROM airport WHERE AirportCode = 'ORY');

-- PRAGMA foreign_keys = ON;
-- DELETE FROM pax WHERE FlightID = 652;

-- PRAGMA foreign_keys = ON;
-- DELETE FROM stats WHERE FlightID = 876 AND FlightDate = '2009-04-01';