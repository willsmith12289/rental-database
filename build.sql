USE rent;
/*
*
*Property table
*
*/
INSERT INTO property(PropertyID, Address, City, State, PostalCode, SquareFeet, Bedrooms, Bathrooms,
	Garage, MonthlyMortgage, HousingDues, Tax, Insurance, DownPayment, LoanAmount, AssessedValue, CurrentValue, Notes)	 VALUES
(1, '125 Main street', 'Somerville', 'NJ', '08876', 1000, 2, 2, 0,
950.89, 150.00, 1000.00, 60.00, 20000.00, 250000.00, 275000.00, 265000.00, 'null'),
(2, '3720 Able Road', 'Raritan', 'NJ', '08869', 2000, 3, 2, 1, 1002.35, 0,
750.00, 100, 15000.00, 150000.00, 189500.00, 195000.00, 'Multi family home'),
(3, '36 Sky View Lane', 'Bridgewater', 'NJ', '08807', 250, 1, 1, 0,
550.37, 150.00, 250.00, 45.00, 10000.00, 100000.00, 110000.00, 105000.00, 'Studio Apt');

SELECT * FROM property;

/*
*
*tenant table
*
*/
INSERT INTO tenant(TenantID, LastName, FirstName, `E-mailAddress`, HomePhone, MobilePhone, BusinessPhone,
FaxNumber, Address, City, State, PostalCode, Country, Company, JobTitle, Notes) VALUES
(1, 'Grimes', 'Rick', 'Rick.grimes@dead.com', '212-333-4444', '215-444-3333', '', '', '1028 North West St.',
 'Atlanta', 'GA', '30301', 'USA', '', 'Group Leader', 'Has a baby girl and a son'),
(2, 'White', 'Walter', 'heisenberg@blueice.com', '505-888-9310', '505-374-9756', '505-374-9756', '', '3220 Desert Way',
'Albuquerque', 'NM', '87101', 'USA', 'Blue Ice, Inc', 'Chemist', ''),
(3, 'Givens', 'Raylan', 'Rgiven@doj.gov', '859-338-9043', '859-622-1000', '859-622-2000', '', '521 Lancaster Ave',
'Richmond', 'KY', '40475', 'USA', 'DOJ', 'Federal Marshall', '');

SELECT * FROM tenant;

/*
*
*lease table
*
*/
INSERT INTO lease(LeaseID, PropertyID, TenantID, StartDate, EndDate, MonthlyLeaseAmount,
SecurityDeposit, PetDeposit, Notes) VALUES
(1, 2, 1, '2015-02-01 00:00:00', '2016-01-31 00:00:00', 3500.00, 5200.00, 0, ''),
(2, 3, 3, '2015-03-01 00:00:00', '2016-02-27 00:00:00',  1200, 1800, 0, 'Single man');

SELECT * FROM lease;