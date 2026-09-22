USE studentsbiodatadb;

CREATE TABLE Students_Data
(SN int Primary Key,
First_Name varchar(30),
Last_Name varchar(30),
Gender varchar(10),
Age int,
Student_Level int,
email varchar(50),
Phone_Number varchar(20)
);

Create table department
(SN int,
Department varchar(50),
HOD varchar(100),
Courses varchar(100),
Faculty varchar(30),
 FOREIGN KEY (SN) REFERENCES Students_Data(SN)
);  

create table Courses
(SN int,
Course varchar(50),
Course_Code varchar(10),
 FOREIGN KEY (SN) REFERENCES Students_Data(SN)
);

create table attendance
(SN int,
Date_Attended varchar(20),
Status Varchar(10),
 FOREIGN KEY (SN) REFERENCES Students_Data(SN)
);

INSERT INTO students_data 
VALUES
(1, 'John', 'Adeyemi', 'Male', 19, 200, 'john@gmail.com', '08019934678'),
(2, 'Mary', 'Okafor', 'Female', 20, 300, 'mary@gmail.com', '08023456789'),
(3, 'David', 'Olawale', 'Male', 18, 100, 'david@gmail.com', '09067845678'),
(4, 'Sarah', 'Ibrahim', 'Female', 21,  400, 'sarah@gmail.com', '07012345678'),
(5, 'Daniel', 'Adebayo', 'Male', 18, 200, 'daniel@gmail.com', '09123456789'),
(6, 'Michael', 'Ojo', 'Male', 20, 300, 'michael@gmail.com', '08023456789'),
(7, 'Grace', 'Williams', 'Female', 19, 200, 'grace@gmail.com', '08134567890'),
(8, 'Samuel', 'Johnson', 'Male', 22, 400, 'samuel@gmail.com', '09023456789'),
(9, 'Esther', 'Adekunle', 'Female', 18, 100, 'esther@gmail.com', '07034567890'),
(10, 'Emmanuel', 'Ogunleye', 'Male', 21, 300, 'emmanuel@gmail.com', '09145678901'),
(11, 'Peter', 'Williams', 'Male', 20, 200, 'peter@gmail.com', '08045678901'),
(12, 'Blessing', 'Eze', 'Female', 19, 100, 'blessing@gmail.com', '08156789012'),
(13, 'Joshua', 'Bello', 'Male', 21, 300, 'joshua@gmail.com', '09056789012'),
(14, 'Victoria', 'Akinyemi', 'Female', 20, 400, 'victoria@gmail.com', '07045678901'),
(15, 'Joseph', 'Okoro', 'Male', 18, 200, 'joseph@gmail.com', '09156789012'),
(16, 'Deborah', 'Musa', 'Female', 22, 100, 'deborah@gmail.com', '08067890123'),
(17, 'Andrew', 'Adeola', 'Male', 19, 300, 'andrew@gmail.com', '08167890123'),
(18, 'Elizabeth', 'Oni', 'Female', 21, 200, 'elizabeth@gmail.com', '09067890123'),
(19, 'Christopher', 'Ike', 'Male', 20, 400, 'christopher@gmail.com', '07056789012'),
(20, 'Jennifer', 'Lawal', 'Female', 18, 100, 'jennifer@gmail.com', '09167890123'),
(21, 'Anthony', 'Afolabi', 'Male', 22, 300, 'anthony@gmail.com', '08078901234'),
(22, 'Peace', 'Chukwu', 'Female', 20, 200, 'peace@gmail.com', '08178901234'),
(23, 'Stephen', 'Balogun', 'Male', 19, 400, 'stephen@gmail.com', '09078901234'),
(24, 'Hannah', 'Yusuf', 'Female', 21, 100, 'hannah@gmail.com', '07067890123'),
(25, 'Frank', 'Oladipo', 'Male', 18, 300, 'frank@gmail.com', '09178901234'),
(26, 'Ruth', 'Emeka', 'Female', 20, 200, 'ruth@gmail.com', '08089012345'),
(27, 'Isaac', 'Adesina', 'Male', 21, 100, 'isaac@gmail.com', '08189012345'),
(28, 'Naomi', 'Okeke', 'Female', 19, 400, 'naomi@gmail.com', '09089012345'),
(29, 'Daniel', 'Fashola', 'Male', 22, 300, 'daniel2@gmail.com', '07078901234'),
(30, 'Mercy', 'Nwosu', 'Female', 18, 200, 'mercy@gmail.com', '09189012345'),
(31, 'Benjamin', 'Ajayi', 'Male', 20, 100, 'benjamin@gmail.com', '08090123456'),
(32, 'Comfort', 'Ojo', 'Female', 21, 300, 'comfort@gmail.com', '08190123456'),
(33, 'Richard', 'Adebisi', 'Male', 19, 400, 'richard@gmail.com', '09090123456'),
(34, 'Faith', 'Abdullahi', 'Female', 20, 200, 'faith@gmail.com', '07089012345'),
(35, 'Gabriel', 'Oyekan', 'Male', 18, 100, 'gabriel@gmail.com', '09190123456'),
(36, 'Joy', 'Nwachukwu', 'Female', 22, 300, 'joy@gmail.com', '08001234567'),
(37, 'Henry', 'Ogunyemi', 'Male', 21, 200, 'henry@gmail.com', '08101234567'),
(38, 'Amanda', 'Ibrahim', 'Female', 19, 400, 'amanda@gmail.com', '09001234567'),
(39, 'Nathan', 'Olowu', 'Male', 20, 100, 'nathan@gmail.com', '07090123456'),
(40, 'Stella', 'Eze', 'Female', 18, 300, 'stella@gmail.com', '09101234567'),
(41, 'Feranmi', 'Shodunke', 'Male', 18, 200, 'feranmi@gmail.com', '08088039496');



