--SELECT * FROM airport WHERE CityName = 'London';

--SELECT * FROM airport WHERE NumTerminals > 1;

--SELECT MaxSeats FROM flightclass WHERE FlightID = 876 AND ClassID = 3;

--SELECT RouteID FROM route WHERE Distance > 5000;

--SELECT PaxName FROM pax WHERE FlightID = 652 AND ClassID = 3;

--SELECT AirportCode, AirportName FROM airport WHERE CountryCode = 'ES';

--SELECT DepDay, DepTime FROM flightdep WHERE FlightID = 896;

--SELECT NextMaintBegin FROM aircraft WHERE RegNum = 'ZX5731';

--SELECT RegNum FROM aircraft WHERE LastMaintEnd >= '2007-04-01' AND LastMaintEnd <= '2008-05-20';

--SELECT RegNum FROM aircraft WHERE AircraftTypeID = 617 OR AircraftTypeID = 503;
