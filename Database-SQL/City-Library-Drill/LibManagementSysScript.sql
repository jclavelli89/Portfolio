IF EXISTS (SELECT * FROM sys.sysdatabases	
		WHERE [name] = 'libManagementSys')
DROP DATABASE libManagementSys
GO

CREATE DATABASE libManagementSys
GO

USE libManagementSys
GO

CREATE TABLE Book
(
BookID int Primary Key,
Title varchar(50),
PublisherName varchar(50)
)
GO

CREATE TABLE BOOK_AUTHORS
(
Bookid int Foreign Key REFERENCES Book(BookId),
AuthorName varchar(50)
)
GO

CREATE TABLE Publisher
(
Name varchar(50),
Address varchar(50),
Phone varchar(50)
)
GO

CREATE TABLE Library_Branch
(
BranchID int Primary Key,
BranchName varchar(30),
[Address] varchar(50)
)
GO

CREATE TABLE Book_Copies
(
Bookid int Foreign Key REFERENCES Book(BookID),
BranchID int Foreign Key REFERENCES Library_Branch(BranchId),
No_Of_Copies int
)
GO

CREATE TABLE Borrower
(
Cardno int Primary Key,
Name varchar(30),
Address varchar(50),
Phone varchar(20)
)
GO

CREATE TABLE Book_Loans
(
BookID int Foreign Key REFERENCES BOOK(BookID),
BranchID int Foreign Key REFERENCES Library_Branch(BranchID),
CardNo int Foreign Key REFERENCES Borrower(CardNo),
Dateout DATE,
DueDate DATE
)
GO

INSERT INTO Book
VALUES (0001, 'On Writing: A Memoir of the Craft', 'Scribner'),
	(0002, 'The Magicians', 'Plume'),
	(0003, 'Truth in Comedy', 'Meriwether Pub'),
	(0004, 'The Lost Tribe', 'Kindle Press'),
	(0005, 'Brothers in Battle', 'Penguin Group'),
	(0006, 'The Eye of the World', 'Tor Books'),
	(0007, 'American Gods', 'William Morrow'),
	(0008, 'Ready Player One', 'Broadway Books'),
	(0009, 'A Peoples History of the United States', 'History Press'),
	(0010, 'The Misenchanted Sword', 'Wildside Press'), 
	(0011, 'Eaters of The Dead', 'Vitnage'),
	(0012, 'Farenheit 451', 'Simon & Schuster'),
	(0013, 'Homage to Catalonia', 'Mariner Books'),
	(0014, 'The Hobbit', 'Houghton Mifflin'),
	(0015, 'Streams of Silver', 'Wizards of the Coast'),
	(0016, 'The Things They Carried', 'Houghton Mifflin'),
	(0017, 'Kitchen Confidential', 'Bloomsbury USA'),
	(0018, 'Of Mice and Men', 'Penguin Books'),
	(0019, 'Travels with Charley', 'Penguin Books'),
	(0020, 'The Green Rider', 'DAW')
GO

INSERT INTO Library_Branch 
VALUES (01, 'Sharpstown', '123 Sharp Lane'),
	(02, 'Central', '321 Middle Rd'),
	(03, 'Windam', '45 Breezy Terrace'),
	(04, 'Paul Simon', '16 Graceland Pike')
GO	

INSERT INTO Book_Authors
VALUES (0001, 'Stephen King'),
	(0002, 'Lev Grossman'),
	(0003, 'Del Close'),
	(0004, 'Matthew Caldwell'),
	(0005, 'William Guarnere'),
	(0006, 'Robert Jordan'),
	(0007, 'Neil Gaiman'),
	(0008, 'Ernest Cline'),
	(0009, 'Robert Zinn'),
	(0010, 'Lawrence Watt-Evans'), 
	(0011, 'Michael Crichton'),
	(0012, 'Ray Bradbury'),
	(0013, 'George Orwell'),
	(0014, 'J.R.R. Tokien'),
	(0015, 'R.A. Salvatore'),
	(0016, 'Tim O''brien'),
	(0017, 'Anthony Bourdain'),
	(0018, 'John Steinbeck'),
	(0019, 'John Steinbeck'),
	(0020, 'Kate Britain')
	
INSERT INTO Book_Copies
VALUES (0001, 01, 2),
	(0001, 02, 2),
	(0001, 03, 2),
	(0001, 04, 2),
	(0002, 01, 2),
	(0002, 02, 2),
	(0002, 03, 2),
	(0002, 04, 2),
	(0003, 01, 2),
	(0003, 02, 2),
	(0003, 03, 2),
	(0003, 04, 2),
	(0004, 01, 2),
	(0004, 02, 2),
	(0004, 03, 2),
	(0004, 04, 2),
	(0005, 01, 2),
	(0005, 02, 2),
	(0005, 03, 2),
	(0005, 04, 2),
	(0006, 01, 2),
	(0006, 02, 2),
	(0006, 03, 2),
	(0006, 04, 2),
	(0007, 01, 2),
	(0007, 02, 2),
	(0007, 03, 2),
	(0007, 04, 2),
	(0008, 01, 2),
	(0008, 02, 2),
	(0008, 03, 2),
	(0008, 04, 2),
	(0009, 01, 2),
	(0009, 02, 2),
	(0009, 03, 2),
	(0009, 04, 2),
	(0010, 01, 2),
	(0010, 02, 2),
	(0010, 03, 2),
	(0010, 04, 2),
	(0011, 01, 2),
	(0011, 02, 2),
	(0011, 03, 2),
	(0011, 04, 2),
	(0012, 01, 2),
	(0012, 02, 2),
	(0012, 03, 2),
	(0012, 04, 2),
	(0013, 01, 2),
	(0013, 02, 2),
	(0013, 03, 2),
	(0013, 04, 2),
	(0014, 01, 2),
	(0014, 02, 2),
	(0014, 03, 2),
	(0014, 04, 2),
	(0015, 01, 2),
	(0015, 02, 2),
	(0015, 03, 2),
	(0015, 04, 2),
	(0016, 01, 2),
	(0016, 02, 2),
	(0016, 03, 2),
	(0016, 04, 2),
	(0017, 01, 2),
	(0017, 02, 2),
	(0017, 03, 2),
	(0017, 04, 2),
	(0018, 01, 2),
	(0018, 02, 2),
	(0018, 03, 2),
	(0018, 04, 2),
	(0019, 01, 2),
	(0019, 02, 2),
	(0019, 03, 2),
	(0019, 04, 2),
	(0020, 01, 2),
	(0020, 02, 2),
	(0020, 03, 2),
	(0020, 04, 2)
