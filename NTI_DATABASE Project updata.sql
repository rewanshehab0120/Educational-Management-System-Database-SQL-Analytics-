CREATE DATABASE NTI_DataBase;

CREATE TABLE Classrooms (
    room_id INT PRIMARY KEY,
    room_name VARCHAR(50),
    capacity INT,
    floor INT
);

CREATE TABLE Tracks (
    track_id INT PRIMARY KEY,
    track_name VARCHAR(100),
    main_specialization VARCHAR(100)
);

CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    specialization VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    hours INT,
    track_id INT,
    instructor_id INT,
    room_id INT ,
    CONSTRAINT FK_Courses_Classroom FOREIGN KEY (room_id) REFERENCES Classrooms(room_id),
    CONSTRAINT FK_Courses_Tracks FOREIGN KEY (track_id) REFERENCES Tracks(track_id),
    CONSTRAINT FK_Courses_Instructors FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);


CREATE TABLE Trainees (
    trainee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    national_id VARCHAR(20),
    phone VARCHAR(20),
    email VARCHAR(100),
    track_id INT,
    CONSTRAINT FK_Trainees_Tracks FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

--Table Courses And Trainees M-M
CREATE TABLE Courses_Trainees(
     course_id INT ,
     trainee_id INT ,
     intake_year INT,
     attendance_statues VARCHAR(20),

    CONSTRAINT FK_Trainee FOREIGN KEY (trainee_id) REFERENCES Trainees(trainee_id),
    CONSTRAINT FK_Course FOREIGN KEY (course_id) REFERENCES Courses(course_id),
   
    PRIMARY KEY (trainee_id, course_id)

)


--Table Trainees And Instructors M-M
CREATE TABLE Trainees_Instructors(
    trainee_id INT ,
    instructor_id INT,
    CONSTRAINT FK_Trainee_I FOREIGN KEY (trainee_id) REFERENCES Trainees(trainee_id),
    CONSTRAINT FK_Instructors FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id),
    PRIMARY KEY (trainee_id,instructor_id)
)



INSERT INTO Classrooms (room_id, room_name, capacity, floor) VALUES
(1, 'Room 1', 20, 2 ),
(2, 'Room 2', 30, 1),
(3, 'Room 3', 30, 3),
(4, 'Room 4', 40, 2),
(5, 'Room 5', 30, 3),
(6, 'Room 6', 20,3),
(7, 'Room 7', 40, 3 ),
(8, 'Room 8', 40, 3 ),
(9, 'Room 9', 20, 1 ),
(10, 'Room 10', 30, 1 );



INSERT INTO Tracks (track_id, track_name, main_specialization) VALUES
(1, 'Full Stack', 'Web' ),
(2, 'Cyber Security', 'Security' ),
(3, 'Data Analysis', 'Data' ),
(4, 'AI & ML', 'AI' ),
(5, 'Embedded Systems', 'Embedded' );



INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, specialization) VALUES
(1, 'Rady', 'Ahmed', 'Rady222@gmail.com', '01023833075', 'Web'),
(2, 'Reem', 'Ali', 'ReemAli70@gmail.com', '01080438195', 'AI' ),
(3, 'Zyad', 'Hany', 'Zyaddd@gmail.com', '01033193867', 'Security' ),
(4, 'Mohammed', 'Omar', 'mo.omar12@gmail.com', '01027451678', 'AI' ),
(5, 'Salma', 'El-nagar', 'salma767@gmail.com', '01028425507', 'Data' ),
(6, 'Noura', 'Said', 'nourasaid66@gmail.com', '01085837774', 'Web' ),
(7, 'Hany', 'Ziad', 'hany4490@gmail.com', '01064130025', 'AI'),
(8, 'Samir', 'Oraby', 'samiiir11@gmail.com', '01097289759', 'Embedded'),
(9, 'Lama', 'Hassan', 'lamahassan@gmail.com', '01097432252', 'Web'),
(10, 'Heba', 'Mosa', 'hebamosa66@gmail.com', '01035693633', 'Embedded');



