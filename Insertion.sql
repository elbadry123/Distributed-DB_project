-- Customer 

INSERT INTO Customer (Customer_Id, Name, ContactInfo, DrivingLicenseNumber)
VALUES 
(1, 'Abdelrahman', 'abdelrahman@example.com', 'DL123456'),
(2, 'Ali', 'ali@example.com', 'DL654321'),
(3, 'Ahmed', 'ahmed@example.com', 'DL789012'),
(4, 'Sara', 'sara@example.com', 'DL345678'),
(5, 'Mona', 'mona@example.com', 'DL567890');


-- Fuel type
INSERT INTO FuelType (Name)
VALUES 
('Petrol'),
('Diesel'),
('Electric'),
('Hybrid');


-- Category
INSERT INTO Category (Name)
VALUES 
('Sedan'),
('SUV'),
('Truck'),
('Hatchback');



-- Vehicles
INSERT INTO Vehicles (Model, Make, year, Mileage, plateNumber, IsAvailableForRent, RentalPricePerDay, FuelTypeId, Category_Id)
VALUES 
('Civic', 'Honda', 2022, 12000, 'ABC123', 1, 50.00, 1, 1),  -- Petrol Sedan
('Fortuner', 'Toyota', 2021, 15000, 'DEF456', 1, 70.00, 2, 2),  -- Diesel SUV
('Model S', 'Tesla', 2023, 5000, 'GHI789', 1, 100.00, 3, 1),  -- Electric Sedan
('Hilux', 'Toyota', 2020, 20000, 'JKL012', 1, 80.00, 2, 3);  -- Diesel Truck


-- Rental Booking
INSERT INTO RentalBooking (Start_date, End_date, PickupLocation, Drop_of_Location, RentalPricePerDay, InitialRentalDays, InitialDueAmount, InitialCheckNotes, CustomerId, VehicleId)
VALUES 
('2024-07-01', '2024-07-05', 'Cairo', 'Alexandria', 50.00, 5, 250.00, 'Good condition', 1, 1),
('2024-07-02', '2024-07-06', 'Giza', 'Hurghada', 70.00, 4, 280.00, 'Minor scratches', 2, 2),
('2024-07-03', '2024-07-07', 'Cairo', 'Aswan', 100.00, 4, 400.00, 'Excellent condition', 3, 3),
('2024-07-04', '2024-07-08', 'Cairo', 'Luxor', 80.00, 4, 320.00, 'Requires cleaning', 4, 4);


-- Manitainence:
INSERT INTO Maintainence (Description, MaintainenceDate, Cost, VehicleId)
VALUES 
('Oil change', '2024-06-01', 50.00, 1),
('Tire replacement', '2024-06-05', 150.00, 2),
('Battery replacement', '2024-06-10', 200.00, 3),
('General inspection', '2024-06-15', 100.00, 4);


-- Vehicles Return :
INSERT INTO VehiclesReturn (ActualReturnDate, Mileage, ActualRentalDays, FinalCheckNotes, ConsumedMileage, AdditionalCharges, ActualTotalDueAmount)
VALUES 
('2024-07-05', 12500, 5, 'No issues', 500, 0.00, 250.00),
('2024-07-06', 15500, 4, 'Minor scratches noted', 500, 20.00, 300.00),
('2024-07-07', 6000, 4, 'Perfect condition', 1000, 0.00, 400.00),
('2024-07-08', 20500, 4, 'Requires cleaning', 500, 30.00, 350.00);


-- Rental Transaction:
INSERT INTO RentalTransactions (InitialPaidAmount, PaymentDetails, ActualTotalDueAmount, RemainingAmount, TransactionDate, UpdatedTransactionDate, TotalRefundedAmount, BookingId, Return_Id)
VALUES 
(250.00, 'Credit Card', 250.00, 0.00, '2024-07-05', '2024-07-05', 0.00, 1, 1),
(280.00, 'Cash', 300.00, 20.00, '2024-07-06', '2024-07-06', 0.00, 2, 2),
(400.00, 'Credit Card', 400.00, 0.00, '2024-07-07', '2024-07-07', 0.00, 3, 3),
(320.00, 'Debit Card', 350.00, 30.00, '2024-07-08', '2024-07-08', 0.00, 4, 4);

insert into Customer values (6, 'Abdelrahma', 'adelrahman@example.com', 'DL12346');