GO

INSERT INTO Borrower
VALUES (1000, 'Jacob Al', '13 Lucky St', '999-999-9999'),
	(2000, 'Chris Left', '15 Right Way', '888-888-8888'),
	(3000, 'Mary Forth', '5 Phase Lane', '777-777-7777'),
	(4000, 'Steph Suarez', '98 Island Blvd', '666-666-6666'),
	(5000, 'Bill Murray', '11 Comic Pl', '555-555-5555'),
	(6000, 'Beth Cat', '54 Serenity Rd', '444-444-4444'),
	(7000, 'Bob Wrench', '7 Tool Terrace', '333-333-3333'),
	(8000, 'Hal Plus', '42 Math Corner', '222-222-2222')
GO

INSERT INTO Book_Loans
VALUES (0001, 01, 1000, '2016-01-01', '2016-02-01'),
	(0002, 01, 1000, '2016-01-01', '2016-02-01'),
	(0003, 01, 1000, '2016-01-01', '2016-02-01'),
	(0004, 01, 1000, '2016-01-01', '2016-02-01'),
	(0005, 01, 1000, '2016-01-01', '2016-02-01'),
	(0020, 01, 1000, '2016-01-01', '2016-02-01'),
	(0006, 02, 2000, '2016-01-01', '2016-02-01'),
	(0007, 02, 2000, '2016-01-01', '2016-02-01'),
	(0008, 02, 2000, '2016-01-01', '2016-02-01'),
	(0009, 02, 2000, '2016-01-01', '2016-02-01'),
	(0010, 02, 2000, '2016-01-01', '2016-02-01'),
	(0011, 02, 2000, '2016-01-01', '2016-02-01'),
	(0012, 03, 3000, '2016-01-01', '2016-02-01'),
	(0013, 03, 4000, '2016-01-01', '2016-02-01'),
	(0014, 03, 5000, '2016-01-01', '2016-02-01'),
	(0015, 03, 6000, '2016-01-01', '2016-02-01'),
	(0016, 04, 7000, '2016-01-01', '2016-02-01'),
	(0017, 04, 8000, '2016-01-01', '2016-02-01'),
	(0018, 04, 8000, '2016-01-01', '2016-02-01'),
	(0019, 03, 6000, '2016-01-01', '2016-02-01'),
	(0001, 01, 6000, '2016-01-01', '2016-02-01'),
	(0002, 01, 6000, '2016-01-01', '2016-02-01'),
	(0003, 01, 6000, '2016-01-01', '2016-02-01'),
	(0004, 01, 6000, '2016-01-01', '2016-02-01'),
	(0005, 01, 6000, '2016-01-01', '2016-02-01'),
	(0006, 01, 6000, '2016-01-01', '2016-02-01'),
	(0007, 01, 6000, '2016-01-01', '2016-02-01'),
	(0008, 01, 6000, '2016-01-01', '2016-02-01'),
	(0009, 01, 6000, '2016-01-01', '2016-02-01'),
	(0010, 01, 6000, '2016-01-01', '2016-02-01'),
	(0011, 02, 7000, '2016-01-01', '2016-02-01'),
	(0013, 02, 7000, '2016-01-01', '2016-02-01'),
	(0014, 02, 7000, '2016-01-01', '2016-02-01'),
	(0015, 02, 7000, '2016-01-01', '2016-02-01'),
	(0016, 02, 7000, '2016-01-01', '2016-02-01'),
	(0017, 02, 7000, '2016-01-01', '2016-02-01'),
	(0018, 02, 7000, '2016-01-01', '2016-02-01'),
	(0019, 02, 7000, '2016-01-01', '2016-02-01'),
	(0020, 02, 7000, '2016-01-01', '2016-02-01'),
	(0001, 03, 5000, '2016-01-01', '2016-02-01'),
	(0002, 03, 5000, '2016-01-01', '2016-02-01'),
	(0003, 03, 5000, '2016-01-01', '2016-02-01'),
	(0004, 03, 5000, '2016-01-01', '2016-02-01'),
	(0005, 03, 5000, '2016-01-01', '2016-02-01'),
	(0006, 03, 5000, '2016-01-01', '2016-02-01'),
	(0007, 03, 5000, '2016-01-01', '2016-02-01'),
	(0008, 03, 5000, '2016-01-01', '2016-02-01'),
	(0009, 03, 5000, '2016-01-01', '2016-02-01'),
	(0010, 03, 5000, '2016-01-01', '2016-02-01'),
	(0011, 03, 5000, '2016-01-01', '2016-02-01')
GO
	