USE rent;

DELETE FROM property
WHERE PropertyID=1;

SELECT * FROM property
WHERE PropertyID=1;

DELETE FROM tenant
WHERE TenantID=2;

SELECT * FROM tenant
WHERE TenantID=2;

DELETE FROM lease
WHERE LeaseID=2;

SELECT * FROM lease
WHERE LeaseID=2;