drop database if exists rent;
create database rent;
use rent;
/*
*
*tenant table
*
*/
create table tenant (
	TenantID		INT(11)		primary key
								auto_increment,
	LastName		VARCHAR(50)	NOT NULL,
	FirstName		VARCHAR(50)	NOT NULL,
	`E-mailAddress`	VARCHAR(50)	NOT NULL,
	HomePhone		VARCHAR(25)	NOT NULL,
	MobilePhone 	VARCHAR(25)	NOT NULL,
	BusinessPhone 	VARCHAR(25),
	FaxNumber 		VARCHAR(25),
	Address			VARCHAR(255)NOT NULL,
	City			VARCHAR(50)	NOT NULL,
	State			VARCHAR(50)	NOT NULL,
	PostalCode		VARCHAR(15)	NOT NULL,
	Country			VARCHAR(50)	NOT NULL,
	Company			VARCHAR(50) DEFAULT NULL,
	JobTitle		VARCHAR(50)	NOT NULL,
	Notes			LONGTEXT,
    INDEX	IX_City(City),
    INDEX	IX_FirstName(FirstName),
    INDEX	IX_LastName(LastName),
    INDEX	IX_PostalCode(PostalCode)
);
/*
*
*property table
*
*/
CREATE TABLE property (
	PropertyID		INT(11)			primary key
									auto_increment,
	Address 		VARCHAR(255)	NOT NULL,
	City			VARCHAR(50)		NOT NULL,
	State			VARCHAR(50)		NOT NULL,
	PostalCode		VARCHAR(15)		NOT NULL,
	SquareFeet		FLOAT(9,2)		NOT NULL,
	Bedrooms		SMALLINT(6)		NOT NULL,
	Bathrooms		FLOAT(5,2)		NOT NULL,
	Garage			TINYINT(1)		NOT NULL,
	MonthlyMortgage	DECIMAL(10,2)	NOT NULL,
	HousingDues		DECIMAL(10,2)	NOT NULL,
	Tax				DECIMAL(10,2)	NOT NULL,
	Insurance		DECIMAL(10,2)	NOT NULL,
	DownPayment		DECIMAL(10,2)	NOT NULL,
	LoanAmount		DECIMAL(10,2)	NOT NULL,
	AssessedValue	DECIMAL(10,2)	NOT NULL,
	CurrentValue	DECIMAL(10,2),
	Notes			LONGTEXT,
    INDEX	IX_PostalCode(PostalCode)
);
/*
*
*lease table
*
*/
CREATE TABLE lease (
	LeaseID				INT(11)			primary key
										auto_increment,
	PropertyID			INT(11)			NOT NULL,
	TenantID			INT(11)			NOT NULL,
	StartDate			DATETIME 		NOT NULL,
	EndDate				DATETIME		NOT NULL,
	MonthlyLeaseAmount	DECIMAL(10,2)	NOT NULL,
	SecurityDeposit		DECIMAL(10,2)	NOT NULL,
	PetDeposit			DECIMAL(10,2)	NOT NULL,
	Notes				LONGTEXT,
    FOREIGN KEY (PropertyID) REFERENCES property(PropertyID),
    FOREIGN KEY (TenantID) REFERENCES tenant(TenantID),
	INDEX	IX_PropertyID(PropertyID),
    INDEX	IX_TenantID(TenantID)
);
