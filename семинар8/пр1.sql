
CREATE TABLE SubjectsOfStudents (
    student_id INT,
    subject VARCHAR(50)
);

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

INSERT INTO SubjectsOfStudents (student_id, subject)
VALUES
(1, 'Математика'),
(2, 'История'),
(3, 'Физика'),
(4, 'Химия'),
(5, 'История'),
(6, 'Иностранные языки'),
(7, 'Биология'),
(8, 'Информатика'),
(9, 'Экономика'),
(10, 'Искусство'),
(11, 'История'),
(12, 'География'),
(13, 'Философия'),
(14, 'История'),
(15, 'Медицина'),
(16, 'Социология');


INSERT INTO Students (id, name, age)
VALUES
(1, 'Иванов Иван', 20),
(2, 'Петрова Анна', 22),
(3, 'Сидоров Петр', 21),
(4, 'Козлова Елена', 23),
(5, 'Смирнов Алексей', 24),
(6, 'Николаева Мария', 20),
(7, 'Кузнецов Игорь', 22),
(8, 'Белова Ольга', 21),
(9, 'Антонов Дмитрий', 23),
(10, 'Павлова Екатерина', 25),
(11, 'Григорьев Артем', 24),
(12, 'Соколова Татьяна', 20),
(13, 'Иванова Ольга', 22),
(14, 'Петров Павел', 21),
(15, 'Сидорова Анна', 23),
(16, 'Козлов Игорь', 25);


--task1
SELECT Students.name
FROM Students 
JOIN SubjectsOfStudents 
ON Students.id = SubjectsOfStudents.student_id
WHERE SubjectsOfStudents.subject = 'История';

--task2
SELECT Students.id, Students.name, Students.age
FROM Students
JOIN SubjectsOfStudents ON Students.id = SubjectsOfStudents.student_id
WHERE Students.age = 20;

--task3
SELECT Students.id, Students.name
FROM Students
JOIN SubjectsOfStudents ON Students.id = SubjectsOfStudents.student_id
WHERE SubjectsOfStudents.subject = 'Математика';
