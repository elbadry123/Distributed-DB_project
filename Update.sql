-- Update
-- vehicles
update Vehicles
set year = 2023
where Vehicle_Id = 1
-- check:
select *
from Vehicles
-- Rental Booking
update RentalBooking
set Drop_of_Location = 'Cairo'
where Booking_Id = 1 or Booking_Id = 2

-- Check:
select *
from RentalBooking

-- Manitainence:
update Maintainence
set Cost = 650
where Description = 'Battery replacement'

-- Check:
select *
from Maintainence

