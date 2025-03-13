CREATE DATABASE myHotel
GO

USE myHotel
GO

CREATE TABLE rooms (
	roomId INT IDENTITY(1,1) PRIMARY KEY, 
	roomNo VARCHAR(50) NOT NULL UNIQUE,
	roomType VARCHAR(250) NOT NULL,
	bed VARCHAR(250) NOT NULL,
	price BIGINT NOT NULL,
	booked VARCHAR(50) DEFAULT 'NO'
);

INSERT INTO rooms (roomNo, roomType, bed, price, booked) 
VALUES ('101', 'Ac', 'Single', 5000, 'NO');

INSERT INTO rooms (roomNo, roomType, bed, price, booked) 
VALUES ('102', 'Ac', 'Double', 8500, 'NO');

select * from rooms

select * from rooms where price between 3500 and 10000

select roomType, sum(price) from rooms group by roomType