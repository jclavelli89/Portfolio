--Now Create SQL queriest that will answer the following questions:

--1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
--is "Sharpstown"?

SELECT 
Bk.Title,
LB.BranchName,
BC.No_of_Copies
FROM
Book as BK INNER JOIN Book_Copies as BC
ON Bk.BookID = BC.BookID
INNER JOIN Library_branch as LB
ON BC.BranchID = Lb.branchid
WHERE Title = 'The Lost Tribe' and Branchname = 'Sharpstown'

--2. How many copies of the book titled The Lost Tribe are owned by each library branch?

SELECT 
Bk.Title,
LB.BranchName,
BC.No_of_Copies
FROM
Book as BK INNER JOIN Book_Copies as BC
ON Bk.BookID = BC.BookID
INNER JOIN Library_branch as LB
ON BC.BranchID = Lb.branchid
WHERE Title = 'The Lost Tribe' 

--3. Retrieve the names of all borrowers who do not have any books checked out.

Select 
B.CardNo,
B.Name,
BL.DateOut
from borrower as B INNER JOIN book_loans as BL
ON B.cardno = bl.cardno
WHERE Dateout = NULL

--4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve
--the book title, the borrower's name, and the borrower's address

SELECT 
Bk.Title,
B.Name,
B.Address,
LB.BranchName
from Borrower as B INNER JOIN Book_Loans as BL 
ON B.Cardno = BL.CardNo 
INNER JOIN Library_Branch as LB
ON BL.BranchID = LB.BranchId
INNER JOIN Book as Bk
ON BL.BookID = BK.BookID
Where Duedate = 'Jan 7, 2016' 
AND BranchName = 'Sharpstown'

--5. For each library branch, retrieve the branch name and the total number of books loaned out from
--that branch.

SELECT * FROM Library_Branch
SELECT * FROM Book_Loans

--6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
--than five books checked out.SELECT * FROM Book_CopiesSELECT * FROM BorrowerSELECT * FROM Book_loans--7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
--copies owned by the library branch whose name is "Central"SELECT * FROM BOOKSelect * FROM Book_Authors
SELECT * FROM Library_Branch

SELECT * FROM Book_copies
WHERE Bookid = 2
OR Bookid = 11
AND Branchid = 2

Select 
Bk.Title,

 
 




