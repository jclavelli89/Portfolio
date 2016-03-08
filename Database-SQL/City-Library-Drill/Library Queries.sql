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
Where Duedate = '2016-01-10' 
AND BranchName = 'Sharpstown'

--5. For each library branch, retrieve the branch name and the total number of books loaned out from
--that branch.

SELECT
LB.BranchID,
LB.BranchName,
BL.Dateout,
BL.DueDate
FROM Library_Branch as LB INNER JOIN Book_Loans AS BL
ON LB.BranchID = BL.BranchID
WHERE DueDate >= '2016-01-11'
ORDER BY BranchID

-- (Change data type for dates to DATE)

--This is kind of Ghetto, so call and ask for assitance on this one. 

--6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
--than five books checked out.SELECTBR.Name, BR.[Address],COUNT(*) AS BooksOut FROM Borrower AS BR INNER JOIN Book_Loans AS BLON BR.Cardno = BL.CardnoGROUP BY BR.Cardno, BR.Name, BR.[Address]HAVING COUNT(*) > 5--7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
--copies owned by the library branch whose name is "Central"
SELECT 
Bk.Title,
BC.No_of_copies,
LB.BranchName,
BA.AuthorName
FROM Book AS BK INNER JOIN Book_copies AS BC
ON Bk.Bookid = BC.Bookid
INNER JOIN Book_Authors AS BA
ON BC.BookID = BA.BookId
INNER JOIN Library_Branch AS LB 
ON BC.Branchid = LB.Branchid
WHERE BranchName = 'Central'
AND AuthorName = 'Stephen King'



 




