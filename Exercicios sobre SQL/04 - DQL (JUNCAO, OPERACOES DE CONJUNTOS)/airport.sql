-- SELECT r.RouteID, r.Origin, r.Destination FROM route AS r JOIN airport AS a ON r.Origin = a.AirportID WHERE a.AirportCode = 'LHR' OR a.AirportCode = 'AMS';

-- SELECT r.RouteID, r.Origin, r.Destination FROM route AS r JOIN airport AS a ON r.Origin = a.AirportID WHERE a.AirportCode = 'LHR'
-- UNION
-- SELECT r.RouteID, r.Origin, r.Destination FROM route AS r JOIN airport AS a ON r.Origin = a.AirportID WHERE a.AirportCode = 'AMS';

-- SELECT r.RouteID, ao.AirportCode AS Origem, ad.AirportCode AS Destino FROM route AS r JOIN airport AS ao ON r.Origin = ao.AirportID JOIN airport AS ad ON r.Destination = ad.AirportID ORDER BY Origem ASC, Destino DESC;

-- SELECT f.*, fd.DepDay, fd.DepTime FROM flight AS f JOIN flightdep AS fd ON f.FlightID = fd.FlightID ORDER BY f.FlightID ASC;

-- SELECT f.FlightID, fc.ClassID FROM flight AS f LEFT OUTER JOIN flightclass AS fc ON f.FlightID = fc.FlightID;

-- SELECT f.FlightID, p.PaxName FROM flight AS f LEFT OUTER JOIN pax AS p ON f.FlightID = p.FlightID ORDER BY f.FlightID ASC, p.PaxName ASC;

-- SELECT FlightID FROM flight
-- EXCEPT
-- SELECT FlightID FROM pax;

-- SELECT f.FlightID, ao.AirportCode AS Origem, ad.AirportCode AS Destino FROM flight AS f JOIN route AS r ON f.RouteID = r.RouteID JOIN airport AS ao ON r.Origin = ao.AirportID JOIN airport AS ad ON r.Destination = ad.AirportID
-- EXCEPT
--SELECT f.FlightID, ao.AirportCode AS Origem, ad.AirportCode AS Destino FROM flight AS f JOIN route AS r ON f.RouteID = r.RouteID JOIN airport AS ao ON r.Origin = ao.AirportID JOIN airport AS ad ON r.Destination = ad.AirportID JOIN pax AS p ON f.FlightID = p.FlightID;
