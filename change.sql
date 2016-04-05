USE rent;

UPDATE property
SET Notes="Condo"
WHERE PropertyID=1;

SELECT * FROM property
WHERE PropertyID=1;

UPDATE tenant
SET BusinessPhone="505-888-9310", FaxNumber="505-888-9999"
WHERE TenantID=2;

SELECT * FROM tenant
WHERE TenantID=2;

UPDATE lease
SET PetDeposit=500, Notes="golden retriever"
WHERE LeaseID=1;

SELECT * FROM lease
WHERE LeaseID=1;