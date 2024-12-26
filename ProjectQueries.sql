create Database CarRentalSystem

use CarRentalSystem

create table Customer
(
	Customer_Id int primary key,
	Name varchar(50),
	ContactInfo varchar(100),
	DrivingLicenseNumber varchar(100)
)

create Table RentalBooking
(
	Booking_Id int primary key identity ,
	Start_date date,
	End_date date,
	PickupLocation varchar(100),
	Drop_of_Location varchar(100),
	RentalPricePerDay decimal,
	InitialRentalDays int,
	InitialDueAmount decimal,
	InitialCheckNotes varchar(100),
	CustomerId int foreign key references Customer(Customer_Id),
	VehicleId int foreign key references Vehicles(Vehicle_Id)

	
)

Create Table FuelType
(
	FuelTypeId int primary key identity,
	Name varchar(100)
)
Create Table Category
(
	CategoryId int primary key identity,
	Name varchar(100)
)

create Table Vehicles
(
	Vehicle_Id int primary key identity,
	Model varchar(50),
	Make varchar(50),
	year int , 
	Mileage int ,
	plateNumber varchar(20),
	IsAvailableForRent bit,
	RentalPricePerDay decimal,
	FuelTypeId int foreign key references FuelType(FuelTypeId),
	Category_Id int foreign key references Category(CategoryId)
)

Create Table Maintainence
(
	MaintainenceId int primary key identity,
	Description varchar(200),
	MaintainenceDate date,
	Cost decimal ,
	VehicleId int foreign key references Vehicles(Vehicle_Id)
)



 

create Table VehiclesReturn
(
	ReturnId int primary key identity,
	ActualReturnDate date,
	Mileage smallint,
	ActualRentalDays tinyint,
	FinalCheckNotes varchar(200),
	ConsumedMileage smallint ,
	AdditionalCharges smallmoney,
	ActualTotalDueAmount decimal

)

Create Table RentalTransactions
(
	TransactionId int primary key identity,
	InitialPaidAmount smallmoney,
	PaymentDetails varchar(100),
	ActualTotalDueAmount smallmoney,
	RemainingAmount smallmoney ,
	TransactionDate date,
	UpdatedTransactionDate date,
	TotalRefundedAmount smallmoney,
	BookingId int foreign key references RentalBooking(Booking_Id),
	Return_Id int foreign key references VehiclesReturn(ReturnId)

)