INSERT INTO Courses (course_id, course_name, track_id, instructor_id, hours) VALUES
(1, 'Course1', 4, 5, 40),
(2, 'Course2', 5, 1, 20 ),
(3, 'Course3', 5, 8, 20 ),
(4, 'Course4', 4, 4, 40 ),
(5, 'Course5', 1, 6, 50 ),
(6, 'Course6', 5, 4, 40 ),
(7, 'Course7', 4, 10, 50 ),
(8, 'Course8', 3, 8, 20 ),
(9, 'Course9', 1, 10, 50 ),
(10, 'Course10', 2, 4, 20 ),
(11, 'Course11', 2, 4, 40 ),
(12, 'Course12', 4, 1, 50 ),
(13, 'Course13', 3, 9, 40 ),
(14, 'Course14', 5, 3, 30),
(15, 'Course15', 2, 4, 20 ),
(16, 'Course16', 1, 4, 40 ),
(17, 'Course17', 1, 10, 20 ),
(18, 'Course18', 4, 10, 50 ),
(19, 'Course19', 2, 2, 50 ),
(20, 'Course20', 3, 7, 40);



INSERT INTO Trainees (trainee_id, first_name, last_name,  gender, national_id, phone, email, track_id) VALUES --BOD
(1, 'Omar', 'Mahmoud',   'Male', '12813536516684', '01153636749', 'omaar8700@gmail.com', 2),
(2, 'Laila', 'Hassan',   'Fmale', '28849737996350', '01132439750', 'lailahassan@gmail.com', 1),
(3, 'Youssef', 'Othman' , 'Male', '24416981412780', '01130971430', 'youssef777@gmail.com', 2),
(4, 'Omar', 'Ibrahim',   'Male', '22888127805890', '01124487082', 'omaribrahim@gmail.com', 5 ),
(5, 'Mona', 'Farid',  'Fmale', '29194843051853', '01176453959', 'monaa456@gmail.com', 4 ),
(6, 'Hassan', 'Ali',   'Male', '13874195081354', '01112754687', 'hassan.ali@gmail.com', 1 ),
(7, 'Salma', 'Ibrahim',  'Fmale', '18029272338271', '01119799292', 'salmaib@gmail.com', 5 ),
(8, 'Amr', 'Othman',   'Male', '27040854291845', '01193306692', 'amrothman@gmail.com', 1 ),
(9, 'Nada', 'Elsayed',   'Fmale', '11832961849184', '01192534571', 'nadaelsayed@gmail.com', 1 ),
(10, 'Ali', 'Mahmoud',  'Male', '24915998132924', '01183020666', 'alimahmoud@gmail.com', 5);

--Analysis the Data  
SELECT* FROM  Courses 

UPDATE  Courses SET room_id = 1 WHERE  course_id IN(1,2);
UPDATE  Courses SET room_id = 2 WHERE  course_id  IN(3,4);
UPDATE  Courses SET room_id = 3 WHERE  course_id IN(5,6);
UPDATE  Courses SET room_id = 4 WHERE  course_id IN(7,8);
UPDATE  Courses SET room_id = 5 WHERE  course_id IN(9,10);
UPDATE  Courses SET room_id = 6 WHERE  course_id IN(11,12);
UPDATE  Courses SET room_id = 7 WHERE  course_id IN(13,14);
UPDATE  Courses SET room_id = 8 WHERE  course_id IN(15,16);
UPDATE  Courses SET room_id = 9 WHERE  course_id IN(17,18);
UPDATE  Courses SET room_id = 10 WHERE  course_id IN(19,20);


SELECT* FROM  Courses 


SELECT* FROM  Trainees 

ALTER TABLE Trainees ADD BOD DATE;

UPDATE Trainees SET BOD = '1996-05-12' WHERE trainee_id = 1;
UPDATE Trainees SET BOD = '1995-03-09' WHERE trainee_id = 2;
UPDATE Trainees SET BOD = '1998-12-01' WHERE trainee_id = 3;
UPDATE Trainees SET BOD = '2000-05-19' WHERE trainee_id = 4;
UPDATE Trainees SET BOD = '2006-01-25' WHERE trainee_id = 5;
UPDATE Trainees SET BOD = '2010-10-20' WHERE trainee_id = 6;
UPDATE Trainees SET BOD = '2005-08-12' WHERE trainee_id = 7;
UPDATE Trainees SET BOD = '2006-10-01' WHERE trainee_id = 8;
UPDATE Trainees SET BOD = '1997-08-05' WHERE trainee_id = 9;
UPDATE Trainees SET BOD = '2001-02-11' WHERE trainee_id = 10;


SELECT* FROM  Trainees 

SELECT* FROM  Instructors 

