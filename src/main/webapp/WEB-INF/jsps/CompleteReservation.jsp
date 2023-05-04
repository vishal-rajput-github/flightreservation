<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation</title>
</head>
<body>
	<h2>Flight Details</h2>
		Flight Number: ${flights.flightNumber} <br/>
		Operating Airlines: ${flights.operatingAirlines} <br/>
		Departure City: ${flights.departureCity} <br/>
		Arrival City: ${flights.arrivalCity} <br/>
		Date Of Departure: ${flights.dateOfDeparture} <br/>
		Estimated DepartureTime: ${flights.estimatedDepartureTime} <br/>
		
<form action="" method="post"> 
	<h2> Enter Passenger Details</h2>
		first Name<input type="text" name="firstName"/>
		last Name<input type="text" name="lastName"/>
		middle Name<input type="text" name="middleName"/>
		email<input type="text" name="email"/>
		phone<input type="text" name="phone"/>
		<input type="hidden" name="id" value="${flight.id}"/>
		<input type="submit" value="complete"/>
		
	</form>
</body>
</html>

