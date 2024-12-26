-- Join

-- booking for vehicles
select v.PlateNumber , v.Mileage  , v.Make , rb.PickupLocation , rb.Drop_of_Location , rb.InitialCheckNotes
from Vehicles  v
inner join RentalBooking rb
on v.Vehicle_Id = rb.VehicleId

--Retrieve the list of rental bookings with customer names
SELECT 
    RB.Booking_Id, 
    C.Name AS CustomerName, 
    RB.Start_date, 
    RB.End_date
FROM RentalBooking RB
INNER JOIN 
    Customer C ON RB.CustomerId = C.Customer_Id;


-- Retrieve vehicles with their fuel type names
SELECT 
    V.Vehicle_Id, 
    V.Model, 
    V.Make, 
    FT.Name AS FuelType
FROM 
    Vehicles V
INNER JOIN 
    FuelType FT ON V.FuelTypeId = FT.FuelTypeId;



-- Retrieve all rental bookings and their return details (if available) (Left Join)
SELECT 
    RB.Booking_Id, 
    RB.Start_date, 
    RB.End_date, 
    VR.ActualReturnDate, 
    VR.ConsumedMileage
FROM 
    RentalBooking RB
LEFT JOIN 
    VehiclesReturn VR ON RB.Booking_Id = VR.ReturnId;

--Retrieve all return details and their corresponding transactions (if available)
SELECT 
    VR.ReturnId, 
    VR.ActualReturnDate, 
    RT.TransactionId, 
    RT.ActualTotalDueAmount
FROM 
    RentalTransactions RT
RIGHT JOIN 
    VehiclesReturn VR ON RT.Return_Id = VR.ReturnId;


--Retrieve all vehicles and their maintenance records, 
--ensuring all vehicles and all maintenance records are displayed
SELECT 
    V.Vehicle_Id, 
    V.Model, 
    M.MaintainenceId, 
    M.Description AS MaintenanceDescription, 
    M.MaintainenceDate
FROM 
    Vehicles V
FULL OUTER JOIN 
    Maintainence M ON V.Vehicle_Id = M.VehicleId;

-- self join
-- Retrieve pairs of customers with different IDs
SELECT 
    C1.Customer_Id AS Customer1_ID, 
    C1.Name AS Customer1_Name, 
    C2.Customer_Id AS Customer2_ID, 
    C2.Name AS Customer2_Name
FROM 
    Customer C1
Left JOIN 
    Customer C2 ON C1.Customer_Id <> C2.Customer_Id;


select *
from Customer

SELECT * 
FROM Customer
WHERE Customer_Id = 6;