INSERT INTO department
VALUES
(1, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(2, 'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(3, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(4, 'Physics', 'Prof John Okafor', 'Physics, GeoPhysics, Quantum Mechanics, Nuclear Physics', 'Science'),
(5, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(6, 'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(7, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(8, 'Physics', 'Prof John Okafor', 'Physics, GeoPhysics, Quantum Mechanics, Nuclear Physics', 'Science'),
(9, 'Mathematics', 'Dr Sekinat Olusanya', 'Mathematics, Industrial Math', 'Science'),
(10,  'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(11, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(12, 'Mathematics', 'Dr Sekinat Olusanya', 'Mathematics, Industrial Math', 'Science'),
(13, 'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(14, 'Physics', 'Prof John Okafor', 'Physics, GeoPhysics, Quantum Mechanics, Nuclear Physics', 'Science'),
(15, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(16, 'Statistics', 'Prof Olawale Adegoke', 'Statistics', 'Science'),
(17, 'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(18, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts'),
(19, 'Physics', 'Prof John Okafor', 'Physics, GeoPhysics, Quantum Mechanics, Nuclear Physics', 'Science'),
(20, 'Mathematics', 'Dr Sekinat Olusanya', 'Mathematics, Industrial Math', 'Science'),
(21, 'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(22, 'Linguestics', 'Prof Ayodeji Obafemi', 'English, Yoruba, French', 'Arts'),
(23,  'Linguestics', 'Prof Ayodeji Obafemi', 'English, Yoruba, French', 'Arts'),
(24, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts'),
(25, 'Linguestics', 'Prof Ayodeji Obafemi', 'English, Yoruba, French', 'Arts'),
(26, 'Linguestics', 'Prof Ayodeji Obafemi', 'English, Yoruba, French', 'Arts'),
(27, 'Statistics', 'Prof Olawale Adegoke', 'Statistics', 'Science'),
(28, 'Physics', 'Prof John Okafor', 'Physics, GeoPhysics, Quantum Mechanics, Nuclear Physics', 'Science'),
(29, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts'),
(30, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(31, 'Mathematics', 'Dr Sekinat Olusanya', 'Mathematics, Industrial Math', 'Science'),
(32, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts'),
(33, 'Linguestics', 'Prof Ayodeji Obafemi', 'English, Yoruba, French', 'Arts'),
(34, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts'),
(35, 'Mathematics', 'Dr Sekinat Olusanya', 'Mathematics, Industrial Math', 'Science'),
(36, 'Accounting', 'Mrs Bosede Ajibade', 'Financial Accounting, Auditing, Cooperate Accounting, Taxation', 'Account'),
(37,  'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science'),
(38, 'Linguestics', 'Prof Ayodeji Obafemi', 'English, Yoruba, French', 'Arts'),
(39, 'Mathematics', 'Dr Sekinat Olusanya', 'Mathematics, Industrial Math', 'Science'),
(40, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts'),
(41, 'Computer Science', 'Dr Victor Olasolanke', 'Computer Science, Software Programming, Cybersecurity', 'Science');


INSERT INTO courses
VALUES
(1, 'Computer Science', 'COS201'),
(2, 'Financial Accounting', 'FACC301'),
(3, 'Software Programming', 'SFT101'),
(4, 'Quantum Mechanics', 'PHY401'),
(5, 'Cybersecurity', 'CSS201'),
(6, 'Taxation', 'TXT301'),
(7, 'Software Programming', 'SFT202'),
(8, 'GeoPhysics', 'GPHY401'),
(9, 'Industrial Maths', 'MTH101'),
(10, 'Corporate Accounting', 'CPA302'),
(11, 'Computer Science', 'COS201'),
(12, 'Mathematics', 'MTH102'),
(13,  'Auditing', 'AUD303'),
(14,  'Quantum Mechanics', 'QTM402'),
(15,  'Cybersecurity', 'CSS301'),
(16,  'Statistics', 'STA101'),
(17, 'Theater Arts', 'TTA304'),
(18, 'Fine Arts', 'FIA301'),
(19,  'Yoruba', 'YOR401'),
(20,  'Mathematics', 'MTH101'),
(21, 'Financial Accounting', 'FACC305'),
(22,  'English', 'ENG303'),
(23,  'French', 'FCH404'),
(24,  'Theater Arts', 'TTA104'),
(25,  'English', 'FACC306'),
(26, 'Yoruba', 'YOR304'),
(27,  'Statistics', 'STA102'),
(28,  'Geophysics', 'GPHY405'),
(29,  'Fine Arts', 'FIA307'),
(30,  'Cybersecurity', 'CSS305'),
(31, 'Mathematics', 'MTH105'),
(32,  'Theater Arts', 'TTA308'),
(33,  'English', 'ENG406'),
(34,  'Fine Arts', 'FIA306'),
(35,  'Industrial Math', 'MTH106'),
(36,  'Financial Accounting', 'ACC309'),
(37,  'ComputerScience', 'COS307'),
(38, 'French', 'FCH407'),
(39,  'Mathematics', 'MTH107'),
(40,  'Fine Arts', 'FIA310'),
(41, 'Computer Science', 'Cos201');

INSERT INTO attendance
VALUES
(1, '02/07/2026', 'Present'),
(2, '02/07/2026', 'Absent'),
(3, '02/07/2026', 'Absent'),
(4, '03/07/2026', 'Present'),
(5, '03/07/2026', 'Present'),
(6, '05/07/2026', 'Absent'),
(7, '05/07/2026', 'Present'),
(8, '05/07/2026', 'Present'),
(9, '05/07/2026', 'Absent'),
(10, '06/07/2026', 'Absent'),
(11, '06/07/2026', 'Present'),
(12, '07/07/2026', 'Present'),
(13,  '07/07/2026', 'Present'),
(14, '07/07/2026', 'Absent'),
(15, '08/07/2026', 'Absent'),
(16, '09/07/2026', 'Present'),
(17, '09/07/2026', 'Present'),
(18, '12/07/2026', 'Present'),
(19, '12/07/2026', 'Absent'),
(20,  '12/07/2026', 'Absent'),
(21, '14/07/2026', 'Present'),
(22, '14/07/2026', 'Present'),
(23,  '15/07/2026', 'Absent'),
(24, '15/07/2026', 'Absent'),
(25,  '16/07/2026', 'Present'),
(26, '16/07/2026', 'Present'),
(27, '16/07/2026', 'Present'),
(28, '19/07/2026', 'Absent'),
(29, '19/07/2026', 'Absent'),
(30,  '19/07/2026', 'Present'),
(31, '19/07/2026', 'Present'),
(32, '23/07/2026', 'Present'),
(33,  '23/07/2026', 'present'),
(34, '23/07/2026', 'Present'),
(35,  '24/07/2026', 'Absent'),
(36, '24/07/2026', 'Absent'),
(37, '25/07/2026', 'Present'), 
(38, '25/07/2026', 'Present'),
(39, '27/07/2026','Absent'),
(40, '27/07/2026', 'Absent'),
(41, '27/07/2026', 'Present');

-- -------------------------
-- All Male Students
-- -------------------------
SELECT *
FROM students_data
where Gender = 'Male';

-- ----------------------
-- All 300 Level Students
-- ----------------------
SELECT *
FROM students_data
where Student_level = 300;

-- -------------------------------
-- Which department is SN 23 in?
-- --------------------------------
SELECT Department
FROM department
where SN = 23;

-- --------------------------------------------------------------------------
-- Students who do not have matching rows from students_data in attendance
-- --------------------------------------------------------------------------
SELECT *
FROM students_data
where SN NOT IN( SELECT SN
FROM attendance);

-- -----------------------------------------------------
-- SN In Courses that do not exist in student_data
-- -----------------------------------------------------
select SN
from courses
where SN NOT IN( SELECT SN 
FROM students_data);

-- ------------------------------------------------------------
-- To Confirm if SN 23 from department is in students_data
-- ------------------------------------------------------------
select * 
from department
where SN = 23;

Insert INTO students_data
values
(42, 'Chibuzor', 'Eze', 'Male', 19, 200, 'chibuzor@gmail.com', '09088237651');

Insert Into department
values
(42, 'Arts', 'Mrs Olasunbo Bosede', 'Fine Arts, Theater Arts', 'Arts');


