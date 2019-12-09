----CREATE TABLE Student (
----    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
----    FirstName VARCHAR(55) NOT NULL,
----    LastName VARCHAR(55) NOT NULL,
----    SlackHandle VARCHAR(55) NOT NULL,
----    CohortId INTEGER NOT NULL
----    CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
----);

----CREATE TABLE Cohort (
----Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
----CohortName VARCHAR(55) NOT NULL,
----);


----CREATE TABLE Instructor (
----Id INTEGER Not Null PRIMARY KEY IDENTITY,
----FirstName VARCHAR(55) NOT NULL,
----LastName VARCHAR(55) NOT NULL,
----SlackHandle VARCHAR(55) NOT NULL,
----Specialty VARCHAR(55) NOT NULL,
----CohortId INTEGER NOT NULL
----CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
----);

----CREATE TABLE StudentExercises (
----StudentId INTEGER NOT NULL,
----ExerciseId INTEGER NOT NULL,
----Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
---- CONSTRAINT FK_Assigned_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
---- CONSTRAINT FK_Assigned_Exercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)
----);

----CREATE TABLE Exercise (
----Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
----ExerciseName VARCHAR(55) NOT NULL,
----ProgrammingLanguage VARCHAR(55) NOT NULL,

----);


------data for tables


------students
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Heidi', 'Smith', 'Heidi Smith', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Phil', 'Griswold', 'Phil Griswold', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Mark', 'McCann', 'Mark McCann', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Fortunato', 'Mugnano', 'Fortunato Mugnano', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Seth', 'Oakley', 'Seth Oakley', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Jerry', 'Williams', 'Jerry Williams', 2);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('George', 'Glass', 'George Glass', 2);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Ringo', 'Bingo', 'Ringo Bingo', 4);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Mary', 'Queen', 'Mary Queen', 5);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Jill', 'Hill', 'Jill Hill', 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Rachel', 'Green', 'Green Rachel', 2);

------cohorts
----INSERT INTO Cohort (CohortName) VALUES (33);
----INSERT INTO Cohort (CohortName) VALUES (34);
----INSERT INTO Cohort (CohortName) VALUES (35);
----INSERT INTO Cohort (CohortName) VALUES (36);
----INSERT INTO Cohort (CohortName) VALUES (37);

------instructors
----INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Adam', 'Sheaffer', 'Adam Sheaffer', 'Ice Cream', 3);
----INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Madi', 'Peper', 'Madi Peper', 'Climbing', 3);
----INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Brenda', 'Long', 'Brenda Long', 'Smiling', 3);
----INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Rick', 'Codeface', 'Rick Codeface', 'Whiteboard', 2);
----INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Nick', 'Jonas', 'Nick Jonas', 'Brothers', 4);
----INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Mandy', 'Moore', 'Mandy Moore', 'Acting', 5);

------exercises
----INSERT INTO Exercise (ExerciseName, ProgrammingLanguage) VALUES ('Javascript Intro', 'Javascript');
----INSERT INTO Exercise (ExerciseName, ProgrammingLanguage) VALUES ('FizzBuzz', 'Javascript');
----INSERT INTO Exercise (ExerciseName, ProgrammingLanguage) VALUES ('Nutshell', 'Javascript');
----INSERT INTO Exercise (ExerciseName, ProgrammingLanguage) VALUES ('TrestleBridge Farms', 'C Sharp');
----INSERT INTO Exercise (ExerciseName, ProgrammingLanguage) VALUES ('Class Website', 'CSS');
----INSERT INTO Exercise (ExerciseName, ProgrammingLanguage) VALUES ('Database Intro', 'Python');

------assign exercises 
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (1, 2);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (2, 3);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (5, 5);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (7, 1);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (3, 1);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (9, 6);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (4, 4);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (6, 3);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (8, 6);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (11, 2);
----INSERT INTO StudentExercises (StudentId, ExerciseId) VALUES (10, 5);



--write a query to return all student first and last names with cohort name

--SELECT s.Firstname,
--        s.LastName,
--        c.CohortName
--FROM Student s
--       LEFT JOIN Cohort c on s.CohortId = c.Id;



--Write a query to return student first and last names with their cohort's name only for a single cohort

--SELECT s.FirstName,
--		s.LastName,
--		c.CohortName
--FROM Student s
--	LEFT JOIN Cohort c on s.CohortId = c.Id
--		WHERE c.Id =3;


	
-- Write a query to return all instructors ordered by their last name

--SELECT FirstName,
--	   LastName
--FROM Instructor
--ORDER BY LastName;


--Write a query to return a list of unique instructor specialties

--SELECT DISTINCT Specialty
--FROM Instructor;


-- Write a query to return a list of all student names along with the names of the exercises they have been assigned. If an exercise has not been assigned, it should not be in the result.
--SELECT s.FirstName,
--	   s.LastName,
--	   e.ExerciseName
--FROM StudentExercises se
--	INNER JOIN Students s on se.StudentId = s.Id
--	INNER JOIN Exercises e on se.ExerciseId = e.Id;



-- Return a list of student names along with the count of exercises assigned to each student.
--SELECT COUNT (se.ExerciseId) NumberOfExercisesAssigned,
--	s.FirstName,
--		s.LastName
--FROM StudentExercises se
--INNER JOIN Students s on se.StudentId = s.Id
--GROUP BY s.FirstName, s.LastName
--;
