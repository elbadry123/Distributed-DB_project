DROP DATABASE carRentalSystem;
CREATE DATABASE carRentalSystem;
use CarRentalSystem
drop table Customer
CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Name VARCHAR(50),
    ContactInfo VARCHAR(100),
    DrivingLicenseNumber VARCHAR(100)
);

CREATE TABLE FuelType (
    FuelTypeId INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100)
);

CREATE TABLE Category (
    CategoryId INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100)
);

CREATE TABLE Vehicles (
    Vehicle_Id INT PRIMARY KEY IDENTITY,
    Model VARCHAR(50),
    Make VARCHAR(50),
    Year INT, 
    Mileage INT,
    PlateNumber VARCHAR(20),
    IsAvailableForRent BIT,
    RentalPricePerDay DECIMAL(10, 2),
    FuelTypeId INT FOREIGN KEY REFERENCES FuelType(FuelTypeId),
    Category_Id INT FOREIGN KEY REFERENCES Category(CategoryId)
);

CREATE TABLE RentalBooking (
    Booking_Id INT PRIMARY KEY IDENTITY,
    Start_date DATE,
    End_date DATE,
    PickupLocation VARCHAR(100),
    Drop_of_Location VARCHAR(100),
    RentalPricePerDay DECIMAL(10, 2),
    InitialRentalDays INT,
    InitialDueAmount DECIMAL(10, 2),
    InitialCheckNotes VARCHAR(100),
    CustomerId INT FOREIGN KEY REFERENCES Customer(Customer_Id),
    VehicleId INT FOREIGN KEY REFERENCES Vehicles(Vehicle_Id)
);

CREATE TABLE Maintainence (
    MaintainenceId INT PRIMARY KEY IDENTITY,
    Description VARCHAR(200),
    MaintainenceDate DATE,
    Cost DECIMAL(10, 2),
    VehicleId INT FOREIGN KEY REFERENCES Vehicles(Vehicle_Id)
);

CREATE TABLE VehiclesReturn (
    ReturnId INT PRIMARY KEY IDENTITY,
    ActualReturnDate DATE,
    Mileage SMALLINT,
    ActualRentalDays TINYINT,
    FinalCheckNotes VARCHAR(200),
    ConsumedMileage SMALLINT,
    AdditionalCharges SMALLMONEY,
    ActualTotalDueAmount DECIMAL(10, 2)
);

CREATE TABLE RentalTransactions (
    TransactionId INT PRIMARY KEY IDENTITY,
    InitialPaidAmount SMALLMONEY,
    PaymentDetails VARCHAR(100),
    ActualTotalDueAmount SMALLMONEY,
    RemainingAmount SMALLMONEY,
    TransactionDate DATE,
    UpdatedTransactionDate DATE,
    TotalRefundedAmount SMALLMONEY,
    BookingId INT FOREIGN KEY REFERENCES RentalBooking(Booking_Id),
    Return_Id INT FOREIGN KEY REFERENCES VehiclesReturn(ReturnId)
);