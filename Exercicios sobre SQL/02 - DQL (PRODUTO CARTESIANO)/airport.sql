-- SELECT * FROM pax ORDER BY PaxName;

-- SELECT AirportCode, AirportName FROM airport WHERE CountryCode = 'ES' ORDER BY AirportCode;

-- SELECT RouteID, Duration FROM airport AS a, route AS r WHERE a.AirportID = r.Origin AND a.AirportCode = 'LHR';

-- SELECT r.RouteID, ao.AirportCode AS ORIGIN, ad.AirportCode AS DESTINATION FROM route AS r, airport AS ao, airport AS ad WHERE r.Origin = ao.AirportID AND r.Destination = ad.AirportID ORDER BY ORIGIN, DESTINATION;

-- SELECT r.RouteID, ao.AirportCode AS ORIGIN, ad.AirportCode AS DESTINATION FROM route AS r, airport AS ao, airport AS ad WHERE r.Origin = ao.AirportID AND r.Destination = ad.AirportID ORDER BY ORIGIN ASC, DESTINATION DESC;

-- SELECT f.FlightID, at.AircraftName FROM flight AS f, aircraft AS a, aircrafttype AS at WHERE f.AircraftID = a.AircraftID AND a.AircraftTypeID = at.AircraftTypeID AND at.AircraftName LIKE '%Airbus%';

-- SELECT p.PaxName, p.FlightDate, r.Origin, r.Destination FROM pax AS p, flight AS f, route AS r WHERE p.FlightID = f.FlightID AND f.RouteID = r.RouteID;

-- SELECT p.PaxName, p.FlightDate, ao.AirportCode, ad.AirportCode FROM pax AS p, flight AS f, route AS r, airport AS ao, airport AS ad WHERE p.FlightID = f.FlightID AND f.RouteID = r.RouteID AND r.Origin = ao.AirportID AND r.Destination = ad.AirportID ORDER BY p.PaxName;

-- SELECT f.FlightID, a.AirportCode, fc.MaxSeats FROM flight AS f, route AS r, airport AS a, flightclass AS fc WHERE f.RouteID = r.RouteID AND r.Destination = a.AirportID AND f.FlightID = fc.FlightID AND fc.ClassID = 3 ORDER BY fc.MaxSeats DESC;

-- SELECT c.ClassName, fc.FlightID, fc.MaxSeats, fc.BasePrice FROM class AS c, flightclass AS fc WHERE c.ClassID = fc.CLassID ORDER BY c.ClassName, fc.FlightID, fc.BasePrice;