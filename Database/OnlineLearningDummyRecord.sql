-- Users table
INSERT INTO Users (username, password, role, image)
VALUES
    ('john_doe', 'password123', 'student', 'https://example.com/john_doe.jpg')

-- Posts table
INSERT INTO Posts (user_id, title, content, date, upvote, downvote)
VALUES
    (1, 'My First Post', 'Hello world!', '2022-01-01 12:00:00', 10, 2),
    (2, 'How to Code', 'Here are some tips for coding beginners...', '2022-01-02 10:00:00', 20, 5),
    (1, 'My Second Post', 'This is my second post!', '2022-01-03 14:00:00', 15, 1);

-- Comments table
INSERT INTO Comments (user_id, post_id, content, date, upvote, downvote)
VALUES
    (2, 1, 'Nice post!', '2022-01-01 13:00:00', 5, 0),
    (1, 2, 'Thanks for the tips!', '2022-01-02 11:00:00', 8, 1),
    (2, 3, 'Interesting...', '2022-01-03 15:00:00', 3, 0);

-- PostVotes table
INSERT INTO PostVotes (user_id, post_id, vote)
VALUES
    (1, 1, 1),
    (2, 1, 0),
    (3, 1, 1),
    (1, 2, 1),
    (3, 2, 1),
    (1, 3, 0),
    (2, 3, 1),
    (3, 3, 1);

-- CommentVotes table
INSERT INTO CommentVotes (user_id, comment_id, vote)
VALUES
    (1, 1, 1),
    (2, 1, 1),
    (3, 1, 0),
    (1, 2, 1),
    (2, 2, 0),
    (3, 2, 1),
    (1, 3, 0),
    (2, 3, 0),
    (3, 3, 1);

-- Courses table
INSERT INTO Courses (user_id, courseName, price, img, description)
VALUES
    (2, 'Introduction to Programming', 99.99, 'https://example.com/intro_to_prog.jpg', 'This course teaches the basics of programming...'),
    (2, 'Web Development', 149.99, 'https://example.com/web_dev.jpg', 'This course teaches how to build websites...'),
    (2, 'Data Science', 199.99, 'https://example.com/data_science.jpg', 'This course teaches how to analyze data...');

-- Enrollment table
INSERT INTO Enrollment (user_id, course_id, date, status)
VALUES
    (1, 1, '2022-01-01 12:00:00', 'enrolled'),
    (2, 1, '2022-01-02 10:00:00', 'enrolled')

-- Chapters table
INSERT INTO Chapters (course_id, title)
VALUES
(1, 'Introduction to Programming'),
(1, 'Variables and Data Types'),
(1, 'Control Flow'),
(2, 'HTML and CSS'),
(2, 'JavaScript'),
(2, 'Backend Development'),
(3, 'Data Collection'),
(3, 'Data Cleaning'),
(3, 'Data Analysis');

-- Material table
INSERT INTO Material (chapter_id, title, content, contentType)
VALUES
(1, 'What is Programming?', 'Programming is the process of creating software...', 'text'),
(1, 'Why Learn Programming?', 'There are many reasons to learn programming...', 'text'),
(2, 'Variables', 'Variables are used to store data...', 'text'),
(2, 'Data Types', 'There are many types of data...', 'text'),
(3, 'If Statements', 'If statements are used to control program flow...', 'text'),
(3, 'Loops', 'Loops are used to repeat code...', 'text'),
(4, 'HTML Basics', 'HTML is used to structure web pages...', 'text'),
(4, 'CSS Basics', 'CSS is used to style web pages...', 'text'),
(5, 'JavaScript Basics', 'JavaScript is used to add interactivity to web pages...', 'text'),
(5, 'DOM Manipulation', 'The Document Object Model (DOM) is used to manipulate web pages...', 'text'),
(6, 'Node.js', 'Node.js is a platform for building server-side applications...', 'text'),
(7, 'Web Scraping', 'Web scraping is the process of extracting data from websites...', 'text'),
(8, 'Data Cleaning Techniques', 'There are many techniques for cleaning data...', 'text'),
(9, 'Statistical Analysis', 'Statistical analysis is used to analyze data...', 'text');

-- Assignments table
INSERT INTO Assignments (title, chapter_id)
VALUES
('Variables and Data Types Quiz', 2),
('Control Flow Quiz', 3),
('Web Development Project', 6),
('Data Cleaning Exercise', 8),
('Data Analysis Project', 9);

-- Questions table
INSERT INTO Questions (assignment_id, content, answerA, answerB, answerC, answerD, trueAnswer)
VALUES
(1, 'What is a variable?', 'A type of data', 'A type of function', 'A placeholder for data', 'A way to write comments', 'C'),
(1, 'What is a string?', 'A type of data', 'A type of function', 'A way to write comments', 'A placeholder for data', 'A'),
(2, 'What is an if statement?', 'A way to repeat code', 'A way to control program flow', 'A way to define variables', 'A way to store data', 'B'),
(2, 'What is a loop?', 'A way to control program flow', 'A way to store data', 'A way to define variables', 'A way to repeat code', 'D'),
(4, 'What is data cleaning?', 'The process of analyzing data', 'The process of extracting data', 'The process of manipulating data', 'The process of preparing data for analysis', 'D'),
(5, 'What is statistical analysis?', 'The process of cleaning data', 'The process of collecting data', 'The process of analyzing data', 'The process of visualizing data', 'C');
