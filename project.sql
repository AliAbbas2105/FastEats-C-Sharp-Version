CREATE DATABASE fasteats2;

USE  fasteats;
-- Create User table
CREATE TABLE [User] (
    Username NVARCHAR(50) PRIMARY KEY,
    Email NVARCHAR(100),
    Password NVARCHAR(50)
);

-- Create Reservation table
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY IDENTITY,
    Username NVARCHAR(50) FOREIGN KEY REFERENCES [User](Username),
    ReservationDate DATE,
    ReservationTime TIME,
    NumberOfPersons INT
);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) FOREIGN KEY REFERENCES [User](Username),
    Rating INT,
    FoodQualityRating INT,
    DeliveryTimeRating INT,
    CustomerServiceRating INT,
    FeedbackText TEXT
);

CREATE TABLE Menu (
    ItemID INT PRIMARY KEY IDENTITY(1,1),
    ItemName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE CartItem (
    CartItemID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) FOREIGN KEY REFERENCES [User](Username),
    ItemID INT,
    Quantity INT,
    FOREIGN KEY (ItemID) REFERENCES Menu(ItemID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) FOREIGN KEY REFERENCES [User](Username),
    OrderDateTime DATETIME NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    OrderStatus VARCHAR(20) DEFAULT 'Pending' NOT NULL
);

CREATE TABLE OrderItem (
    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ItemID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ItemID) REFERENCES Menu(ItemID)
);

-- Stored procedure for user login
CREATE PROCEDURE ValidateUser
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT COUNT(*) FROM [User] WHERE Username = @Username AND Password = @Password;
END;

-- Stored procedure for checking existing username during signup
CREATE PROCEDURE CheckUsernameExists
    @Username NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT COUNT(*) FROM [User] WHERE Username = @Username;
END;

SELECT * FROM [User];
SELECT * FROM Reservation;
