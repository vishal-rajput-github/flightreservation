<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Flights</title>
</head>
<body>
	<h2>Flight Search Results</h2>

<table border="1">
<tr>
	<th>Arrival City</th>
	<th>Departure City</th>
	<th>estimated Departure Time</th>
	<th>Operating Airlines</th>	
	<th>Select Flight</th>
</tr>
<c:forEach items="${flights}" var="flights">
	
		<tr>
			<td>${flights.arrivalCity}</td>
			<td>${flights.departureCity}</td>
			<td>${flights.estimatedDeparturetime}</td>
			<td>${flights.operatingAirlines}</td>
			<td><a href="CompleteReservation?flightId=${flights.getId()}">Select</a></td>
		</tr>

</c:forEach>
</table>
</body>
</html>