SELECT * FROM Tracks

ALTER TABLE Instructors ADD track_id int 

UPDATE Instructors SET track_id =1 WHERE specialization ='Web'
UPDATE Instructors SET track_id =2 WHERE specialization ='Security'
UPDATE Instructors SET track_id =3 WHERE specialization ='Data'
UPDATE Instructors SET track_id =4 WHERE specialization ='AI'
UPDATE Instructors SET track_id =5 WHERE specialization ='Embedded'

SELECT* FROM  Instructors


-- Insert data into Trainees_Instructors
INSERT INTO Trainees_Instructors (  trainee_id ,instructor_id) 
SELECT  
    T.trainee_id,
    I.instructor_id
FROM Trainees T
JOIN Instructors I
ON T.track_id=I.track_id


SELECT * FROM Trainees_Instructors


--Insert data into Courses_Trainees Table
INSERT INTO Courses_Trainees(trainee_id , course_id )
SELECT 
    T.trainee_id,
    C.course_id
FROM Trainees T
JOIN Courses C
ON T.track_id=C.track_id


SELECT *FROM Courses_Trainees
--Insert intake_year & attendance_statues in Courses_Trainees table
UPDATE Courses_Trainees SET intake_year=2023 ,attendance_statues='Active' WHERE trainee_id IN (1,2) 
UPDATE Courses_Trainees SET intake_year=2024 ,attendance_statues='Inactive' WHERE trainee_id IN (3,5) 
UPDATE Courses_Trainees SET intake_year=2025 ,attendance_statues='Inactive' WHERE trainee_id =4
UPDATE Courses_Trainees SET intake_year=2023 ,attendance_statues='Inactive' WHERE trainee_id =6
UPDATE Courses_Trainees SET intake_year=2024 ,attendance_statues='Active' WHERE trainee_id IN(7,8,10)
UPDATE Courses_Trainees SET intake_year=2025 ,attendance_statues='Active' WHERE trainee_id =9


--Display Student Name , Course Name , track_name , intake_name , attendance_statues 
SELECT 
     T.first_name + ' ' + T.last_name AS Student_Name,
     C.course_name,
     TR.track_name,
     CT.intake_year,
     CT.attendance_statues
FROM Courses_Trainees CT
JOIN Trainees T 
    ON T.trainee_id =CT.trainee_id
JOIN Courses C
    ON C.course_id =CT.course_id
JOIN Tracks TR
    ON TR.track_id =C.track_id
ORDER BY 
    Student_Name,
    intake_year


--DISPLAY ALL TABLES to make Sure That all tables is NOT NULL 

SELECT * FROM Classrooms
SELECT * FROM Courses
SELECT * FROM Courses_Trainees
SELECT * FROM Instructors
SELECT * FROM Tracks
SELECT * FROM Trainees
SELECT * FROM Trainees_Instructors


SELECT
    tr.track_name,
    COUNT(t.trainee_id) AS CTrainees_Count
From Tracks tr
JOIN Trainees t
ON t.track_id=tr.track_id
GROUP BY track_name

-- DISPLAY inactive trainees

SELECT
    T.first_name +' '+T.last_name AS Student_Name,
    C.course_name,
    TR.track_name,
    I.last_name AS Instructors_Name ,
    CT.intake_year,
    CT.attendance_statues
FROM Courses_Trainees CT
JOIN Trainees T
ON T.trainee_id=CT.trainee_id
JOIN Courses C
ON C.course_id=CT.course_id
JOIN Instructors I
ON I.instructor_id = C.instructor_id
JOIN Tracks TR 
ON TR.track_id = T.track_id
WHERE CT.attendance_statues='Inactive'
ORDER BY Student_Name



-- AVERADGE Hours In Each Trak

SELECT 
    TR.track_name,
    AVG(C.hours) AS AVG_Hours_In_Track
FROM Courses C
JOIN Tracks TR
ON TR.track_id =C.track_id
GROUP BY track_name
ORDER BY 
       AVG_Hours_In_Track



---DISPLAY Traks > 100 Hours 
SELECT 
    TR.track_name,
    SUM(C.hours) AS Total_Hours
FROM Courses C
JOIN Tracks TR
ON TR.track_id =C.track_id
GROUP BY track_name
HAVING SUM(C.hours)>100
ORDER BY 
       track_name


SELECT first_name FROM Trainees WHERE first_name LIKE '%a%'

