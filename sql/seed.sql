USE school_db;

INSERT INTO departments (name)
VALUES ('math'), ('science'), ('history');

INSERT INTO subjects (name, credit, capacity, department_id)
VALUES ('Calculus', 5, 60, 1), 
('Calculus 2', 7, 100, 1), 
('Biology', 5, 60, 2), 
('Chemistry', 7, 100, 2),
('US History', 5, 60, 3),
('World History', 7, 100, 3);  

INSERT INTO teachers (first, last, email, subject_id, head_id)
VALUES ('John', 'Doe', 'johndoe@gmail.com', 2, null),
('Jane', 'Doe', 'janedoe@gmail.com', 1, 1),
('Jack', 'Doe', 'jackdoe@gmail.com', 4, null),
('James', 'Doe', 'jamesdoe@gmail.com', 3, 3),
('Jenny', 'Doe', 'jennydoe@gmail.com', 6, null),
('Jared', 'Doe', 'jareddoe@gmail.com', 5, 5);

