-- SELECT r.RouteID, COUNT(f.FlightID) AS Quant FROM route AS r LEFT OUTER JOIN flight AS f ON r.RouteID = f.RouteID GROUP BY r.RouteID;

-- SELECT a.AircraftID, at.AircraftName FROM aircrafttype AS at LEFT OUTER JOIN aircraft AS a ON at.AircraftTypeID = a.AircraftTypeID WHERE a.AircraftID IS NULL;

-- SELECT at.AircraftName, COUNT(a.AircraftID) FROM aircrafttype AS at LEFT OUTER JOIN aircraft AS a ON at.AircraftTypeID = a.AircraftTypeID GROUP BY at.AircraftTypeID, at.AircraftName;

-- SELECT a.AirportCode, COUNT(r.RouteID) FROM airport AS a JOIN route AS r ON a.AirportID = r.Origin GROUP BY a.AirportID, a.AirportCode HAVING COUNT(r.RouteID) > 2;

-- SELECT r.RouteID, ao.AirportCode AS FromAirport, ad.AirportCode AS ToAirport, f.FlightID, fd.DepTime, fd.DepDay FROM route AS r JOIN airport AS ao ON r.Origin = ao.AirportID JOIN airport AS ad ON r.Destination = ad.AirportID JOIN flight AS f ON r.RouteID = f.RouteID JOIN flightdep AS fd ON f.FlightID = fd.FlightID;

-- SELECT FlightID FROM flight WHERE FlightID NOT IN (SELECT FlightID FROM flightdep WHERE DepDay = 1) ORDER BY FlightID ASC;

-- SELECT ao.AirportName AS FromAirport, ad.AirportName AS ToAirport, c.ClassName FROM flightclass AS fc JOIN class AS c ON fc.ClassID = c.ClassID JOIN flight AS f ON fc.FlightID = f.FlightID JOIN route AS r ON f.RouteID = r.RouteID JOIN airport AS ao ON r.Origin = ao.AirportID JOIN airport AS ad ON r.Destination = ad.AirportID WHERE fc.BasePrice = (SELECT MIN(BasePrice) FROM flightclass);

-- SELECT ao.AirportName AS FromAirport, ad.AirportName AS ToAirport, s.FlightDate, c.ClassName FROM stats AS s JOIN class AS c ON s.ClassID = c.ClassID JOIN flight AS f ON s.FlightID = f.FlightID JOIN route AS r ON f.RouteID = r.RouteID JOIN airport AS ao ON r.Origin = ao.AirportID JOIN airport AS ad ON r.Destination = ad.AirportID WHERE s.CurrPrice = (SELECT MAX(CurrPrice) FROM stats);
