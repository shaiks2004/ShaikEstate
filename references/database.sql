-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 06:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `all`
--
CREATE DATABASE IF NOT EXISTS `all` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `all`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `comp` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `qual` varchar(255) NOT NULL,
  `lastd` varchar(255) NOT NULL,
  `resumes` varchar(500) NOT NULL,
  `reg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`comp`, `title`, `qual`, `lastd`, `resumes`, `reg`) VALUES
('TCS', 'software developer', 'b.tech', '2024-10-17', 'uploads/img3.avif', 'tcs.com'),
('narendra pvt', 'manager', 'manager degree', '2024-11-06', 'uploads/sequence.png', ' ms bm cbmm xmc.com'),
('m sddm ', 'jsbdj ', 'jsnkj', '2024-11-05', 'uploads/Usecase.png', 'nkbkdm');
--
-- Database: `file`
--
CREATE DATABASE IF NOT EXISTS `file` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `file`;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`username`, `password`) VALUES
('karthik', '1'),
('pradeep', '11'),
('karthik', '1`'),
('afnan', '123456789'),
('md kaif', '111'),
('charan1', '12'),
('hima', '12345'),
('abbas', '12345'),
('sru', '1234'),
('afnan89', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile1`
--

CREATE TABLE `profile1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile1`
--

INSERT INTO `profile1` (`id`, `name`, `email`, `img`) VALUES
(5, 'babajan shaikh', 'babajanshaikh177@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocL7jzMmB8GfXzsMWORnJuSMw1hUhLZkGoQBJgyFbJrmm0B0ieyV=s96-c'),
(6, 'Shaik Afnan', 'shaikafnan095@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKBSU7DG5Y8zbW7RAEqqlaOoF2CSaYLDNBLUeSc-4dsWh5ZMh5l=s96-c'),
(7, 'charan teja', 'charangavvala036@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocLSNIwtSv4auXCqB-kH_qIdXUDhzJkz2-dp4WzD5jEPcILVSQ=s96-c'),
(8, 'Sahil Sahil', 'naveedahmadshaik@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocK3qZepcof8M1f5zq0TakGMd-Kzbdv_tjFdSPMtc-UIgIAmLAwY=s96-c'),
(9, 'Ahammadabbas Syed', 'syedahammadabbas@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocI3lrjpaaSxyNoZ6Dn0zmb-3x5PrXHTr4f6oog8XJefM4-ebg=s96-c');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `marks`) VALUES
(8, 'Shaik Afnan', 17),
(1, 'Shaik Afnan', 10),
(9, 'Sahil Sahil', 11);

-- --------------------------------------------------------

--
-- Table structure for table `quizq`
--

CREATE TABLE `quizq` (
  `id` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizq`
--

INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/python-control-statements-1.pdf', 'What is the purpose of control statements in Python?', 'To control the flow of execution', 'To define functions', 'To create variables', 'To import modules', 'To control the flow of execution'),
('img/python-control-statements-1.pdf', 'Which of the following is a conditional statement in Python?', 'if', 'for', 'while', 'def', 'if'),
('img/python-control-statements-1.pdf', 'What does the break statement do in a loop?', 'Exits the loop', 'Continues to the next iteration', 'Stops the program', 'Returns a value', 'Exits the loop'),
('img/python-control-statements-1.pdf', 'What is the purpose of the continue statement?', 'To skip the current iteration', 'To exit the loop', 'To end the program', 'To create a new loop', 'To skip the current iteration'),
('img/python-control-statements-1.pdf', 'Which of the following keywords is used to define a loop in Python?', 'for', 'loop', 'repeat', 'while', 'for'),
('img/python-control-statements-1.pdf', 'How do you write an else statement for a for loop in Python?', 'for x in range(5): ... else: ...', 'for x in range(5): ... end', 'for x in range(5): ... finish', 'for x in range(5): ... final', 'for x in range(5): ... else: ...'),
('img/python-control-statements-1.pdf', 'Which statement is used to define a block of code that executes if the condition is false in an if statement?', 'else', 'elif', 'except', 'finally', 'else'),
('img/python-control-statements-1.pdf', 'What is the output of the following code: if x > 10: print(\"Above 10\") else: print(\"10 or below\")?', 'Depends on the value of x', 'Above 10', '10 or below', 'Error', 'Depends on the value of x'),
('img/python-control-statements-1.pdf', 'Which of the following is the correct syntax for a while loop?', 'while condition: ...', 'while: condition ...', 'while (condition) ...', 'while condition ...', 'while condition: ...'),
('img/python-control-statements-1.pdf', 'What happens if the condition in a while loop is always true?', 'It creates an infinite loop', 'It stops executing', 'It executes only once', 'It raises an error', 'It creates an infinite loop'),
('img/arrays in python.pdf', 'What is an array in Python?', 'A collection of elements of the same type', 'A collection of elements of different types', 'A function in Python', 'A type of loop', 'A collection of elements of the same type'),
('img/arrays in python.pdf', 'Which module provides support for arrays in Python?', 'array', 'list', 'tuple', 'dict', 'array'),
('img/arrays in python.pdf', 'How do you create an array of integers in Python?', 'array.array(\"i\", [1, 2, 3])', 'list([1, 2, 3])', 'tuple([1, 2, 3])', 'int([1, 2, 3])', 'array.array(\"i\", [1, 2, 3])'),
('img/arrays in python.pdf', 'Which method is used to append an element to an array in Python?', 'append()', 'add()', 'insert()', 'extend()', 'append()'),
('img/arrays in python.pdf', 'What is the difference between a list and an array in Python?', 'An array stores elements of the same type, while a list can store different types', 'A list stores elements of the same type, while an array can store different types', 'Both are the same in Python', 'Lists can only store integers', 'An array stores elements of the same type, while a list can store different types'),
('img/arrays in python.pdf', 'How do you access the first element of an array in Python?', 'array[0]', 'array[1]', 'array[-1]', 'array.first()', 'array[0]'),
('img/arrays in python.pdf', 'Which of the following is the correct way to delete an element from an array?', 'del array[index]', 'remove(array[index])', 'array.pop()', 'delete array[index]', 'del array[index]'),
('img/arrays in python.pdf', 'Which method is used to reverse the elements of an array?', 'reverse()', 'invert()', 'revert()', 'flip()', 'reverse()'),
('img/arrays in python.pdf', 'What will happen if you try to access an index that is out of range in a Python array?', 'An IndexError will be raised', 'It will return None', 'The first element will be returned', 'The last element will be returned', 'An IndexError will be raised'),
('img/exception handling in python.pdf', 'What is the purpose of exception handling in Python?', 'To manage errors and maintain normal flow of execution', 'To stop the program immediately', 'To debug the code', 'To optimize performance', 'To manage errors and maintain normal flow of execution'),
('img/exception handling in python.pdf', 'Which keyword is used to start a try block?', 'try', 'catch', 'exception', 'handle', 'try'),
('img/exception handling in python.pdf', 'What keyword is used to catch exceptions in Python?', 'except', 'catch', 'finally', 'throw', 'except'),
('img/exception handling in python.pdf', 'What does the finally block do?', 'Executes code regardless of whether an exception occurred', 'Executes only if an exception occurred', 'Executes only if no exception occurred', 'Can be used to define variables', 'Executes code regardless of whether an exception occurred'),
('img/exception handling in python.pdf', 'Which of the following is an example of an exception in Python?', 'ZeroDivisionError', 'Array', 'String', 'Function', 'ZeroDivisionError'),
('img/exception handling in python.pdf', 'What will happen if an exception is not caught?', 'The program will terminate', 'The program will continue running', 'It will display a warning', 'Nothing happens', 'The program will terminate'),
('img/exception handling in python.pdf', 'Which block is used to handle cleanup actions in case of an exception?', 'finally', 'try', 'except', 'raise', 'finally'),
('img/exception handling in python.pdf', 'How do you raise an exception manually in Python?', 'raise ExceptionName', 'throw ExceptionName', 'catch ExceptionName', 'fail ExceptionName', 'raise ExceptionName'),
('img/exception handling in python.pdf', 'What is the output of the following code: try: print(1/0) except: print(\"Error\")?', 'Error', '1', '0', 'None', 'Error'),
('img/exception handling in python.pdf', 'Can you have multiple except blocks in a try-except statement?', 'Yes', 'No', 'Only one', 'Depends on the version of Python', 'Yes'),
('img/File Handling in python.pdf', 'What mode is used to open a file for reading in Python?', 'r', 'w', 'a', 'rb', 'r'),
('img/File Handling in python.pdf', 'Which method is used to read the entire content of a file in Python?', 'read()', 'readline()', 'readlines()', 'fetch()', 'read()'),
('img/File Handling in python.pdf', 'What is the purpose of the with statement in file handling?', 'Automatically closes the file after the block is executed', 'Opens the file in read mode', 'Creates a new file', 'Handles exceptions', 'Automatically closes the file after the block is executed'),
('img/File Handling in python.pdf', 'How do you write to a file in Python?', 'Use the write() method', 'Use the append() method', 'Use the open() method', 'Use the close() method', 'Use the write() method'),
('img/File Handling in python.pdf', 'What happens if you try to open a file that does not exist in write mode?', 'It creates a new file', 'It raises an error', 'It opens a blank file', 'It overwrites the existing file', 'It creates a new file'),
('img/File Handling in python.pdf', 'Which method is used to read a single line from a file?', 'readline()', 'read()', 'readlines()', 'getline()', 'readline()'),
('img/File Handling in python.pdf', 'What mode should be used to open a file for both reading and writing?', 'r+', 'w+', 'a+', 'rb+', 'r+'),
('img/File Handling in python.pdf', 'How can you check if a file exists before opening it?', 'Use os.path.exists()', 'Use open()', 'Use file_exists()', 'Use exists()', 'Use os.path.exists()'),
('img/File Handling in python.pdf', 'What will happen if you try to read a closed file?', 'It raises a ValueError', 'It returns None', 'It raises an IOError', 'It does nothing', 'It raises a ValueError'),
('img/File Handling in python.pdf', 'Which method is used to close a file in Python?', 'close()', 'end()', 'finish()', 'exit()', 'close()'),
('img/programming methodology.pdf', 'What is the primary goal of programming methodologies?', 'To provide structured approaches for software development and problem-solving', 'To increase the execution speed of software', 'To simplify programming language syntax', 'To manage hardware resources', 'To provide structured approaches for software development and problem-solving'),
('img/programming methodology.pdf', 'What does the acronym \"OOP\" stand for?', 'Object-Oriented Programming', 'Open Operating Protocol', 'Object-Oriented Procedure', 'Operational Output Process', 'Object-Oriented Programming'),
('img/programming methodology.pdf', 'Which programming methodology focuses on breaking a program into functions and procedures?', 'Procedural Programming', 'Object-Oriented Programming', 'Functional Programming', 'Declarative Programming', 'Procedural Programming'),
('img/programming methodology.pdf', 'What is a key principle of Object-Oriented Programming (OOP)?', 'Encapsulation', 'Sequential execution', 'Declarative syntax', 'Immutable variables', 'Encapsulation'),
('img/programming methodology.pdf', 'What does the term \"Agile\" refer to in software development?', 'A set of principles for iterative and incremental development', 'A programming language for web development', 'A type of database management system', 'A debugging tool for code analysis', 'A set of principles for iterative and incremental development'),
('img/programming methodology.pdf', 'Which methodology emphasizes writing code that can be easily tested and refactored?', 'Test-Driven Development (TDD)', 'Waterfall Model', 'Rapid Application Development (RAD)', 'Model-View-Controller (MVC)', 'Test-Driven Development (TDD)'),
('img/programming methodology.pdf', 'What is the main focus of Functional Programming?', 'Writing programs using pure functions and avoiding mutable state', 'Structuring programs using objects and classes', 'Organizing programs into procedures and functions', 'Defining programs using logical statements', 'Writing programs using pure functions and avoiding mutable state'),
('img/programming methodology.pdf', 'What is the Waterfall Model in software development?', 'A linear and sequential approach to software development', 'An iterative and flexible approach to software development', 'A method for managing concurrent processes', 'A technique for optimizing code performance', 'A linear and sequential approach to software development'),
('img/programming methodology.pdf', 'Which methodology uses a cycle of planning, designing, developing, and testing in short iterations?', 'Iterative Development', 'Waterfall Model', 'Spiral Model', 'Structured Programming', 'Iterative Development'),
('img/programming methodology.pdf', 'What is the main advantage of using Agile methodologies?', 'Increased flexibility and ability to adapt to changes during development', 'More stringent control over project scope and deadlines', 'Greater emphasis on upfront planning and documentation', 'Reduced need for stakeholder involvement', 'Increased flexibility and ability to adapt to changes during development'),
('img/computer and network basics.pdf', 'What is the primary purpose of a network?', 'To enable devices to communicate and share resources', 'To store data permanently', 'To manage hardware components', 'To create software applications', 'To enable devices to communicate and share resources'),
('img/computer and network basics.pdf', 'Which device is used to connect multiple networks and route data between them?', 'Router', 'Switch', 'Hub', 'Modem', 'Router'),
('img/computer and network basics.pdf', 'What does the acronym LAN stand for?', 'Local Area Network', 'Long Area Network', 'Large Access Network', 'Local Access Node', 'Local Area Network'),
('img/computer and network basics.pdf', 'What is an IP address used for in a network?', 'To identify and locate devices on a network', 'To store data on a disk', 'To manage network traffic', 'To provide wireless network access', 'To identify and locate devices on a network'),
('img/computer and network basics.pdf', 'Which protocol is used for sending email over the Internet?', 'SMTP (Simple Mail Transfer Protocol)', 'HTTP (Hypertext Transfer Protocol)', 'FTP (File Transfer Protocol)', 'IP (Internet Protocol)', 'SMTP (Simple Mail Transfer Protocol)'),
('img/computer and network basics.pdf', 'What is the purpose of DNS (Domain Name System)?', 'To translate domain names into IP addresses', 'To secure data transmission over the network', 'To manage network traffic and connections', 'To provide wireless network access', 'To translate domain names into IP addresses'),
('img/computer and network basics.pdf', 'Which device is used to provide wireless connectivity to a network?', 'Access Point', 'Router', 'Switch', 'Hub', 'Access Point'),
('img/computer and network basics.pdf', 'What is the role of a network switch?', 'To direct data packets to specific devices on a network based on MAC addresses', 'To connect multiple networks and route data between them', 'To amplify and regenerate signals on a network', 'To provide a physical connection for network devices', 'To direct data packets to specific devices on a network based on MAC addresses'),
('img/computer and network basics.pdf', 'What does the term “bandwidth” refer to in networking?', 'The maximum rate at which data can be transmitted over a network', 'The amount of data stored on a device', 'The number of devices connected to a network', 'The range of a wireless network signal', 'The maximum rate at which data can be transmitted over a network'),
('img/computer and network basics.pdf', 'Which layer of the OSI model is responsible for the physical connection and transmission of raw bit streams?', 'Physical Layer', 'Data Link Layer', 'Network Layer', 'Transport Layer', 'Physical Layer'),
('img/fundamentals of computer.pdf', 'What is the main function of the CPU in a computer?', 'To execute instructions and process data', 'To store data permanently', 'To manage input and output devices', 'To provide network connectivity', 'To execute instructions and process data'),
('img/fundamentals of computer.pdf', 'Which component is known as the brain of the computer?', 'Central Processing Unit (CPU)', 'Random Access Memory (RAM)', 'Hard Disk Drive (HDD)', 'Motherboard', 'Central Processing Unit (CPU)'),
('img/fundamentals of computer.pdf', 'What does RAM stand for?', 'Random Access Memory', 'Read Access Memory', 'Reliable Access Memory', 'Read-Only Memory', 'Random Access Memory'),
('img/fundamentals of computer.pdf', 'What is the purpose of the motherboard in a computer?', 'To connect and allow communication between all hardware components', 'To store data permanently', 'To manage the display output', 'To handle network connections', 'To connect and allow communication between all hardware components'),
('img/fundamentals of computer.pdf', 'Which storage device is known for its high speed and volatility?', 'RAM (Random Access Memory)', 'Hard Disk Drive (HDD)', 'Solid State Drive (SSD)', 'Optical Disk', 'RAM (Random Access Memory)'),
('img/fundamentals of computer.pdf', 'What does the term “software” refer to?', 'The programs and operating systems used by a computer', 'The physical components of a computer system', 'The instructions for assembling hardware components', 'The network connectivity of a computer', 'The programs and operating systems used by a computer'),
('img/fundamentals of computer.pdf', 'Which device is used to input text and commands into a computer?', 'Keyboard', 'Monitor', 'Printer', 'Speakers', 'Keyboard'),
('img/fundamentals of computer.pdf', 'What is the function of the computer’s power supply unit (PSU)?', 'To convert electrical power from the outlet into a usable form for the computer', 'To manage the CPU’s processing tasks', 'To store data permanently', 'To control the display output', 'To convert electrical power from the outlet into a usable form for the computer'),
('img/fundamentals of computer.pdf', 'What is the role of an operating system in a computer?', 'To manage hardware resources and provide a user interface', 'To store files and applications', 'To provide network security', 'To process data and execute programs', 'To manage hardware resources and provide a user interface'),
('img/fundamentals of computer.pdf', 'Which of the following is a non-volatile storage medium?', 'Hard Disk Drive (HDD)', 'RAM (Random Access Memory)', 'Cache Memory', 'CPU Registers', 'Hard Disk Drive (HDD)'),
('img/debugging.pdf', 'What is the primary goal of debugging?', 'To identify and fix errors in code', 'To write new features', 'To optimize database performance', 'To design user interfaces', 'To identify and fix errors in code'),
('img/debugging.pdf', 'What is a common debugging technique?', 'Using breakpoints', 'Increasing code complexity', 'Ignoring error messages', 'Writing code without testing', 'Using breakpoints'),
('img/debugging.pdf', 'Which tool helps in step-by-step execution of code?', 'Debugger', 'Compiler', 'Text Editor', 'Version Control System', 'Debugger'),
('img/debugging.pdf', 'What is a breakpoint?', 'A marker used to pause code execution for inspection', 'A point where the code always fails', 'A section of code that executes repeatedly', 'A method for optimizing performance', 'A marker used to pause code execution for inspection'),
('img/debugging.pdf', 'What is meant by \"stepping through\" code?', 'Executing code line by line to analyze its behavior', 'Skipping over parts of code', 'Compiling the entire codebase at once', 'Removing all print statements', 'Executing code line by line to analyze its behavior'),
('img/debugging.pdf', 'What does a stack trace provide?', 'Information about the function calls that led to an error', 'A list of all variables in scope', 'Detailed code comments', 'A summary of code performance', 'Information about the function calls that led to an error'),
('img/debugging.pdf', 'What is a common cause of segmentation faults?', 'Accessing memory out of bounds', 'Missing return statements', 'Using outdated libraries', 'Uninitialized variables', 'Accessing memory out of bounds'),
('img/debugging.pdf', 'What does \"logging\" refer to in debugging?', 'Recording messages about program execution', 'Executing code in a loop', 'Analyzing code for performance', 'Tracking code changes in version control', 'Recording messages about program execution'),
('img/debugging.pdf', 'What is the purpose of unit testing in debugging?', 'To test individual components for correctness', 'To test the entire application', 'To measure code execution time', 'To document code functionality', 'To test individual components for correctness'),
('img/debugging.pdf', 'What is the difference between a syntax error and a runtime error?', 'A syntax error occurs during code compilation, while a runtime error occurs during execution', 'A syntax error occurs during code execution, while a runtime error occurs during compilation', 'A syntax error is harder to fix than a runtime error', 'A syntax error is related to logic errors', 'A syntax error occurs during code compilation, while a runtime error occurs during execution'),
('img/life cycle models.pdf', 'What is a life cycle model?', 'A framework that describes the stages a product or project goes through from inception to retirement', 'A method for tracking financial performance over time', 'A strategy for market penetration and expansion', 'A process for team building and development', 'A framework that describes the stages a product or project goes through from inception to retirement'),
('img/life cycle models.pdf', 'Which stage in the product life cycle involves rapid growth in sales and market acceptance?', 'Growth', 'Introduction', 'Maturity', 'Decline', 'Growth'),
('img/life cycle models.pdf', 'What is the primary focus during the maturity stage of the product life cycle?', 'Maximizing market share and profit while facing increased competition', 'Introducing the product to the market', 'Reducing production costs', 'Enhancing product features and innovations', 'Maximizing market share and profit while facing increased competition'),
('img/life cycle models.pdf', 'What typically characterizes the decline stage of the product life cycle?', 'Decreasing sales and profitability, often due to market saturation or new alternatives', 'High growth in market share and revenue', 'Stable sales and market dominance', 'Rapid increase in product features and technology', 'Decreasing sales and profitability, often due to market saturation or new alternatives'),
('img/life cycle models.pdf', 'Which life cycle model is used in software development to represent phases such as planning, development, testing, and deployment?', 'Software Development Life Cycle (SDLC)', 'Product Life Cycle (PLC)', 'Project Life Cycle (PLC)', 'Organizational Life Cycle', 'Software Development Life Cycle (SDLC)'),
('img/life cycle models.pdf', 'In the Software Development Life Cycle (SDLC), what is the purpose of the testing phase?', 'To identify and fix defects in the software before release', 'To gather user requirements', 'To design software architecture', 'To deploy the software to users', 'To identify and fix defects in the software before release'),
('img/life cycle models.pdf', 'Which stage in the product life cycle focuses on maximizing profits while managing costs and market competition?', 'Maturity', 'Introduction', 'Growth', 'Decline', 'Maturity'),
('img/life cycle models.pdf', 'What is a key characteristic of the introduction stage in the product life cycle?', 'High costs and low sales as the product is introduced to the market', 'Stable sales and market acceptance', 'Decreasing costs and increasing competition', 'High sales and rapid growth', 'High costs and low sales as the product is introduced to the market'),
('img/life cycle models.pdf', 'What does the term \"product life cycle\" refer to?', 'The stages a product goes through from development to withdrawal from the market', 'The period during which a product is developed and tested', 'The process of marketing and promoting a product', 'The lifecycle of production equipment and technology', 'The stages a product goes through from development to withdrawal from the market'),
('img/life cycle models.pdf', 'In which life cycle model is the focus on phases like initiation, planning, execution, and closure?', 'Project Life Cycle', 'Product Life Cycle', 'Organizational Life Cycle', 'Software Development Life Cycle', 'Project Life Cycle'),
('img/quality management.pdf', 'What is the primary goal of quality management?', 'To ensure products and services meet customer expectations', 'To reduce the number of employees', 'To minimize marketing costs', 'To increase product variety', 'To ensure products and services meet customer expectations'),
('img/quality management.pdf', 'What does TQM stand for?', 'Total Quality Management', 'Total Quality Measure', 'Target Quality Management', 'Timely Quality Management', 'Total Quality Management'),
('img/quality management.pdf', 'Which tool is commonly used for root cause analysis?', 'Fishbone Diagram', 'Flowchart', 'Histogram', 'Control Chart', 'Fishbone Diagram'),
('img/quality management.pdf', 'What is a quality audit?', 'A systematic examination of a quality management system', 'A survey of customer satisfaction', 'An analysis of financial statements', 'A review of marketing strategies', 'A systematic examination of a quality management system'),
('img/quality management.pdf', 'What does the acronym PDCA stand for in quality management?', 'Plan-Do-Check-Act', 'Process-Define-Check-Analyze', 'Prepare-Deliver-Check-Assess', 'Plan-Develop-Control-Align', 'Plan-Do-Check-Act'),
('img/quality management.pdf', 'What is a control chart used for?', 'Monitoring process performance over time', 'Designing new product features', 'Analyzing customer feedback', 'Managing project budgets', 'Monitoring process performance over time'),
('img/quality management.pdf', 'What is Six Sigma?', 'A methodology for improving process quality and reducing defects', 'A quality certification standard', 'A type of project management software', 'A statistical analysis technique', 'A methodology for improving process quality and reducing defects'),
('img/quality management.pdf', 'What does ISO 9001 standard focus on?', 'Quality management systems and customer satisfaction', 'Environmental management systems', 'Occupational health and safety', 'Information security management', 'Quality management systems and customer satisfaction'),
('img/quality management.pdf', 'What is a quality management system (QMS)?', 'A framework for managing and improving quality across an organization', 'A set of guidelines for customer service', 'A software for tracking sales performance', 'A document for regulatory compliance', 'A framework for managing and improving quality across an organization'),
('img/quality management.pdf', 'What is the purpose of a quality policy?', 'To define the organizations commitment to quality and objectives', 'To outline employee benefits and compensation', 'To specify operational procedures', 'To describe marketing strategies', 'To define the organizations commitment to quality and objectives'),
('img/requirements analysis and specifications.pdf', 'What is the primary purpose of requirements analysis?', 'To identify and document the needs and expectations of stakeholders for a project or system', 'To develop a project budget', 'To create a marketing plan', 'To implement the final system or solution', 'To identify and document the needs and expectations of stakeholders for a project or system'),
('img/requirements analysis and specifications.pdf', 'Which document describes what a system should do and the constraints under which it must operate?', 'Requirements Specification', 'Project Charter', 'Business Case', 'Design Document', 'Requirements Specification'),
('img/requirements analysis and specifications.pdf', 'What is the first step in the requirements analysis process?', 'Gathering and eliciting requirements from stakeholders', 'Developing a detailed project plan', 'Designing system architecture', 'Implementing the solution', 'Gathering and eliciting requirements from stakeholders'),
('img/requirements analysis and specifications.pdf', 'Which technique is commonly used to gather requirements from stakeholders through structured discussions?', 'Interviews', 'Surveys', 'Prototyping', 'Document Analysis', 'Interviews'),
('img/requirements analysis and specifications.pdf', 'What does a \"functional requirement\" describe?', 'What the system should do, including specific behaviors and functions', 'How the system should perform in terms of speed and capacity', 'The constraints and limitations within which the system must operate', 'The technology stack and tools used to build the system', 'What the system should do, including specific behaviors and functions'),
('img/requirements analysis and specifications.pdf', 'What is a \"non-functional requirement\"?', 'A requirement that specifies how the system performs under certain conditions', 'A requirement that describes the core functionalities of the system', 'A requirement related to the technology used in development', 'A requirement that dictates the system’s user interface design', 'A requirement that specifies how the system performs under certain conditions'),
('img/requirements analysis and specifications.pdf', 'Which document outlines the agreed-upon requirements and serves as a reference for development and testing?', 'Requirements Specification Document', 'Project Plan', 'Technical Design Document', 'User Manual', 'Requirements Specification Document'),
('img/requirements analysis and specifications.pdf', 'What is the purpose of requirements validation?', 'To ensure that the documented requirements accurately reflect stakeholder needs and expectations', 'To develop a detailed design of the system', 'To estimate the project costs and resources', 'To implement the system according to specifications', 'To ensure that the documented requirements accurately reflect stakeholder needs and expectations'),
('img/requirements analysis and specifications.pdf', 'Which technique involves creating a preliminary model of the system to help understand and refine requirements?', 'Prototyping', 'Benchmarking', 'Simulation', 'Document Analysis', 'Prototyping'),
('img/requirements analysis and specifications.pdf', 'In the context of requirements analysis, what does \"traceability\" refer to?', 'The ability to track each requirement through the development process to ensure it is implemented and tested', 'The process of reviewing the project budget and timeline', 'The method of analyzing the market demand for the product', 'The technique of documenting user feedback and suggestions', 'The ability to track each requirement through the development process to ensure it is implemented and tested'),
('img/software coding and testing.pdf', 'What is the primary purpose of unit testing?', 'To verify that individual components of the software function correctly', 'To assess the overall performance of the software', 'To test the user interface design', 'To check system compatibility', 'To verify that individual components of the software function correctly'),
('img/software coding and testing.pdf', 'What is a test case?', 'A set of conditions or variables under which a tester assesses whether a software application is working correctly', 'A document that lists all project requirements', 'A code review process', 'A method for debugging code', 'A set of conditions or variables under which a tester assesses whether a software application is working correctly'),
('img/software coding and testing.pdf', 'What does the acronym CI/CD stand for?', 'Continuous Integration/Continuous Deployment', 'Critical Infrastructure/Continuous Delivery', 'Customer Integration/Code Deployment', 'Continuous Improvement/Continuous Delivery', 'Continuous Integration/Continuous Deployment'),
('img/software coding and testing.pdf', 'What is a bug?', 'An error or flaw in software that causes it to produce incorrect or unexpected results', 'A feature enhancement', 'A performance optimization', 'A type of software documentation', 'An error or flaw in software that causes it to produce incorrect or unexpected results'),
('img/software coding and testing.pdf', 'What is regression testing?', 'Testing to ensure that new code changes have not adversely affected existing functionalities', 'Testing the software’s performance under load', 'Testing the user interface design', 'Testing for security vulnerabilities', 'Testing to ensure that new code changes have not adversely affected existing functionalities'),
('img/software coding and testing.pdf', 'What is code coverage?', 'A measure of how much of the source code is executed by tests', 'The amount of documentation provided for the code', 'The complexity of the code', 'The number of features implemented', 'A measure of how much of the source code is executed by tests'),
('img/software coding and testing.pdf', 'What is a mock object in testing?', 'A simulated object used to test the interactions between components', 'A real object used for performance testing', 'A tool for tracking bugs', 'A type of code optimization', 'A simulated object used to test the interactions between components'),
('img/software coding and testing.pdf', 'What does the term \"continuous integration\" mean?', 'Frequent merging of code changes into a shared repository', 'Continuous deployment of software to end users', 'Ongoing performance monitoring of the software', 'Regular updates to the user interface', 'Frequent merging of code changes into a shared repository'),
('img/software coding and testing.pdf', 'What is a performance test?', 'A test to evaluate the speed, responsiveness, and stability of a system under load', 'A test to ensure that all features work as intended', 'A test to verify the security of the software', 'A test to check the compatibility of the software with different operating systems', 'A test to evaluate the speed, responsiveness, and stability of a system under load'),
('img/software coding and testing.pdf', 'What is the purpose of a code review?', 'To improve code quality by examining and providing feedback on the code written by others', 'To add new features to the software', 'To execute automated tests', 'To manage project timelines and budgets', 'To improve code quality by examining and providing feedback on the code written by others'),
('img/Software project management.ppt', 'What is the primary goal of software project management?', 'To plan, execute, and control software projects to meet objectives within constraints', 'To develop software code', 'To design user interfaces', 'To manage hardware resources', 'To plan, execute, and control software projects to meet objectives within constraints'),
('img/Software project management.ppt', 'Which document outlines the scope, objectives, and deliverables of a software project?', 'Project Charter', 'Requirement Specification', 'Design Document', 'Test Plan', 'Project Charter'),
('img/Software project management.ppt', 'What is the purpose of a project plan in software project management?', 'To detail the schedule, resources, and activities required to complete the project', 'To provide a detailed description of the software features', 'To outline the hardware and software requirements', 'To document user requirements and feedback', 'To detail the schedule, resources, and activities required to complete the project'),
('img/Software project management.ppt', 'Which project management methodology emphasizes iterative development and customer collaboration?', 'Agile', 'Waterfall', 'PRINCE2', 'Critical Path Method', 'Agile'),
('img/Software project management.ppt', 'What is the critical path in project management?', 'The longest sequence of tasks that determines the minimum project duration', 'The path with the most critical risks', 'The path that involves the most resource-intensive tasks', 'The path with the most dependencies', 'The longest sequence of tasks that determines the minimum project duration'),
('img/Software project management.ppt', 'What is risk management in the context of software project management?', 'The process of identifying, assessing, and mitigating potential issues that could impact the project', 'The method of managing project resources and budget', 'The technique for developing project timelines and milestones', 'The approach to designing and developing software features', 'The process of identifying, assessing, and mitigating potential issues that could impact the project'),
('img/Software project management.ppt', 'Which technique is used to estimate the cost and time required for software development tasks?', 'Work Breakdown Structure (WBS)', 'Earned Value Management (EVM)', 'Monte Carlo Simulation', 'Function Point Analysis', 'Work Breakdown Structure (WBS)'),
('img/Software project management.ppt', 'What is the purpose of a status report in software project management?', 'To provide updates on the project’s progress, issues, and changes', 'To describe the technical architecture of the software', 'To document the testing results and quality assurance', 'To outline the project’s budget and financial status', 'To provide updates on the project’s progress, issues, and changes'),
('img/Software project management.ppt', 'Which role is responsible for overseeing the entire software project and ensuring it meets its objectives?', 'Project Manager', 'Software Developer', 'Business Analyst', 'Quality Assurance Tester', 'Project Manager'),
('img/Software project management.ppt', 'What does the term “scope creep” refer to in software project management?', 'The uncontrolled expansion of project scope without adjustments to time, cost, and resources', 'The process of defining the project’s objectives and deliverables', 'The gradual increase in project budget due to unforeseen expenses', 'The delay in project schedule due to external factors', 'The uncontrolled expansion of project scope without adjustments to time, cost, and resources'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is sound?', 'A form of energy that travels through a medium as vibrations', 'A type of light wave', 'A static charge on an object', 'A chemical reaction', 'A form of energy that travels through a medium as vibrations'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'Which of the following is required for sound to travel?', 'A medium (solid, liquid, or gas)', 'A vacuum', 'An electrical current', 'A magnetic field', 'A medium (solid, liquid, or gas)'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the unit of measurement for sound intensity?', 'Decibel (dB)', 'Hertz (Hz)', 'Newton (N)', 'Joule (J)', 'Decibel (dB)'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What does the frequency of a sound wave determine?', 'The pitch of the sound', 'The loudness of the sound', 'The speed of sound', 'The direction of sound', 'The pitch of the sound'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the speed of sound in air at room temperature?', 'Approximately 343 meters per second', 'Approximately 1500 meters per second', 'Approximately 300,000 kilometers per second', 'Approximately 100 meters per second', 'Approximately 343 meters per second'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'Which term describes the distance between two consecutive crests of a sound wave?', 'Wavelength', 'Amplitude', 'Frequency', 'Velocity', 'Wavelength'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the term for the height of a sound wave crest, which affects the loudness of the sound?', 'Amplitude', 'Frequency', 'Wavelength', 'Velocity', 'Amplitude'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What phenomenon occurs when sound waves bounce off a surface?', 'Reflection', 'Refraction', 'Diffraction', 'Absorption', 'Reflection'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the term for the bending of sound waves around obstacles or through openings?', 'Diffraction', 'Reflection', 'Refraction', 'Absorption', 'Diffraction'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'Which of the following materials is a good conductor of sound?', 'Metal', 'Wood', 'Plastic', 'Air', 'Metal'),
('img/9.Modern-physicstheory.pdf', 'What does quantum mechanics primarily study?', 'The behavior of particles at the atomic and subatomic levels', 'The movement of planets in the solar system', 'The flow of electric currents in circuits', 'The chemical reactions in living organisms', 'The behavior of particles at the atomic and subatomic levels'),
('img/9.Modern-physicstheory.pdf', 'Who is considered the father of quantum theory?', 'Max Planck', 'Isaac Newton', 'Albert Einstein', 'Niels Bohr', 'Max Planck'),
('img/9.Modern-physicstheory.pdf', 'What is the principle of superposition in quantum mechanics?', 'The principle that a particle can be in multiple states at once', 'The principle that energy is conserved in an isolated system', 'The principle that forces are balanced in equilibrium', 'The principle that particles move in straight lines unless acted upon by a force', 'The principle that a particle can be in multiple states at once'),
('img/9.Modern-physicstheory.pdf', 'What does the Heisenberg Uncertainty Principle state?', 'It is impossible to simultaneously know the exact position and momentum of a particle', 'Energy can neither be created nor destroyed', 'The speed of light is constant in a vacuum', 'For every action, there is an equal and opposite reaction', 'It is impossible to simultaneously know the exact position and momentum of a particle'),
('img/9.Modern-physicstheory.pdf', 'Which experiment demonstrated the wave-particle duality of light?', 'The double-slit experiment', 'The photoelectric effect', 'Rutherford’s gold foil experiment', 'Millikan’s oil drop experiment', 'The double-slit experiment'),
('img/9.Modern-physicstheory.pdf', 'Who proposed the theory of relativity?', 'Albert Einstein', 'James Clerk Maxwell', 'Niels Bohr', 'Werner Heisenberg', 'Albert Einstein'),
('img/9.Modern-physicstheory.pdf', 'What is the main concept of Einstein’s theory of relativity?', 'The interrelation of space, time, and gravity', 'The quantization of energy levels', 'The dual nature of light', 'The conservation of momentum', 'The interrelation of space, time, and gravity'),
('img/9.Modern-physicstheory.pdf', 'What is a quantum?', 'The smallest discrete quantity of a physical property', 'A large mass of energy', 'A continuous wave of light', 'A type of subatomic particle', 'The smallest discrete quantity of a physical property'),
('img/9.Modern-physicstheory.pdf', 'What phenomenon does the photoelectric effect demonstrate?', 'The emission of electrons from a material when exposed to light', 'The interference of light waves', 'The deflection of light by a prism', 'The generation of X-rays in a tube', 'The emission of electrons from a material when exposed to light'),
('img/9.Modern-physicstheory.pdf', 'Which principle states that no two electrons in an atom can have the same set of quantum numbers?', 'Pauli exclusion principle', 'Heisenberg uncertainty principle', 'Hund’s rule', 'Bohr’s postulates', 'Pauli exclusion principle'),
('img/12.VectorsTheory.pdf', 'What is a vector?', 'A quantity with both magnitude and direction', 'A quantity with only magnitude', 'A quantity with only direction', 'A scalar quantity', 'A quantity with both magnitude and direction'),
('img/12.VectorsTheory.pdf', 'Which of the following is an example of a vector?', 'Velocity', 'Temperature', 'Mass', 'Time', 'Velocity'),
('img/12.VectorsTheory.pdf', 'What is the result of adding two vectors?', 'A vector that represents the combined effect of both', 'A scalar sum of the magnitudes', 'The difference between their magnitudes', 'The average of their magnitudes', 'A vector that represents the combined effect of both'),
('img/12.VectorsTheory.pdf', 'What is the term for the length of a vector?', 'Magnitude', 'Direction', 'Component', 'Angle', 'Magnitude'),
('img/12.VectorsTheory.pdf', 'How are vectors typically represented graphically?', 'By arrows', 'By lines', 'By points', 'By shapes', 'By arrows'),
('img/12.VectorsTheory.pdf', 'What is the result when a vector is multiplied by a scalar?', 'A vector in the same or opposite direction with scaled magnitude', 'A scalar quantity', 'A vector perpendicular to the original', 'A vector with zero magnitude', 'A vector in the same or opposite direction with scaled magnitude'),
('img/12.VectorsTheory.pdf', 'Which operation combines two vectors into a single vector?', 'Vector addition', 'Scalar multiplication', 'Dot product', 'Cross product', 'Vector addition'),
('img/12.VectorsTheory.pdf', 'What is the term for the angle between two vectors when calculating the dot product?', 'Theta', 'Phi', 'Alpha', 'Beta', 'Theta'),
('img/12.VectorsTheory.pdf', 'What does the cross product of two vectors result in?', 'A vector perpendicular to both original vectors', 'A scalar product of their magnitudes', 'The sum of their magnitudes', 'A vector in the same direction', 'A vector perpendicular to both original vectors'),
('img/12.VectorsTheory.pdf', 'In which coordinate system are vectors often decomposed into components?', 'Cartesian coordinate system', 'Polar coordinate system', 'Cylindrical coordinate system', 'Spherical coordinate system', 'Cartesian coordinate system'),
('img/keep202.pdf', 'What is the primary function of a lens?', 'To focus light and form images', 'To reflect light', 'To absorb light', 'To disperse light into a spectrum', 'To focus light and form images'),
('img/keep202.pdf', 'What is the focal point of a lens?', 'The point where parallel rays of light converge or appear to diverge from', 'The point where light is absorbed by the lens', 'The center of the lens', 'The point where light is reflected back', 'The point where parallel rays of light converge or appear to diverge from'),
('img/keep202.pdf', 'What type of lens is thicker in the center than at the edges?', 'Convex lens', 'Concave lens', 'Biconcave lens', 'Planar lens', 'Convex lens'),
('img/keep202.pdf', 'What is the principal axis of a lens?', 'The line passing through the center of the lens and the focal points', 'The line perpendicular to the lens surface', 'The line parallel to the optical axis', 'The line passing through the lens curvature', 'The line passing through the center of the lens and the focal points'),
('img/keep202.pdf', 'What is the focal length of a lens?', 'The distance between the lens and its focal point', 'The distance between the lens and the object', 'The diameter of the lens', 'The distance between the two focal points', 'The distance between the lens and its focal point'),
('img/keep202.pdf', 'What type of image does a convex lens form when the object is placed beyond 2F?', 'A real, inverted image smaller than the object', 'A real, inverted image larger than the object', 'A virtual, upright image larger than the object', 'A virtual, upright image smaller than the object', 'A real, inverted image smaller than the object'),
('img/keep202.pdf', 'What type of lens is used to correct nearsightedness?', 'Concave lens', 'Convex lens', 'Bifocal lens', 'Trifocal lens', 'Concave lens'),
('img/keep202.pdf', 'How does a concave lens affect parallel rays of light?', 'It diverges the rays', 'It converges the rays', 'It reflects the rays', 'It absorbs the rays', 'It diverges the rays'),
('img/keep202.pdf', 'What happens to the image formed by a concave lens?', 'The image is virtual and upright', 'The image is real and inverted', 'The image is real and upright', 'The image is virtual and inverted', 'The image is virtual and upright'),
('img/keep202.pdf', 'Which lens is thicker at the edges and thinner in the center?', 'Concave lens', 'Convex lens', 'Bifocal lens', 'Planar lens', 'Concave lens'),
('img/CPU Scheduling.ppt', 'What is the primary goal of CPU scheduling?', 'To allocate CPU time to various processes efficiently', 'To increase the number of processes in the system', 'To optimize memory usage', 'To improve network performance', 'To allocate CPU time to various processes efficiently'),
('img/CPU Scheduling.ppt', 'What does the acronym FCFS stand for in CPU scheduling?', 'First-Come, First-Served', 'First-Come, First-Set', 'First-Come, First-Scheduled', 'Fast-Cycle First-Service', 'First-Come, First-Served'),
('img/CPU Scheduling.ppt', 'What is a key disadvantage of the FCFS scheduling algorithm?', 'It can lead to the \"convoy effect\" where shorter processes wait for longer ones', 'It does not handle priority-based scheduling', 'It is too complex to implement', 'It results in high context switching overhead', 'It can lead to the \"convoy effect\" where shorter processes wait for longer ones'),
('img/CPU Scheduling.ppt', 'What is a priority scheduling algorithm?', 'A method where processes are assigned priorities and the CPU is allocated to the process with the highest priority', 'A method where processes are allocated CPU time in a round-robin fashion', 'A method where processes are executed in the order they arrive', 'A method where CPU time is divided equally among all processes', 'A method where processes are assigned priorities and the CPU is allocated to the process with the highest priority'),
('img/CPU Scheduling.ppt', 'What does the acronym RR stand for in CPU scheduling?', 'Round-Robin', 'Rapid-Round', 'Random-Round', 'Rate-Round', 'Round-Robin'),
('img/CPU Scheduling.ppt', 'What is the main advantage of the Round-Robin (RR) scheduling algorithm?', 'It provides a fair allocation of CPU time among processes', 'It minimizes the turnaround time for all processes', 'It maximizes the throughput of the system', 'It prioritizes processes based on their arrival times', 'It provides a fair allocation of CPU time among processes'),
('img/CPU Scheduling.ppt', 'What is the concept of \"context switching\" in CPU scheduling?', 'The process of saving and loading the state of a CPU so that multiple processes can share a single CPU resource', 'The process of switching between different types of CPU hardware', 'The process of allocating more memory to the CPU', 'The process of changing the CPU scheduling algorithm', 'The process of saving and loading the state of a CPU so that multiple processes can share a single CPU resource'),
('img/CPU Scheduling.ppt', 'What is \"process starvation\" in CPU scheduling?', 'When a process is perpetually denied the CPU because other processes are continually given preference', 'When a process is terminated unexpectedly', 'When a process consumes excessive CPU time', 'When a process is incorrectly scheduled to a lower priority', 'When a process is perpetually denied the CPU because other processes are continually given preference'),
('img/CPU Scheduling.ppt', 'What does \"multilevel feedback queue\" scheduling involve?', 'Using multiple queues with different priority levels and allowing processes to move between them based on their behavior', 'Using a single queue to manage all processes', 'Allocating CPU time based on fixed time slices', 'Assigning priorities to processes and not allowing them to change', 'Using multiple queues with different priority levels and allowing processes to move between them based on their behavior'),
('img/CPU Scheduling.ppt', 'What is the difference between preemptive and non-preemptive scheduling?', 'Preemptive scheduling allows processes to be interrupted and resumed later, while non-preemptive scheduling does not', 'Preemptive scheduling prioritizes I/O-bound processes, while non-preemptive scheduling prioritizes CPU-bound processes', 'Preemptive scheduling uses a fixed time slice, while non-preemptive scheduling uses variable time slices', 'Preemptive scheduling is only used in real-time systems, while non-preemptive scheduling is used in general-purpose systems', 'Preemptive scheduling allows processes to be interrupted and resumed later, while non-preemptive scheduling does not');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/Deadlocks.pdf', 'What is a deadlock in computing?', 'A situation where two or more processes are unable to proceed because each is waiting for the other to release resources', 'A type of system crash caused by hardware failure', 'An error in software code that prevents execution', 'A state where a system is running slowly due to high load', 'A situation where two or more processes are unable to proceed because each is waiting for the other to release resources'),
('img/Deadlocks.pdf', 'Which of the following is a necessary condition for a deadlock to occur?', 'Mutual Exclusion', 'Resource Sharing', 'Non-preemption', 'Process Scheduling', 'Mutual Exclusion'),
('img/Deadlocks.pdf', 'What does the “Hold and Wait” condition in deadlock theory refer to?', 'A process holding resources while waiting for additional resources to be allocated', 'A process that immediately releases resources when it requests more', 'A system that prevents multiple processes from accessing shared resources', 'A method for prioritizing processes in a queue', 'A process holding resources while waiting for additional resources to be allocated'),
('img/Deadlocks.pdf', 'Which technique involves analyzing the state of the system to determine if a deadlock has occurred?', 'Deadlock Detection', 'Deadlock Prevention', 'Deadlock Avoidance', 'Resource Allocation', 'Deadlock Detection'),
('img/Deadlocks.pdf', 'What is deadlock prevention?', 'A strategy to ensure that at least one of the necessary conditions for deadlock cannot occur', 'A method for detecting and resolving deadlocks after they occur', 'A way to avoid potential deadlocks by analyzing system state', 'A technique for managing resources to reduce contention', 'A strategy to ensure that at least one of the necessary conditions for deadlock cannot occur'),
('img/Deadlocks.pdf', 'In which deadlock avoidance algorithm does a process request resources in a manner that does not lead to a deadlock?', 'Banker’s Algorithm', 'Two-Phase Locking', 'Priority Scheduling', 'Round Robin Scheduling', 'Banker’s Algorithm'),
('img/Deadlocks.pdf', 'What is the purpose of resource allocation graphs in deadlock detection?', 'To visually represent the allocation and request of resources to identify potential deadlocks', 'To track the usage of system resources over time', 'To assign priorities to different processes', 'To manage the scheduling of tasks in the system', 'To visually represent the allocation and request of resources to identify potential deadlocks'),
('img/Deadlocks.pdf', 'What does the term “Circular Wait” refer to in the context of deadlocks?', 'A condition where a set of processes are waiting for each other in a circular chain', 'A method for arranging processes in a queue', 'A system where resources are shared among processes', 'A technique for allocating resources based on priority', 'A condition where a set of processes are waiting for each other in a circular chain'),
('img/Deadlocks.pdf', 'Which approach involves designing the system in such a way as to prevent the occurrence of deadlocks?', 'Deadlock Prevention', 'Deadlock Detection', 'Deadlock Recovery', 'Deadlock Avoidance', 'Deadlock Prevention'),
('img/Deadlocks.pdf', 'What is the role of the “Wait-for Graph” in deadlock detection?', 'To represent the relationships between processes and the resources they are waiting for', 'To manage the allocation of resources in the system', 'To schedule processes based on priority', 'To log resource usage and system performance', 'To represent the relationships between processes and the resources they are waiting for'),
('img/introduction to Operating systems.pdf', 'What is the primary role of an operating system?', 'To manage hardware resources and provide a user interface', 'To compile source code into executable programs', 'To connect computers in a network', 'To create and manage databases', 'To manage hardware resources and provide a user interface'),
('img/introduction to Operating systems.pdf', 'Which of the following is an example of a system call?', 'Opening a file', 'Displaying a webpage', 'Calculating a mathematical expression', 'Running a web browser', 'Opening a file'),
('img/introduction to Operating systems.pdf', 'What does the term \"multitasking\" refer to in operating systems?', 'The ability to run multiple processes or threads simultaneously', 'The ability to manage multiple users on a system', 'The ability to handle multiple network connections', 'The ability to schedule tasks in the background', 'The ability to run multiple processes or threads simultaneously'),
('img/introduction to Operating systems.pdf', 'What is a process in the context of operating systems?', 'An instance of a running program', 'A static set of instructions in memory', 'A file stored on disk', 'A user interface component', 'An instance of a running program'),
('img/introduction to Operating systems.pdf', 'What is virtual memory?', 'A memory management technique that gives the illusion of a larger amount of memory than is physically available', 'A type of cache memory used to speed up access to frequently used data', 'A memory area reserved for system processes', 'A special type of disk storage used for backups', 'A memory management technique that gives the illusion of a larger amount of memory than is physically available'),
('img/introduction to Operating systems.pdf', 'What is a file system?', 'A method for storing and organizing files on a storage device', 'A set of system calls for file operations', 'A tool for managing network connections', 'A program for creating and editing files', 'A method for storing and organizing files on a storage device'),
('img/introduction to Operating systems.pdf', 'What does the acronym GUI stand for?', 'Graphical User Interface', 'General User Interface', 'Graphical Unified Interface', 'Generic User Interface', 'Graphical User Interface'),
('img/introduction to Operating systems.pdf', 'What is the purpose of device drivers in an operating system?', 'To enable communication between the operating system and hardware devices', 'To manage system resources', 'To provide a user interface for system management', 'To handle network traffic', 'To enable communication between the operating system and hardware devices'),
('img/introduction to Operating systems.pdf', 'What is a kernel in an operating system?', 'The core component that manages system resources and hardware interactions', 'A type of user interface', 'A software application for managing files', 'A network protocol for data transmission', 'The core component that manages system resources and hardware interactions'),
('img/introduction to Operating systems.pdf', 'What does \"user space\" refer to in an operating system?', 'The memory space where user applications and processes run', 'The area reserved for system kernel operations', 'The space allocated for file system metadata', 'The region used for virtual memory management', 'The memory space where user applications and processes run'),
('img/memory management techniques.pdf', 'What is the primary goal of memory management in an operating system?', 'To efficiently allocate and deallocate memory to processes and ensure optimal use of system resources', 'To increase the speed of the CPU', 'To manage file storage on disk drives', 'To handle network communication between processes', 'To efficiently allocate and deallocate memory to processes and ensure optimal use of system resources'),
('img/memory management techniques.pdf', 'What does paging involve in memory management?', 'Dividing memory into fixed-size blocks and mapping them to physical memory', 'Allocating memory in variable-size chunks', 'Storing data in non-volatile memory', 'Managing memory allocation for input/output operations', 'Dividing memory into fixed-size blocks and mapping them to physical memory'),
('img/memory management techniques.pdf', 'Which memory management technique allows processes to use more memory than physically available by using disk space as virtual memory?', 'Virtual Memory', 'Segmentation', 'Paging', 'Swapping', 'Virtual Memory'),
('img/memory management techniques.pdf', 'What is segmentation in memory management?', 'Dividing memory into segments based on the logical structure of programs', 'Dividing memory into fixed-size pages', 'Allocating memory in continuous blocks', 'Managing memory through a page table', 'Dividing memory into segments based on the logical structure of programs'),
('img/memory management techniques.pdf', 'What is a page table used for in paging?', 'To map virtual addresses to physical addresses', 'To manage file allocation on disk', 'To track memory usage statistics', 'To handle process scheduling', 'To map virtual addresses to physical addresses'),
('img/memory management techniques.pdf', 'What is thrashing in the context of memory management?', 'A situation where excessive paging or swapping leads to decreased system performance', 'The process of cleaning up unused memory blocks', 'The allocation of memory for high-priority processes', 'A method for compressing memory contents', 'A situation where excessive paging or swapping leads to decreased system performance'),
('img/memory management techniques.pdf', 'What is the purpose of memory allocation algorithms?', 'To determine how and where memory will be allocated to processes', 'To increase the speed of memory access', 'To manage the storage of data on disk', 'To handle network data transmission', 'To determine how and where memory will be allocated to processes'),
('img/memory management techniques.pdf', 'Which technique involves moving processes between main memory and disk to free up memory for other processes?', 'Swapping', 'Paging', 'Segmentation', 'Compaction', 'Swapping'),
('img/memory management techniques.pdf', 'What does compaction aim to achieve in memory management?', 'To reduce fragmentation by rearranging memory contents', 'To increase the amount of virtual memory available', 'To optimize the speed of memory access', 'To handle inter-process communication', 'To reduce fragmentation by rearranging memory contents'),
('img/memory management techniques.pdf', 'What is the primary advantage of using virtual memory?', 'It allows processes to use more memory than physically available by utilizing disk space', 'It increases the speed of memory access', 'It simplifies the management of memory allocation', 'It reduces the cost of physical memory', 'It allows processes to use more memory than physically available by utilizing disk space'),
('img/Partial Fractions.pdf', 'What is the purpose of partial fraction decomposition?', 'To break down a rational function into simpler fractions', 'To integrate complex functions directly', 'To solve algebraic equations', 'To find the roots of polynomial equations', 'To break down a rational function into simpler fractions'),
('img/Partial Fractions.pdf', 'When performing partial fraction decomposition, which form is used for linear factors in the denominator?', 'A/(ax+b)', 'A/(x^2+b)', 'A/(x^2+ax+b)', 'A/(x+b)', 'A/(ax+b)'),
('img/Partial Fractions.pdf', 'What is the correct form for partial fraction decomposition when the denominator has repeated linear factors?', 'A/(x-r) + B/(x-r)^2', 'A/(x^2-r) + B/(x-r)^2', 'A/(x-r) + B/(x-r)', 'A/(x^2-r) + B/(x-r)^2', 'A/(x-r) + B/(x-r)^2'),
('img/Partial Fractions.pdf', 'How do you handle quadratic factors in the denominator during partial fraction decomposition?', 'Use the form (Ax+B)/(x^2+bx+c)', 'Use the form A/x^2 + B/x', 'Use the form A/(x^2+b)', 'Use the form A/(x^2+ax)', 'Use the form (Ax+B)/(x^2+bx+c)'),
('img/Partial Fractions.pdf', 'What is the first step in partial fraction decomposition?', 'Express the rational function as a sum of simpler fractions', 'Combine all terms into a single fraction', 'Find the common denominator of all terms', 'Multiply both sides by the denominator', 'Express the rational function as a sum of simpler fractions'),
('img/Partial Fractions.pdf', 'In partial fraction decomposition, what is the role of the constants A, B, C, etc.?', 'To be determined by solving a system of linear equations', 'To represent the roots of the polynomial', 'To provide exact values of the fractions', 'To simplify the original function directly', 'To be determined by solving a system of linear equations'),
('img/Partial Fractions.pdf', 'Which method is commonly used to solve for the constants in partial fraction decomposition?', 'Equating coefficients', 'Substitution method', 'Long division', 'Synthetic division', 'Equating coefficients'),
('img/Partial Fractions.pdf', 'What is a necessary condition for a function to be decomposed into partial fractions?', 'The degree of the numerator must be less than the degree of the denominator', 'The denominator must be a polynomial with distinct roots', 'The function must be an exponential function', 'The function must be a trigonometric function', 'The degree of the numerator must be less than the degree of the denominator'),
('img/Partial Fractions.pdf', 'What is the typical final step in partial fraction decomposition?', 'Integrate each simpler fraction separately', 'Combine all fractions into one', 'Simplify the original function', 'Multiply through by the common denominator', 'Integrate each simpler fraction separately'),
('img/Partial Fractions.pdf', 'When decomposing a rational function with a quadratic denominator, which of the following forms is used?', 'Ax+B/(x^2+bx+c)', 'A/(x^2+bx+c)', 'Ax+B/x^2', 'A/(x^2)+B/(x+c)', 'Ax+B/(x^2+bx+c)'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the sum of the interior angles of a triangle?', '180 degrees', '90 degrees', '360 degrees', '270 degrees', '180 degrees'),
('img/MATHGEOU10Properties_Triangles.pdf', 'In an isosceles triangle, which angles are equal?', 'The two angles opposite the equal sides', 'The three angles of the triangle', 'The two angles adjacent to the equal side', 'The right angle and the other two angles', 'The two angles opposite the equal sides'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the name of a triangle with all three sides of different lengths?', 'Scalene triangle', 'Equilateral triangle', 'Isosceles triangle', 'Right triangle', 'Scalene triangle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'Which type of triangle has one angle greater than 90 degrees?', 'Obtuse triangle', 'Acute triangle', 'Equilateral triangle', 'Right triangle', 'Obtuse triangle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the property of the sides in an equilateral triangle?', 'All sides are equal in length', 'Two sides are equal in length', 'One side is longer than the other two', 'All angles are equal', 'All sides are equal in length'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the hypotenuse of a right triangle?', 'The side opposite the right angle', 'The side adjacent to the right angle', 'The longest side', 'The shortest side', 'The side opposite the right angle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What does the Triangle Inequality Theorem state?', 'The sum of the lengths of any two sides of a triangle must be greater than the length of the remaining side', 'The difference between the lengths of any two sides of a triangle must be greater than the length of the third side', 'The sum of the angles of any triangle is always equal to 90 degrees', 'All sides of a triangle are equal in length', 'The sum of the lengths of any two sides of a triangle must be greater than the length of the remaining side'),
('img/MATHGEOU10Properties_Triangles.pdf', 'In a right triangle, what is the Pythagorean theorem?', 'a² + b² = c², where c is the hypotenuse', 'a² + b² = c², where a and b are the legs', 'a² + b² = 2c, where c is the hypotenuse', 'a² + b² = c, where a and b are the legs', 'a² + b² = c², where c is the hypotenuse'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What type of triangle has all angles less than 90 degrees?', 'Acute triangle', 'Obtuse triangle', 'Right triangle', 'Equilateral triangle', 'Acute triangle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the centroid of a triangle?', 'The point where the three medians intersect', 'The point where the three altitudes intersect', 'The point where the three angle bisectors intersect', 'The point where the three perpendicular bisectors intersect', 'The point where the three medians intersect'),
('img/Laplace.pdf', 'What is the Laplace transform of a function?', 'A method to transform a time-domain function into a frequency-domain function', 'A technique to solve differential equations directly', 'A way to simplify algebraic expressions', 'A process to find the roots of a polynomial', 'A method to transform a time-domain function into a frequency-domain function'),
('img/Laplace.pdf', 'Which of the following is a property of the Laplace transform?', 'Linearity', 'Non-linearity', 'Additivity', 'Multiplicativity', 'Linearity'),
('img/Laplace.pdf', 'What is the Laplace transform of the derivative of a function f(t)?', 'sF(s) - f(0)', 'sF(s) + f(0)', 'F(s) - f(0)', 's^2F(s) - f(0)', 'sF(s) - f(0)'),
('img/Laplace.pdf', 'What is the inverse Laplace transform used for?', 'To convert a function from the frequency domain back to the time domain', 'To simplify algebraic functions', 'To solve for eigenvalues', 'To transform matrices', 'To convert a function from the frequency domain back to the time domain'),
('img/Laplace.pdf', 'What is the Laplace transform of t^n where n is a positive integer?', 'n!/s^(n+1)', '1/s^n', 'n!/s^n', 'n/s^(n+1)', 'n!/s^(n+1)'),
('img/Laplace.pdf', 'What does the convolution theorem state about the Laplace transform?', 'The Laplace transform of the convolution of two functions is the product of their Laplace transforms', 'The Laplace transform of a function is equal to its inverse transform', 'The convolution of two Laplace transforms equals their sum', 'The convolution of a function with itself equals its Laplace transform', 'The Laplace transform of the convolution of two functions is the product of their Laplace transforms'),
('img/Laplace.pdf', 'What is the Laplace transform of sin(at)?', 'a/(s^2 + a^2)', 's/(s^2 + a^2)', 'a/(s + a)', '1/(s^2 + a^2)', 'a/(s^2 + a^2)'),
('img/Laplace.pdf', 'Which function is commonly used as a standard function in Laplace transforms?', 'Heaviside step function', 'Exponential function', 'Logarithmic function', 'Power function', 'Heaviside step function'),
('img/hyperbolicfunctions.pdf', 'What is the definition of the hyperbolic sine function, sinh(x)?', 'sinh(x) = (e^x - e^(-x)) / 2', 'sinh(x) = (e^x + e^(-x)) / 2', 'sinh(x) = e^x - e^(-x)', 'sinh(x) = e^x + e^(-x)', 'sinh(x) = (e^x - e^(-x)) / 2'),
('img/hyperbolicfunctions.pdf', 'What is the definition of the hyperbolic cosine function, cosh(x)?', 'cosh(x) = (e^x + e^(-x)) / 2', 'cosh(x) = (e^x - e^(-x)) / 2', 'cosh(x) = e^x + e^(-x)', 'cosh(x) = e^x - e^(-x)', 'cosh(x) = (e^x + e^(-x)) / 2'),
('img/hyperbolicfunctions.pdf', 'Which hyperbolic function is analogous to the trigonometric function sine?', 'sinh(x)', 'cosh(x)', 'tanh(x)', 'csch(x)', 'sinh(x)'),
('img/hyperbolicfunctions.pdf', 'Which hyperbolic function is analogous to the trigonometric function cosine?', 'cosh(x)', 'sinh(x)', 'tanh(x)', 'csch(x)', 'cosh(x)'),
('img/hyperbolicfunctions.pdf', 'What is the relationship between sinh(x) and cosh(x) in terms of hyperbolic identity?', 'sinh^2(x) + cosh^2(x) = cosh^2(x)', 'sinh^2(x) - cosh^2(x) = -1', 'sinh^2(x) + cosh^2(x) = 1', 'sinh^2(x) - cosh^2(x) = 1', 'sinh^2(x) - cosh^2(x) = -1'),
('img/hyperbolicfunctions.pdf', 'What is the derivative of sinh(x)?', 'cosh(x)', 'sinh(x)', 'e^x', 'e^(-x)', 'cosh(x)'),
('img/hyperbolicfunctions.pdf', 'What is the derivative of cosh(x)?', 'sinh(x)', 'cosh(x)', 'e^x', 'e^(-x)', 'sinh(x)'),
('img/hyperbolicfunctions.pdf', 'What is the value of sinh(0)?', '0', '1', '-1', 'e', '0'),
('img/hyperbolicfunctions.pdf', 'Which hyperbolic function is the reciprocal of sinh(x)?', 'csch(x)', 'sech(x)', 'cotanh(x)', 'tanh(x)', 'csch(x)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of the sum of two angles, θ and φ?', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'sin(θ + φ) = sin(θ) + sin(φ)', 'sin(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'sin(θ + φ) = 2sin(θ)cos(φ)', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of the difference of two angles, θ and φ?', 'cos(θ - φ) = cos(θ)cos(φ) + sin(θ)sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'cos(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'cos(θ - φ) = 2cos(θ) - sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the tangent of the sum of two angles, θ and φ?', 'tan(θ + φ) = (tan(θ) + tan(φ)) / (1 - tan(θ)tan(φ))', 'tan(θ + φ) = tan(θ) + tan(φ)', 'tan(θ + φ) = (tan(θ) - tan(φ)) / (1 + tan(θ)tan(φ))', 'tan(θ + φ) = (1 - tan(θ)tan(φ)) / (tan(θ) + tan(φ))', 'tan(θ + φ) = (tan(θ) + tan(φ)) / (1 - tan(θ)tan(φ))'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of the difference of two angles, θ and φ?', 'sin(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'sin(θ - φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'sin(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'sin(θ - φ) = 2sin(θ)cos(φ)', 'sin(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of the sum of two angles, θ and φ?', 'cos(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'cos(θ + φ) = cos(θ)cos(φ) + sin(θ)sin(φ)', 'cos(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'cos(θ + φ) = cos(θ) - sin(φ)', 'cos(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the tangent of the difference of two angles, θ and φ?', 'tan(θ - φ) = (tan(θ) - tan(φ)) / (1 + tan(θ)tan(φ))', 'tan(θ - φ) = (tan(θ) + tan(φ)) / (1 - tan(θ)tan(φ))', 'tan(θ - φ) = (1 - tan(θ)tan(φ)) / (tan(θ) + tan(φ))', 'tan(θ - φ) = tan(θ)tan(φ) / (1 - tan(θ)tan(φ))', 'tan(θ - φ) = (tan(θ) - tan(φ)) / (1 + tan(θ)tan(φ))'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of 2θ?', 'sin(2θ) = 2sin(θ)cos(θ)', 'sin(2θ) = sin²(θ) - cos²(θ)', 'sin(2θ) = 2cos²(θ) - 1', 'sin(2θ) = sin²(θ) + cos²(θ)', 'sin(2θ) = 2sin(θ)cos(θ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of 2θ?', 'cos(2θ) = cos²(θ) - sin²(θ)', 'cos(2θ) = 2cos(θ)sin(θ)', 'cos(2θ) = cos²(θ) + sin²(θ)', 'cos(2θ) = 1 - 2sin²(θ)', 'cos(2θ) = cos²(θ) - sin²(θ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the tangent of 2θ?', 'tan(2θ) = 2tan(θ) / (1 - tan²(θ))', 'tan(2θ) = (1 - tan²(θ)) / (2tan(θ))', 'tan(2θ) = tan²(θ) / (1 - tan(θ))', 'tan(2θ) = (tan(θ) + tan(θ)) / (1 - tan²(θ))', 'tan(2θ) = 2tan(θ) / (1 - tan²(θ))'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of the difference between two angles, θ and φ?', 'cos(θ - φ) = cos(θ)cos(φ) + sin(θ)sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'cos(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'cos(θ - φ) = 1 - cos(θ)sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) + sin(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of the sum of two angles, θ and φ?', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'sin(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'sin(θ + φ) = sin(θ) - cos(φ)', 'sin(θ + φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of sine?', 'arcsin', 'arccos', 'arctan', 'arccot', 'arcsin'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the range of the arcsine function?', '-π/2 to π/2', '0 to π', '0 to 2π', '-π to π', '-π/2 to π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the value of arcsin(1)?', 'π/2', 'π', '0', '3π/2', 'π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of cosine?', 'arccos', 'arcsin', 'arctan', 'arccot', 'arccos'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the range of the arccosine function?', '0 to π', '-π/2 to π/2', '0 to 2π', '-π to π', '0 to π'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the value of arccos(0)?', 'π/2', 'π', '0', '3π/2', 'π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of tangent?', 'arctan', 'arccos', 'arcsin', 'arccot', 'arctan'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the range of the arctangent function?', '-π/2 to π/2', '0 to π', '-π to π', '0 to 2π', '-π/2 to π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the value of arctan(1)?', 'π/4', 'π/2', 'π', '3π/4', 'π/4'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of cotangent?', 'arccot', 'arctan', 'arcsin', 'arccos', 'arccot'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the definition of a limit of a function as x approaches a value?', 'The value that the function approaches as x gets closer to that value', 'The value of the function at x', 'The maximum value of the function', 'The average value of the function over an interval', 'The value that the function approaches as x gets closer to that value'),
('img/311_Maths_Eng_Lesson25.pdf', 'What does it mean if the limit of a function as x approaches a point is infinite?', 'The function increases or decreases without bound as x approaches the point', 'The function approaches a finite value', 'The function is not defined at that point', 'The function has a vertical asymptote at that point', 'The function increases or decreases without bound as x approaches the point'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the limit of f(x) = 2x as x approaches 3?', '6', '3', '2', '5', '6'),
('img/311_Maths_Eng_Lesson25.pdf', 'Which of the following statements is true about limits?', 'Limits must exist from both sides of a point for the limit at that point to exist', 'Limits can exist from only one side of a point', 'Limits are always finite', 'Limits depend on the function being continuous', 'Limits must exist from both sides of a point for the limit at that point to exist'),
('img/311_Maths_Eng_Lesson25.pdf', 'What does continuity at a point require?', 'The function must be defined at the point, the limit must exist at the point, and the limit must equal the function value', 'The function must be defined at the point', 'The function must be continuous everywhere', 'The limit must be zero at the point', 'The function must be defined at the point, the limit must exist at the point, and the limit must equal the function value'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is a removable discontinuity?', 'A discontinuity that can be removed by redefining the function at a single point', 'A discontinuity that cannot be removed', 'A discontinuity where the function is not defined', 'A discontinuity where the function has a vertical asymptote', 'A discontinuity that can be removed by redefining the function at a single point'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the definition of a function being continuous over an interval?', 'The function is continuous at every point within the interval', 'The function has no discontinuities anywhere', 'The function is differentiable within the interval', 'The function has the same value at the endpoints of the interval', 'The function is continuous at every point within the interval'),
('img/311_Maths_Eng_Lesson25.pdf', 'Which of the following is an example of a function with a jump discontinuity?', 'A piecewise function with different values on different intervals', 'A function with an asymptote', 'A function with a hole', 'A function with a removable discontinuity', 'A piecewise function with different values on different intervals'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the limit of f(x) = 1/x as x approaches 0 from the positive side?', 'Positive infinity', 'Negative infinity', 'Zero', 'One', 'Positive infinity'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of x with respect to x?', 'x²/2 + C', 'x² + C', '2x + C', 'x + C', 'x²/2 + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of e^x with respect to x?', 'e^x + C', 'e^x - C', 'x e^x + C', 'e^x/x + C', 'e^x + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of 1/x with respect to x?', 'ln|x| + C', '1/x² + C', 'x ln|x| + C', 'x + C', 'ln|x| + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of sin(x) with respect to x?', '-cos(x) + C', 'cos(x) + C', '-sin(x) + C', 'sin(x) + C', '-cos(x) + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of cos(x) with respect to x?', 'sin(x) + C', '-sin(x) + C', 'cos(x) + C', '-cos(x) + C', 'sin(x) + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of x² with respect to x?', 'x³/3 + C', 'x³ + C', '3x² + C', 'x²/2 + C', 'x³/3 + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of a constant k with respect to x?', 'kx + C', 'k/x + C', 'k²x + C', 'k/x² + C', 'kx + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of 1 with respect to x?', 'x + C', 'x² + C', '1/x + C', 'x²/2 + C', 'x + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the method of integration by parts used for?', 'To integrate the product of two functions', 'To integrate functions with polynomial denominators', 'To find antiderivatives of exponential functions', 'To solve differential equations', 'To integrate the product of two functions'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the formula for integration by parts?', '∫u dv = uv - ∫v du', '∫u dv = uv + ∫v du', '∫u dv = uv - ∫u du', '∫u dv = v du - ∫v du', '∫u dv = uv - ∫v du'),
('img/java_tutorial.pdf', 'What is Java primarily used for?', 'Developing web applications, mobile apps, and enterprise software', 'Designing graphics and animations', 'Creating low-level system software', 'Managing hardware resources', 'Developing web applications, mobile apps, and enterprise software'),
('img/java_tutorial.pdf', 'What does the acronym \"JVM\" stand for?', 'Java Virtual Machine', 'Java Variable Manager', 'Java Visual Markup', 'Java Verification Module', 'Java Virtual Machine'),
('img/java_tutorial.pdf', 'Which keyword is used to define a class in Java?', 'class', 'define', 'struct', 'object', 'class'),
('img/java_tutorial.pdf', 'What is the purpose of the \"main\" method in a Java program?', 'To serve as the entry point for the program execution', 'To define the data types used in the program', 'To handle user input', 'To manage memory allocation', 'To serve as the entry point for the program execution'),
('img/java_tutorial.pdf', 'What does the term \"inheritance\" refer to in Java?', 'A mechanism where one class acquires properties and behaviors of another class', 'A method for managing memory', 'A technique for handling exceptions', 'A way to create user interfaces', 'A mechanism where one class acquires properties and behaviors of another class'),
('img/java_tutorial.pdf', 'What is an interface in Java?', 'A reference type that can contain method signatures but no implementation', 'A class that defines data fields and methods', 'A type of exception handling mechanism', 'A method for managing threads', 'A reference type that can contain method signatures but no implementation'),
('img/java_tutorial.pdf', 'Which Java keyword is used to handle exceptions?', 'try', 'handle', 'catch', 'error', 'try'),
('img/java_tutorial.pdf', 'What does the \"public\" keyword signify in Java?', 'That the member or method can be accessed from any other class', 'That the member or method is private to the class', 'That the member or method is only accessible within the package', 'That the member or method is protected and can be accessed by subclasses', 'That the member or method can be accessed from any other class'),
('img/java_tutorial.pdf', 'What is the purpose of the \"super\" keyword in Java?', 'To call a method or constructor of the superclass from a subclass', 'To define a static variable', 'To create a new thread', 'To handle input/output operations', 'To call a method or constructor of the superclass from a subclass'),
('img/java_tutorial.pdf', 'What does the term \"polymorphism\" mean in Java?', 'The ability of different classes to be treated as instances of the same class through a common interface', 'The process of defining multiple methods with the same name but different parameters', 'The mechanism of hiding data and providing access through methods', 'The process of creating objects from a class', 'The ability of different classes to be treated as instances of the same class through a common interface'),
('img/java_files_io.pdf', 'What is the primary purpose of Java I/O?', 'To handle input and output operations in Java applications', 'To manage memory allocation in Java', 'To connect to databases in Java', 'To define the structure of Java classes', 'To handle input and output operations in Java applications'),
('img/java_files_io.pdf', 'Which class is used for reading character data in Java?', 'FileReader', 'FileWriter', 'BufferedReader', 'ObjectInputStream', 'FileReader'),
('img/java_files_io.pdf', 'Which class is used to write data to a file in Java?', 'FileWriter', 'FileReader', 'BufferedWriter', 'PrintStream', 'FileWriter'),
('img/java_files_io.pdf', 'What does the BufferedReader class do in Java?', 'Reads text from a character-based input stream efficiently', 'Writes text to a character-based output stream', 'Handles binary data input and output', 'Provides a way to serialize objects', 'Reads text from a character-based input stream efficiently'),
('img/java_files_io.pdf', 'What is the purpose of the FileInputStream class?', 'To read byte data from a file', 'To write character data to a file', 'To read and write objects from a file', 'To manage file paths and directories', 'To read byte data from a file'),
('img/java_files_io.pdf', 'Which method is used to read data from a file using FileInputStream?', 'read()', 'write()', 'flush()', 'close()', 'read()'),
('img/java_files_io.pdf', 'What is the purpose of the ObjectOutputStream class in Java I/O?', 'To serialize objects and write them to an output stream', 'To read objects from an input stream', 'To manage file metadata', 'To handle file system operations', 'To serialize objects and write them to an output stream'),
('img/java_files_io.pdf', 'Which class provides methods for reading and writing text files efficiently by buffering data?', 'BufferedReader', 'FileReader', 'FileWriter', 'PrintWriter', 'BufferedReader'),
('img/java_files_io.pdf', 'What is the Serializable interface used for in Java?', 'To mark a class whose objects can be serialized and deserialized', 'To provide methods for reading and writing files', 'To manage network connections', 'To handle concurrency in Java applications', 'To mark a class whose objects can be serialized and deserialized'),
('img/collections in java.pdf', 'What is the primary purpose of Java Collections Framework?', 'To provide data structures and algorithms for managing groups of objects', 'To handle low-level memory management', 'To perform file I/O operations', 'To create graphical user interfaces', 'To provide data structures and algorithms for managing groups of objects'),
('img/collections in java.pdf', 'Which interface in the Java Collections Framework represents a collection of elements with unique keys?', 'Map', 'List', 'Set', 'Queue', 'Map'),
('img/collections in java.pdf', 'What does the \"List\" interface in Java Collections Framework represent?', 'An ordered collection that allows duplicate elements', 'A collection of unique elements with no specific order', 'A collection of key-value pairs', 'A collection of elements that are processed in a FIFO manner', 'An ordered collection that allows duplicate elements'),
('img/collections in java.pdf', 'Which class in Java Collections Framework implements the \"List\" interface?', 'ArrayList', 'HashSet', 'TreeMap', 'PriorityQueue', 'ArrayList'),
('img/collections in java.pdf', 'What is the primary feature of the \"Set\" interface in Java?', 'It does not allow duplicate elements', 'It maintains elements in a specific order', 'It provides fast access to elements by index', 'It allows elements to be accessed by a key', 'It does not allow duplicate elements'),
('img/collections in java.pdf', 'Which class in Java Collections Framework implements the \"Set\" interface?', 'HashSet', 'LinkedList', 'ArrayList', 'Hashtable', 'HashSet'),
('img/collections in java.pdf', 'What does the \"Queue\" interface in Java Collections Framework represent?', 'A collection designed for holding elements prior to processing in a FIFO manner', 'A collection of elements with no specific order', 'A collection of unique key-value pairs', 'A collection with elements that can be accessed by index', 'A collection designed for holding elements prior to processing in a FIFO manner'),
('img/collections in java.pdf', 'Which class in Java Collections Framework provides a queue with priority ordering?', 'PriorityQueue', 'LinkedList', 'ArrayDeque', 'HashSet', 'PriorityQueue'),
('img/collections in java.pdf', 'What is the purpose of the \"Collections\" utility class in Java?', 'To provide static methods for operating on collections', 'To define new collection types', 'To manage memory usage in collections', 'To serialize and deserialize collections', 'To provide static methods for operating on collections'),
('img/collections in java.pdf', 'Which interface would you use to represent a collection that maintains elements in a sorted order?', 'SortedSet', 'Set', 'List', 'Queue', 'SortedSet'),
('img/Exception Handling in java.pdf', 'What is the primary purpose of exception handling in Java?', 'To manage runtime errors and ensure normal program execution', 'To compile the source code into bytecode', 'To create graphical user interfaces', 'To handle file input and output operations', 'To manage runtime errors and ensure normal program execution'),
('img/Exception Handling in java.pdf', 'Which keyword is used to start an exception handling block in Java?', 'try', 'catch', 'throw', 'finally', 'try'),
('img/Exception Handling in java.pdf', 'Which keyword is used to throw an exception manually in Java?', 'throw', 'catch', 'try', 'finally', 'throw'),
('img/Exception Handling in java.pdf', 'Which class is the base class for all exceptions in Java?', 'Exception', 'Throwable', 'Error', 'RuntimeException', 'Throwable'),
('img/Exception Handling in java.pdf', 'Which exception type is used for programming errors that are typically not expected to be handled by the program?', 'Error', 'Exception', 'RuntimeException', 'IOException', 'Error'),
('img/Applet in Java.pdf', 'What is a Java applet?', 'A small program that runs in a web browser or applet viewer', 'A standalone application that runs on the desktop', 'A server-side program that manages web requests', 'A library for graphical user interface components', 'A small program that runs in a web browser or applet viewer'),
('img/Applet in Java.pdf', 'Which class is the base class for all applets?', 'Applet', 'Application', 'JFrame', 'Swing', 'Applet'),
('img/Applet in Java.pdf', 'What method is used to initialize an applet?', 'init()', 'start()', 'paint()', 'stop()', 'init()'),
('img/Applet in Java.pdf', 'What method is called to display the applet on the screen?', 'paint()', 'init()', 'start()', 'stop()', 'paint()'),
('img/Applet in Java.pdf', 'Which method is called when an applet is stopped or unloaded?', 'stop()', 'init()', 'paint()', 'start()', 'stop()'),
('img/Applet in Java.pdf', 'What is the purpose of the \"destroy()\" method in an applet?', 'To clean up resources before the applet is destroyed', 'To initialize applet parameters', 'To start applet execution', 'To draw on the applet window', 'To clean up resources before the applet is destroyed'),
('img/Applet in Java.pdf', 'How do applets handle user interaction events, like mouse clicks?', 'By overriding event handling methods such as mousePressed()', 'By using the main() method', 'By creating new threads', 'By calling the start() method', 'By overriding event handling methods such as mousePressed()'),
('img/Applet in Java.pdf', 'What is the primary purpose of the \"getParameter()\" method in an applet?', 'To retrieve parameters passed to the applet from the HTML code', 'To initialize applet resources', 'To paint graphics on the applet window', 'To manage applet lifecycle events', 'To retrieve parameters passed to the applet from the HTML code'),
('img/Applet in Java.pdf', 'Which HTML tag is used to embed an applet in a web page?', '<applet>', '<embed>', '<object>', '<java>', '<applet>'),
('img/Applet in Java.pdf', 'What is a major limitation of Java applets compared to modern web technologies?', 'Security restrictions and limited browser support', 'Higher performance and faster execution', 'Better graphical capabilities', 'Full access to system resources', 'Security restrictions and limited browser support'),
('img/Entrepreneurship_deployment.pdf', 'What is the primary goal of entrepreneurship?', 'To create and manage new business ventures', 'To invest in stocks and bonds', 'To work in a corporate environment', 'To pursue higher education', 'To create and manage new business ventures'),
('img/Entrepreneurship_deployment.pdf', 'What is a common characteristic of successful entrepreneurs?', 'Risk-taking ability', 'Avoiding new challenges', 'Strict adherence to routines', 'Working alone', 'Risk-taking ability'),
('img/Entrepreneurship_deployment.pdf', 'Which of the following is a typical stage in the entrepreneurial process?', 'Idea generation', 'Employee recruitment', 'Market analysis', 'Product launch', 'Idea generation'),
('img/Entrepreneurship_deployment.pdf', 'What is a business plan?', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts', 'A list of tasks to complete in the first week of operations', 'A legal document for registering a business name', 'A summary of market trends and competitor analysis', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts'),
('img/Entrepreneurship_deployment.pdf', 'What is market research used for?', 'To understand customer needs and market conditions', 'To develop a new product design', 'To manage day-to-day operations', 'To create financial statements', 'To understand customer needs and market conditions'),
('img/Entrepreneurship_deployment.pdf', 'What does ROI stand for in business?', 'Return on Investment', 'Rate of Interest', 'Revenue of Investment', 'Return on Income', 'Return on Investment'),
('img/Entrepreneurship_deployment.pdf', 'Which financial statement shows a company’s profitability over a period of time?', 'Income Statement', 'Balance Sheet', 'Cash Flow Statement', 'Statement of Retained Earnings', 'Income Statement'),
('img/Entrepreneurship_deployment.pdf', 'What is a startup accelerator?', 'A program that provides funding and mentorship to early-stage startups', 'A software tool for managing business operations', 'A marketing strategy for growing customer base', 'A type of business loan', 'A program that provides funding and mentorship to early-stage startups'),
('img/Entrepreneurship_deployment.pdf', 'What is the purpose of a pitch deck?', 'To present a business idea to potential investors or partners', 'To track daily sales and expenses', 'To manage human resources', 'To analyze market trends', 'To present a business idea to potential investors or partners'),
('img/Entrepreneurship_deployment.pdf', 'What is the difference between a sole proprietorship and a corporation?', 'A corporation provides limited liability protection while a sole proprietorship does not', 'A sole proprietorship can issue shares of stock', 'A corporation has fewer regulatory requirements', 'A sole proprietorship offers more tax benefits', 'A corporation provides limited liability protection while a sole proprietorship does not'),
('img/Entrepreneurship_deployment.pdf', 'What is the primary goal of entrepreneurship?', 'To create and manage new business ventures', 'To invest in stocks and bonds', 'To work in a corporate environment', 'To pursue higher education', 'To create and manage new business ventures'),
('img/Entrepreneurship_deployment.pdf', 'What is a common characteristic of successful entrepreneurs?', 'Risk-taking ability', 'Avoiding new challenges', 'Strict adherence to routines', 'Working alone', 'Risk-taking ability'),
('img/Entrepreneurship_deployment.pdf', 'Which of the following is a typical stage in the entrepreneurial process?', 'Idea generation', 'Employee recruitment', 'Market analysis', 'Product launch', 'Idea generation'),
('img/Entrepreneurship_deployment.pdf', 'What is a business plan?', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts', 'A list of tasks to complete in the first week of operations', 'A legal document for registering a business name', 'A summary of market trends and competitor analysis', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts'),
('img/Entrepreneurship_deployment.pdf', 'What is market research used for?', 'To understand customer needs and market conditions', 'To develop a new product design', 'To manage day-to-day operations', 'To create financial statements', 'To understand customer needs and market conditions'),
('img/Entrepreneurship_deployment.pdf', 'What does ROI stand for in business?', 'Return on Investment', 'Rate of Interest', 'Revenue of Investment', 'Return on Income', 'Return on Investment'),
('img/Entrepreneurship_deployment.pdf', 'Which financial statement shows a company’s profitability over a period of time?', 'Income Statement', 'Balance Sheet', 'Cash Flow Statement', 'Statement of Retained Earnings', 'Income Statement'),
('img/Entrepreneurship_deployment.pdf', 'What is a startup accelerator?', 'A program that provides funding and mentorship to early-stage startups', 'A software tool for managing business operations', 'A marketing strategy for growing customer base', 'A type of business loan', 'A program that provides funding and mentorship to early-stage startups'),
('img/Entrepreneurship_deployment.pdf', 'What is the purpose of a pitch deck?', 'To present a business idea to potential investors or partners', 'To track daily sales and expenses', 'To manage human resources', 'To analyze market trends', 'To present a business idea to potential investors or partners'),
('img/Entrepreneurship_deployment.pdf', 'What is the difference between a sole proprietorship and a corporation?', 'A corporation provides limited liability protection while a sole proprietorship does not', 'A sole proprietorship can issue shares of stock', 'A corporation has fewer regulatory requirements', 'A sole proprietorship offers more tax benefits', 'A corporation provides limited liability protection while a sole proprietorship does not'),
('img/organization structure and behaviour.pdf', 'What is organizational structure?', 'The way in which the roles, responsibilities, and authority are distributed within an organization', 'The process of managing employee performance', 'The method of setting business goals and objectives', 'The strategy for marketing products and services', 'The way in which the roles, responsibilities, and authority are distributed within an organization'),
('img/organization structure and behaviour.pdf', 'Which type of organizational structure is characterized by a clear hierarchy and rigidly defined roles?', 'Hierarchical structure', 'Matrix structure', 'Flat structure', 'Network structure', 'Hierarchical structure'),
('img/organization structure and behaviour.pdf', 'What is a matrix structure in an organization?', 'A structure where employees report to both functional and project managers', 'A structure with a single chain of command', 'A structure with no formal hierarchy', 'A structure with multiple levels of management', 'A structure where employees report to both functional and project managers'),
('img/organization structure and behaviour.pdf', 'What does organizational behavior study?', 'How individuals and groups act within an organization', 'The financial performance of an organization', 'The technology used in business operations', 'The market trends affecting an industry', 'How individuals and groups act within an organization'),
('img/organization structure and behaviour.pdf', 'Which theory suggests that employees are motivated by their needs being fulfilled in a hierarchy?', 'Maslow’s Hierarchy of Needs', 'Herzberg’s Two-Factor Theory', 'McGregor’s Theory X and Theory Y', 'Equity Theory', 'Maslow’s Hierarchy of Needs'),
('img/organization structure and behaviour.pdf', 'What is the primary focus of Herzberg’s Two-Factor Theory?', 'The distinction between hygiene factors and motivators', 'The relationship between job satisfaction and financial incentives', 'The impact of management styles on employee performance', 'The influence of organizational culture on productivity', 'The distinction between hygiene factors and motivators'),
('img/organization structure and behaviour.pdf', 'Which organizational behavior concept involves employees perception of fairness in the workplace?', 'Equity Theory', 'Expectancy Theory', 'Reinforcement Theory', 'Social Learning Theory', 'Equity Theory'),
('img/organization structure and behaviour.pdf', 'What is the purpose of organizational culture?', 'To shape and guide the behavior of employees within an organization', 'To establish the financial objectives of the organization', 'To design the physical layout of the workplace', 'To manage the supply chain and logistics', 'To shape and guide the behavior of employees within an organization'),
('img/organization structure and behaviour.pdf', 'In a flat organizational structure, what is typically reduced?', 'The number of management levels', 'The amount of employee responsibility', 'The level of team collaboration', 'The scope of organizational goals', 'The number of management levels');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/organization structure and behaviour.pdf', 'What is a key characteristic of a decentralized organizational structure?', 'Decision-making authority is distributed among various levels of management', 'All decisions are made by top management only', 'The organization has a single, unified control system', 'The structure is highly formalized and rigid', 'Decision-making authority is distributed among various levels of management'),
('img/material management.pdf', 'What is material management?', 'The process of planning, organizing, and controlling material resources to meet production needs', 'The process of marketing products to customers', 'The management of financial resources within an organization', 'The organization of human resources for effective team performance', 'The process of planning, organizing, and controlling material resources to meet production needs'),
('img/material management.pdf', 'What is the primary goal of inventory management?', 'To ensure materials are available for production while minimizing excess inventory', 'To maximize the number of suppliers used', 'To reduce the cost of production by increasing inventory', 'To store materials indefinitely without concern for cost', 'To ensure materials are available for production while minimizing excess inventory'),
('img/material management.pdf', 'Which inventory management method involves tracking inventory in real-time as items are added or removed?', 'Just-in-Time (JIT)', 'Periodic Review', 'Economic Order Quantity (EOQ)', 'FIFO (First In, First Out)', 'Just-in-Time (JIT)'),
('img/material management.pdf', 'What does the Economic Order Quantity (EOQ) model help determine?', 'The optimal order quantity that minimizes total inventory costs', 'The best time to reorder materials', 'The most cost-effective supplier', 'The ideal inventory level for safety stock', 'The optimal order quantity that minimizes total inventory costs'),
('img/material management.pdf', 'Which term refers to the amount of inventory held to prevent stockouts due to demand variability?', 'Safety stock', 'Reorder point', 'Cycle stock', 'Lead time inventory', 'Safety stock'),
('img/material management.pdf', 'What is the purpose of the reorder point in inventory management?', 'To trigger the ordering of new inventory when stock levels fall below a specified level', 'To determine the quantity of inventory to order', 'To set the minimum stock level for safety', 'To calculate the total cost of inventory holding', 'To trigger the ordering of new inventory when stock levels fall below a specified level'),
('img/material management.pdf', 'What does the Just-in-Time (JIT) inventory system aim to achieve?', 'To minimize inventory levels and reduce waste by receiving goods only as they are needed', 'To maintain high levels of inventory to ensure production continuity', 'To order materials in large quantities to take advantage of bulk discounts', 'To stockpile materials for future production needs', 'To minimize inventory levels and reduce waste by receiving goods only as they are needed'),
('img/material management.pdf', 'Which inventory management technique is based on the principle that the oldest inventory items are sold or used first?', 'FIFO (First In, First Out)', 'LIFO (Last In, First Out)', 'JIT (Just-In-Time)', 'ABC Analysis', 'FIFO (First In, First Out)'),
('img/material management.pdf', 'What is the primary benefit of using ABC analysis in inventory management?', 'To prioritize inventory items based on their importance and value', 'To automate the inventory ordering process', 'To standardize inventory quantities across all products', 'To calculate the reorder point for all items', 'To prioritize inventory items based on their importance and value'),
('img/material management.pdf', 'What role does material handling play in material management?', 'To facilitate the efficient movement and storage of materials within the supply chain', 'To manage supplier relationships and negotiate contracts', 'To plan and forecast future material requirements', 'To ensure compliance with regulatory standards', 'To facilitate the efficient movement and storage of materials within the supply chain'),
('img/production management.pdf', 'What is production management?', 'The process of planning, organizing, directing, and controlling production activities to achieve efficient and effective production', 'The management of financial resources in an organization', 'The process of marketing and sales', 'The administration of human resources', 'The process of planning, organizing, directing, and controlling production activities to achieve efficient and effective production'),
('img/production management.pdf', 'What is the main goal of production planning?', 'To ensure that production processes are optimized and meet demand', 'To manage inventory levels', 'To handle employee scheduling', 'To oversee financial performance', 'To ensure that production processes are optimized and meet demand'),
('img/production management.pdf', 'Which production strategy involves producing goods only when orders are received?', 'Just-in-Time (JIT)', 'Mass Production', 'Batch Production', 'Continuous Production', 'Just-in-Time (JIT)'),
('img/production management.pdf', 'What is the purpose of a Bill of Materials (BOM)?', 'To list all raw materials and components required to produce a product', 'To outline the production process steps', 'To define the cost of production', 'To plan the workforce requirements', 'To list all raw materials and components required to produce a product'),
('img/production management.pdf', 'Which inventory management method involves maintaining high inventory levels to ensure production continuity?', 'Safety Stock', 'Economic Order Quantity (EOQ)', 'Just-in-Time (JIT)', 'Cycle Stock', 'Safety Stock'),
('img/production management.pdf', 'What does the term \"lead time\" refer to in production management?', 'The time taken from placing an order for materials to receiving them', 'The time required to complete a production run', 'The duration of a production cycle', 'The time for product development', 'The time taken from placing an order for materials to receiving them'),
('img/production management.pdf', 'What is the purpose of production scheduling?', 'To allocate resources and plan production activities to meet demand efficiently', 'To track inventory levels', 'To manage supplier relationships', 'To set marketing strategies', 'To allocate resources and plan production activities to meet demand efficiently'),
('img/production management.pdf', 'Which production process is characterized by producing products in large quantities in a continuous flow?', 'Continuous Production', 'Batch Production', 'Job Shop Production', 'Mass Production', 'Continuous Production'),
('img/production management.pdf', 'What is the main objective of quality control in production?', 'To ensure that products meet specified quality standards and reduce defects', 'To increase production speed', 'To lower production costs', 'To expand product lines', 'To ensure that products meet specified quality standards and reduce defects'),
('img/production management.pdf', 'What does \"capacity planning\" involve in production management?', 'Determining the production capacity needed to meet demand', 'Planning the layout of the production facility', 'Managing supplier relationships', 'Forecasting future sales', 'Determining the production capacity needed to meet demand'),
('img/8086 micro processor.pdf', 'What is the primary function of the 8086 microprocessor?', 'To execute instructions and perform arithmetic and logical operations', 'To manage network communications', 'To control peripheral devices', 'To handle file system operations', 'To execute instructions and perform arithmetic and logical operations'),
('img/8086 micro processor.pdf', 'What is the word size of the 8086 microprocessor?', '16 bits', '8 bits', '32 bits', '64 bits', '16 bits'),
('img/8086 micro processor.pdf', 'How many address lines does the 8086 microprocessor have?', '20 address lines', '16 address lines', '24 address lines', '32 address lines', '20 address lines'),
('img/8086 micro processor.pdf', 'Which register in the 8086 microprocessor is used to store the offset address in a segment?', 'Base Register', 'Index Register', 'Stack Pointer', 'Offset Register', 'Base Register'),
('img/8086 micro processor.pdf', 'What are the two main types of instructions in the 8086 microprocessor?', 'Data transfer and arithmetic instructions', 'Control and logic instructions', 'Input and output instructions', 'Branch and jump instructions', 'Data transfer and arithmetic instructions'),
('img/8086 micro processor.pdf', 'Which of the following is a 16-bit general-purpose register in the 8086 microprocessor?', 'AX', 'AL', 'AH', 'BH', 'AX'),
('img/8086 micro processor.pdf', 'What is the function of the Instruction Pointer (IP) register in the 8086 microprocessor?', 'To hold the address of the next instruction to be executed', 'To store the result of arithmetic operations', 'To keep track of stack operations', 'To store the base address of a data segment', 'To hold the address of the next instruction to be executed'),
('img/8086 micro processor.pdf', 'What does the term \"segmentation\" refer to in the 8086 microprocessor?', 'The division of memory into segments for efficient management', 'The process of converting data into instructions', 'The method of accessing data from external devices', 'The technique for optimizing processor speed', 'The division of memory into segments for efficient management'),
('img/8086 micro processor.pdf', 'Which of the following is an example of a control instruction in the 8086 microprocessor?', 'JMP', 'ADD', 'MOV', 'SUB', 'JMP'),
('img/computer organisation.pdf', 'What is computer organization?', 'The study of the internal structure and operation of a computer system', 'The design of software applications and user interfaces', 'The management of computer networks and data security', 'The process of creating computer algorithms and data structures', 'The study of the internal structure and operation of a computer system'),
('img/computer organisation.pdf', 'What does the Central Processing Unit (CPU) do in a computer?', 'Executes instructions and processes data', 'Stores data permanently', 'Provides the interface between hardware and software', 'Manages the flow of data between peripherals', 'Executes instructions and processes data'),
('img/computer organisation.pdf', 'What is the purpose of the memory hierarchy in computer systems?', 'To balance speed and cost by using different types of memory', 'To increase the overall storage capacity of the system', 'To manage network connections and data transfer', 'To optimize software performance and reliability', 'To balance speed and cost by using different types of memory'),
('img/computer organisation.pdf', 'Which type of memory is used for temporary storage of data that is quickly accessible by the CPU?', 'Cache Memory', 'Hard Disk Drive', 'Optical Disk', 'RAM', 'Cache Memory'),
('img/computer organisation.pdf', 'What is an instruction set architecture (ISA)?', 'The collection of instructions that a CPU can execute', 'The physical layout of the computer’s hardware components', 'The software layer that interacts with the hardware', 'The process of designing computer algorithms', 'The collection of instructions that a CPU can execute'),
('img/computer organisation.pdf', 'What does the term “bus” refer to in computer organization?', 'A communication pathway that connects different components of a computer system', 'A type of storage device used for backup', 'A software application for managing hardware resources', 'A method for encrypting data during transmission', 'A communication pathway that connects different components of a computer system'),
('img/computer organisation.pdf', 'What is the function of the ALU (Arithmetic Logic Unit) in the CPU?', 'To perform arithmetic and logical operations', 'To manage data storage and retrieval', 'To control the flow of data between components', 'To provide the user interface for the computer', 'To perform arithmetic and logical operations'),
('img/computer organisation.pdf', 'Which component of the CPU is responsible for fetching and decoding instructions?', 'Control Unit', 'Arithmetic Logic Unit (ALU)', 'Cache Memory', 'Registers', 'Control Unit'),
('img/computer organisation.pdf', 'What is virtual memory?', 'A technique that allows the use of disk space to extend the apparent size of physical memory', 'A type of memory used for high-speed processing', 'The amount of memory available in a computer’s RAM', 'A method for managing memory in software applications', 'A technique that allows the use of disk space to extend the apparent size of physical memory'),
('img/computer organisation.pdf', 'What does “pipelining” refer to in CPU architecture?', 'The technique of overlapping instruction execution to improve performance', 'The method of managing memory allocation', 'The process of optimizing disk storage', 'The design of network communication protocols', 'The technique of overlapping instruction execution to improve performance'),
('img/input output organisation.pdf', 'What is the primary function of I/O organization in a computer system?', 'To manage and control the input and output operations between the computer and external devices', 'To perform arithmetic and logical operations', 'To manage memory and storage devices', 'To handle network communications', 'To manage and control the input and output operations between the computer and external devices'),
('img/input output organisation.pdf', 'What is the purpose of an I/O controller?', 'To manage data transfer between the CPU and peripheral devices', 'To perform calculations and data processing', 'To store and retrieve data from memory', 'To control the execution of software programs', 'To manage data transfer between the CPU and peripheral devices'),
('img/input output organisation.pdf', 'What does DMA stand for in I/O organization?', 'Direct Memory Access', 'Dynamic Memory Allocation', 'Data Management Application', 'Direct Memory Allocation', 'Direct Memory Access'),
('img/input output organisation.pdf', 'What is the main advantage of using DMA for I/O operations?', 'It allows data to be transferred directly between memory and a peripheral device without involving the CPU', 'It increases the CPU\'s processing speed', 'It simplifies memory management', 'It reduces the need for external storage devices', 'It allows data to be transferred directly between memory and a peripheral device without involving the CPU'),
('img/input output organisation.pdf', 'What is the difference between polling and interrupts in I/O operations?', 'Polling involves continuously checking the status of a device, while interrupts allow the device to signal the CPU when it needs attention', 'Polling is used for disk operations, while interrupts are used for network operations', 'Polling is a hardware technique, while interrupts are software-based', 'Polling is faster than interrupts', 'Polling involves continuously checking the status of a device, while interrupts allow the device to signal the CPU when it needs attention'),
('img/input output organisation.pdf', 'What is an I/O buffer?', 'A temporary storage area used to hold data during I/O operations', 'A type of memory used for long-term storage', 'A device used to process input data', 'A software program for managing I/O devices', 'A temporary storage area used to hold data during I/O operations'),
('img/input output organisation.pdf', 'What does the acronym \"PIO\" stand for in I/O organization?', 'Programmed Input/Output', 'Peripheral Input/Output', 'Primary Input/Output', 'Process Input/Output', 'Programmed Input/Output'),
('img/input output organisation.pdf', 'What is the purpose of an I/O port?', 'To provide a connection point for peripheral devices to communicate with the computer', 'To increase the computer’s processing power', 'To store data temporarily during processing', 'To manage network connections', 'To provide a connection point for peripheral devices to communicate with the computer'),
('img/input output organisation.pdf', 'What role does the system bus play in I/O operations?', 'It facilitates communication between the CPU, memory, and I/O devices', 'It stores data for long-term access', 'It performs arithmetic and logic operations', 'It manages power supply to the computer', 'It facilitates communication between the CPU, memory, and I/O devices'),
('img/input output organisation.pdf', 'What is the purpose of an I/O scheduler?', 'To manage the order and priority of I/O operations to optimize performance', 'To handle memory allocation for I/O devices', 'To execute software programs for I/O operations', 'To monitor and maintain I/O device health', 'To manage the order and priority of I/O operations to optimize performance'),
('img/Memory organisation.pdf', 'What is memory organization in computing?', 'The way in which memory is structured and accessed in a computer system', 'The process of creating software applications', 'The design of computer hardware components', 'The management of network resources', 'The way in which memory is structured and accessed in a computer system'),
('img/Memory organisation.pdf', 'What does the term “memory hierarchy” refer to?', 'The arrangement of different types of memory in a system based on speed and size', 'The process of allocating memory to software applications', 'The method of organizing data on disk drives', 'The structure of memory in a networked environment', 'The arrangement of different types of memory in a system based on speed and size'),
('img/Memory organisation.pdf', 'Which type of memory is known for its fast access times and is used to store frequently accessed data?', 'Cache Memory', 'Hard Disk Drive', 'Optical Disk', 'Virtual Memory', 'Cache Memory'),
('img/Memory organisation.pdf', 'What is the role of RAM (Random Access Memory) in a computer system?', 'To provide temporary storage for data and instructions that are actively used by the CPU', 'To store data permanently on the hard drive', 'To manage network connections and data transfer', 'To execute software applications and programs', 'To provide temporary storage for data and instructions that are actively used by the CPU'),
('img/Memory organisation.pdf', 'What is the function of virtual memory?', 'To extend the apparent size of physical memory by using disk space', 'To increase the speed of memory access by using faster storage devices', 'To manage the organization of files on disk', 'To provide a backup for data storage in case of system failure', 'To extend the apparent size of physical memory by using disk space'),
('img/Memory organisation.pdf', 'Which memory type is characterized by being non-volatile and used for long-term storage?', 'Hard Disk Drive', 'Cache Memory', 'RAM', 'Registers', 'Hard Disk Drive'),
('img/Memory organisation.pdf', 'What is the purpose of a memory management unit (MMU)?', 'To handle the translation of virtual addresses to physical addresses', 'To increase the speed of data access in memory', 'To manage the allocation of CPU time to processes', 'To store data permanently on disk', 'To handle the translation of virtual addresses to physical addresses'),
('img/Memory organisation.pdf', 'What is the primary characteristic of associative memory?', 'The ability to access data based on content rather than a specific address', 'The speed of accessing data through direct addressing', 'The use of virtual addresses for data retrieval', 'The storage of data in a sequential manner', 'The ability to access data based on content rather than a specific address'),
('img/Memory organisation.pdf', 'Which memory organization technique involves dividing memory into fixed-size blocks?', 'Paging', 'Segmentation', 'Virtual Memory', 'Swapping', 'Paging'),
('img/Memory organisation.pdf', 'What is the function of memory segmentation?', 'To divide memory into variable-sized segments based on program needs', 'To allocate memory in fixed-size blocks for uniform access', 'To manage data storage in disk drives', 'To handle the translation of addresses in virtual memory', 'To divide memory into variable-sized segments based on program needs'),
('img/micro processors.pdf', 'What is the primary function of a microprocessor?', 'To execute instructions and perform calculations for a computer system', 'To manage network communications', 'To handle input/output operations', 'To store data and programs', 'To execute instructions and perform calculations for a computer system'),
('img/micro processors.pdf', 'What does the term \"clock speed\" refer to in a microprocessor?', 'The speed at which a microprocessor executes instructions', 'The amount of memory a microprocessor can access', 'The number of cores in a microprocessor', 'The size of the microprocessor chip', 'The speed at which a microprocessor executes instructions'),
('img/micro processors.pdf', 'What is an instruction set?', 'A collection of instructions that a microprocessor can execute', 'A list of hardware components in a computer system', 'A set of programming languages for the microprocessor', 'A collection of external devices connected to the microprocessor', 'A collection of instructions that a microprocessor can execute'),
('img/micro processors.pdf', 'Which component in a microprocessor handles arithmetic and logical operations?', 'ALU (Arithmetic Logic Unit)', 'CU (Control Unit)', 'Register File', 'Cache Memory', 'ALU (Arithmetic Logic Unit)'),
('img/micro processors.pdf', 'What does the acronym \"CPU\" stand for?', 'Central Processing Unit', 'Central Peripheral Unit', 'Computer Processing Unit', 'Central Program Unit', 'Central Processing Unit'),
('img/micro processors.pdf', 'What is the role of the Control Unit (CU) in a microprocessor?', 'To fetch, decode, and execute instructions', 'To perform arithmetic and logical operations', 'To store data temporarily during processing', 'To manage communication with peripheral devices', 'To fetch, decode, and execute instructions'),
('img/micro processors.pdf', 'What is the function of cache memory in a microprocessor?', 'To provide faster access to frequently used data', 'To store large amounts of data for long-term use', 'To manage input/output operations', 'To execute instructions more efficiently', 'To provide faster access to frequently used data'),
('img/micro processors.pdf', 'What is a register in the context of a microprocessor?', 'A small, fast storage location used to hold data and instructions temporarily', 'A permanent storage location on the hard drive', 'An external device connected to the microprocessor', 'A type of memory used for system backups', 'A small, fast storage location used to hold data and instructions temporarily'),
('img/micro processors.pdf', 'What is the difference between a microprocessor and a microcontroller?', 'A microcontroller includes a microprocessor along with memory and peripherals on a single chip', 'A microprocessor is used for simple tasks, while a microcontroller handles complex tasks', 'A microcontroller is faster than a microprocessor', 'A microprocessor is used for embedded systems, while a microcontroller is used for general computing', 'A microcontroller includes a microprocessor along with memory and peripherals on a single chip'),
('img/micro processors.pdf', 'What does the term \"pipeline\" refer to in a microprocessor?', 'A technique where multiple instructions are processed simultaneously in different stages', 'A method for cooling the microprocessor', 'A process for increasing clock speed', 'A way to manage memory allocation', 'A technique where multiple instructions are processed simultaneously in different stages'),
('img/computer-networking.pdf', 'What is the primary purpose of a computer network?', 'To enable communication and resource sharing between computers', 'To increase storage capacity', 'To enhance computer processing speed', 'To manage software applications', 'To enable communication and resource sharing between computers'),
('img/computer-networking.pdf', 'What does the acronym \"LAN\" stand for in networking?', 'Local Area Network', 'Large Area Network', 'Long-distance Access Network', 'Low-speed Access Network', 'Local Area Network'),
('img/computer-networking.pdf', 'What is the function of a router in a network?', 'To direct data packets between different networks and manage traffic', 'To store data on a hard drive', 'To increase the speed of the internet connection', 'To provide power to network devices', 'To direct data packets between different networks and manage traffic'),
('img/computer-networking.pdf', 'Which layer of the OSI model is responsible for data encryption?', 'Presentation Layer', 'Application Layer', 'Transport Layer', 'Network Layer', 'Presentation Layer'),
('img/computer-networking.pdf', 'What does the acronym \"IP\" stand for in networking?', 'Internet Protocol', 'Internal Protocol', 'Internet Port', 'Integrated Processor', 'Internet Protocol'),
('img/computer-networking.pdf', 'What is a subnet mask used for?', 'To divide an IP address into network and host components', 'To encrypt data transmitted over the network', 'To manage network bandwidth', 'To assign dynamic IP addresses to devices', 'To divide an IP address into network and host components'),
('img/computer-networking.pdf', 'What is the main purpose of DNS in networking?', 'To translate domain names into IP addresses', 'To encrypt network data', 'To manage network traffic', 'To provide internet access', 'To translate domain names into IP addresses'),
('img/computer-networking.pdf', 'What is a VPN?', 'A Virtual Private Network that provides a secure connection over a public network', 'A Virtual Private Node used for storing data', 'A Variable Port Network for high-speed data transfer', 'A Voltage Protection Network for safeguarding hardware', 'A Virtual Private Network that provides a secure connection over a public network'),
('img/computer-networking.pdf', 'What does the acronym \"HTTP\" stand for?', 'HyperText Transfer Protocol', 'High Transfer Text Protocol', 'HyperText Transport Protocol', 'HyperText Transmission Protocol', 'HyperText Transfer Protocol'),
('img/computer-networking.pdf', 'What is a firewall in networking?', 'A security system designed to prevent unauthorized access to or from a private network', 'A device used to increase network speed', 'A type of networking cable', 'A protocol for managing IP addresses', 'A security system designed to prevent unauthorized access to or from a private network'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What is a computer network?', 'A collection of interconnected computers that share resources and communicate with each other', 'A single computer that performs multiple tasks', 'A hardware device used for processing data', 'A type of software used for managing files', 'A collection of interconnected computers that share resources and communicate with each other'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which of the following is a common network topology?', 'Star', 'Disk', 'Queue', 'Stack', 'Star'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What does the term “IP address” stand for?', 'Internet Protocol Address', 'Internal Process Address', 'Interface Point Address', 'Internet Protocol Application', 'Internet Protocol Address'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which layer of the OSI model is responsible for routing and addressing?', 'Network Layer', 'Data Link Layer', 'Physical Layer', 'Application Layer', 'Network Layer'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What is the primary function of the transport layer in the OSI model?', 'To provide end-to-end communication and error recovery between applications', 'To establish and maintain physical connections between devices', 'To route data between different networks', 'To manage the format and structure of data', 'To provide end-to-end communication and error recovery between applications'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which protocol is used for reliable data transmission over the Internet?', 'TCP (Transmission Control Protocol)', 'UDP (User Datagram Protocol)', 'IP (Internet Protocol)', 'FTP (File Transfer Protocol)', 'TCP (Transmission Control Protocol)'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What does a switch do in a network?', 'Directs data to the correct device on a local area network', 'Routes data between different networks', 'Encrypts data for secure transmission', 'Manages the allocation of IP addresses', 'Directs data to the correct device on a local area network'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What is a LAN?', 'Local Area Network', 'Large Area Network', 'Link Access Node', 'Long Access Network', 'Local Area Network'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which device connects multiple networks and routes data between them?', 'Router', 'Switch', 'Hub', 'Modem', 'Router'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What does DNS stand for in networking?', 'Domain Name System', 'Data Network Service', 'Digital Network Security', 'Dynamic Network Solution', 'Domain Name System'),
('img/IP_Addressing_and Subnetting.pdf', 'What is an IP address?', 'A unique identifier assigned to each device on a network', 'A protocol used for network communication', 'A type of network hardware', 'A method for encrypting network data', 'A unique identifier assigned to each device on a network'),
('img/IP_Addressing_and Subnetting.pdf', 'What does the acronym \"CIDR\" stand for in IP addressing?', 'Classless Inter-Domain Routing', 'Classified Internal Data Routing', 'Computer Interface Domain Routing', 'Centralized Internet Data Routing', 'Classless Inter-Domain Routing'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the purpose of subnetting in IP addressing?', 'To divide a larger network into smaller, more manageable sub-networks', 'To increase the speed of data transmission', 'To provide additional security to the network', 'To assign dynamic IP addresses to devices', 'To divide a larger network into smaller, more manageable sub-networks'),
('img/IP_Addressing_and Subnetting.pdf', 'What does a subnet mask do?', 'It defines the network and host portions of an IP address', 'It encrypts data transmitted over the network', 'It assigns IP addresses dynamically', 'It monitors network traffic', 'It defines the network and host portions of an IP address'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the purpose of a default gateway?', 'To route traffic from a local network to other networks', 'To assign IP addresses to devices on the network', 'To monitor network performance', 'To encrypt data packets', 'To route traffic from a local network to other networks'),
('img/IP_Addressing_and Subnetting.pdf', 'What does the term \"network address\" refer to?', 'The IP address that identifies the network portion of an address', 'The IP address assigned to a specific device', 'The physical address of a network device', 'The address used to communicate with external networks', 'The IP address that identifies the network portion of an address'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the purpose of an IP address class?', 'To define the range of IP addresses and the size of the network', 'To assign unique IP addresses to each device', 'To manage network traffic', 'To encrypt network communications', 'To define the range of IP addresses and the size of the network'),
('img/IP_Addressing_and Subnetting.pdf', 'Which IP address class is typically used for small networks?', 'Class C', 'Class A', 'Class B', 'Class D', 'Class C'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the role of a public IP address?', 'To provide a unique identifier for a device accessible from the internet', 'To manage internal network traffic', 'To assign dynamic IP addresses within a local network', 'To encrypt data transmitted over the internet', 'To provide a unique identifier for a device accessible from the internet'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the subnet mask for a Class B network?', '255.255.0.0', '255.0.0.0', '255.255.255.0', '255.255.255.255', '255.255.0.0'),
('img/network tools and device.pdf', 'What is the primary function of a network router?', 'To route data between different networks and manage traffic', 'To amplify signals within a network', 'To provide a physical connection for network devices', 'To manage local network traffic and avoid collisions', 'To route data between different networks and manage traffic'),
('img/network tools and device.pdf', 'Which device is used to connect multiple devices on a local area network (LAN)?', 'Switch', 'Router', 'Modem', 'Access Point', 'Switch'),
('img/network tools and device.pdf', 'What is a network hub used for?', 'To connect multiple devices in a network and broadcast data to all of them', 'To route data between different networks', 'To provide wireless access to a network', 'To convert digital signals to analog', 'To connect multiple devices in a network and broadcast data to all of them'),
('img/network tools and device.pdf', 'Which tool is used to measure the time it takes for data to travel between two points on a network?', 'Ping', 'Traceroute', 'Netstat', 'Wireshark', 'Ping'),
('img/network tools and device.pdf', 'What does a network switch do?', 'Directs data to the correct device on a network using MAC addresses', 'Routes data between different networks', 'Converts digital data to analog signals', 'Manages the allocation of IP addresses', 'Directs data to the correct device on a network using MAC addresses'),
('img/network tools and device.pdf', 'Which device is used to extend the range of a wireless network?', 'Access Point', 'Router', 'Switch', 'Hub', 'Access Point'),
('img/network tools and device.pdf', 'What is the function of a modem in networking?', 'To modulate and demodulate signals for communication over telephone lines', 'To manage network traffic and connections', 'To connect devices within a local area network', 'To provide wireless access to a network', 'To modulate and demodulate signals for communication over telephone lines'),
('img/network tools and device.pdf', 'Which network tool is used to capture and analyze network traffic?', 'Wireshark', 'Ping', 'Traceroute', 'Netstat', 'Wireshark'),
('img/network tools and device.pdf', 'What does a network analyzer or protocol analyzer do?', 'Monitors and analyzes network traffic to troubleshoot and diagnose issues', 'Connects multiple networks together', 'Provides security for network communications', 'Distributes IP addresses within a network', 'Monitors and analyzes network traffic to troubleshoot and diagnose issues'),
('img/network tools and device.pdf', 'Which tool is used to determine the path data takes from one network device to another?', 'Traceroute', 'Ping', 'Netstat', 'Wireshark', 'Traceroute'),
('img/protocols.pdf', 'What is the primary function of a network protocol?', 'To define rules and conventions for communication between network devices', 'To manage the physical connection between devices', 'To encrypt data transmitted over the network', 'To increase the speed of data transfer', 'To define rules and conventions for communication between network devices'),
('img/protocols.pdf', 'What does the acronym \"TCP\" stand for?', 'Transmission Control Protocol', 'Transfer Communication Protocol', 'Technical Control Protocol', 'Transport Communication Protocol', 'Transmission Control Protocol'),
('img/protocols.pdf', 'What is the purpose of the HTTP protocol?', 'To enable communication between web browsers and web servers', 'To manage email transmission', 'To handle file transfers between computers', 'To encrypt data sent over the internet', 'To enable communication between web browsers and web servers'),
('img/protocols.pdf', 'Which protocol is commonly used for secure web communication?', 'HTTPS', 'HTTP', 'FTP', 'SMTP', 'HTTPS'),
('img/protocols.pdf', 'What does the acronym \"DNS\" stand for?', 'Domain Name System', 'Direct Network Service', 'Data Network Security', 'Distributed Name Server', 'Domain Name System'),
('img/protocols.pdf', 'What is the main function of the FTP protocol?', 'To transfer files between computers over a network', 'To send email messages', 'To manage network routing', 'To provide web page access', 'To transfer files between computers over a network'),
('img/protocols.pdf', 'Which protocol is used for sending email messages?', 'SMTP', 'FTP', 'HTTP', 'DNS', 'SMTP'),
('img/protocols.pdf', 'What does the acronym \"IP\" stand for?', 'Internet Protocol', 'Internal Protocol', 'Internet Port', 'International Protocol', 'Internet Protocol'),
('img/protocols.pdf', 'What is the main purpose of the DHCP protocol?', 'To assign IP addresses to devices on a network dynamically', 'To encrypt data transmitted over a network', 'To manage email messages', 'To transfer files between devices', 'To assign IP addresses to devices on a network dynamically'),
('img/protocols.pdf', 'Which layer of the OSI model does the IP protocol operate on?', 'Network Layer', 'Data Link Layer', 'Transport Layer', 'Application Layer', 'Network Layer'),
('img/network-topologies.ppt', 'What is a network topology?', 'The physical or logical arrangement of network devices and connections', 'The protocol used for network communication', 'The software that manages network resources', 'The security measures implemented in a network', 'The physical or logical arrangement of network devices and connections'),
('img/network-topologies.ppt', 'Which network topology connects all devices to a central hub or switch?', 'Star Topology', 'Bus Topology', 'Ring Topology', 'Mesh Topology', 'Star Topology'),
('img/network-topologies.ppt', 'What is the main characteristic of a bus topology?', 'All devices share a single communication line or cable', 'Devices are connected in a circular fashion', 'Each device is connected to every other device', 'A central hub manages the data flow', 'All devices share a single communication line or cable'),
('img/network-topologies.ppt', 'In which topology do devices connect in a closed loop, where each device has exactly two neighbors?', 'Ring Topology', 'Star Topology', 'Bus Topology', 'Mesh Topology', 'Ring Topology'),
('img/network-topologies.ppt', 'What is a major advantage of mesh topology?', 'High fault tolerance as multiple paths exist for data transmission', 'Simple and cost-effective to implement', 'Easy to manage and configure', 'Requires less cabling compared to other topologies', 'High fault tolerance as multiple paths exist for data transmission'),
('img/network-topologies.ppt', 'Which network topology is often used in local area networks (LANs) due to its simplicity and cost-effectiveness?', 'Star Topology', 'Mesh Topology', 'Bus Topology', 'Ring Topology', 'Star Topology'),
('img/network-topologies.ppt', 'What is a key disadvantage of bus topology?', 'If the central cable fails, the entire network goes down', 'Requires a lot of cabling compared to other topologies', 'Requires multiple hubs or switches to function', 'Each device must have its own network address', 'If the central cable fails, the entire network goes down'),
('img/network-topologies.ppt', 'Which topology involves each device being connected to every other device in the network?', 'Mesh Topology', 'Bus Topology', 'Star Topology', 'Ring Topology', 'Mesh Topology'),
('img/network-topologies.ppt', 'What is a hybrid topology?', 'A combination of two or more different network topologies', 'A topology that uses multiple communication protocols', 'A topology designed for high-speed data transfer', 'A topology that integrates both wired and wireless devices', 'A combination of two or more different network topologies'),
('img/network-topologies.ppt', 'Which topology is most commonly used in WANs (Wide Area Networks) for its ability to handle high traffic loads and provide redundancy?', 'Mesh Topology', 'Star Topology', 'Bus Topology', 'Ring Topology', 'Mesh Topology'),
('img/2.-Atomic-Structure.pdf', 'What is the smallest unit of an element that retains its chemical properties?', 'Atom', 'Molecule', 'Electron', 'Proton', 'Atom'),
('img/2.-Atomic-Structure.pdf', 'What is the central part of an atom called?', 'Nucleus', 'Electron shell', 'Proton', 'Neutron', 'Nucleus'),
('img/2.-Atomic-Structure.pdf', 'Which particle in an atom has a positive charge?', 'Proton', 'Electron', 'Neutron', 'Photon', 'Proton'),
('img/2.-Atomic-Structure.pdf', 'What determines the atomic number of an element?', 'Number of protons', 'Number of electrons', 'Number of neutrons', 'Number of atoms', 'Number of protons'),
('img/2.-Atomic-Structure.pdf', 'What is the mass number of an atom?', 'Sum of protons and neutrons', 'Sum of electrons and protons', 'Number of neutrons', 'Number of electrons', 'Sum of protons and neutrons'),
('img/2.-Atomic-Structure.pdf', 'Which particle is found in the electron cloud of an atom?', 'Electron', 'Proton', 'Neutron', 'Positron', 'Electron'),
('img/2.-Atomic-Structure.pdf', 'What is an isotope?', 'Atoms of the same element with different numbers of neutrons', 'Atoms with the same number of protons and neutrons', 'Atoms with different numbers of electrons', 'A type of ion', 'Atoms of the same element with different numbers of neutrons'),
('img/2.-Atomic-Structure.pdf', 'What is the charge of a neutron?', 'Neutral (no charge)', 'Positive', 'Negative', 'Depends on the atom', 'Neutral (no charge)'),
('img/2.-Atomic-Structure.pdf', 'Which model introduced the concept of electron orbits?', 'Bohr Model', 'Quantum Mechanical Model', 'Plum Pudding Model', 'Rutherford Model', 'Bohr Model'),
('img/2.-Atomic-Structure.pdf', 'What is the most abundant isotope of carbon?', 'Carbon-12', 'Carbon-14', 'Carbon-13', 'Carbon-11', 'Carbon-12'),
('img/20.-Solutions-Notes.pdf', 'What is a solution in chemistry?', 'A homogeneous mixture of two or more substances', 'A heterogeneous mixture of two substances', 'A pure substance', 'A compound', 'A homogeneous mixture of two or more substances'),
('img/20.-Solutions-Notes.pdf', 'Which component of a solution is present in the largest amount?', 'Solvent', 'Solute', 'Precipitate', 'Colloid', 'Solvent'),
('img/20.-Solutions-Notes.pdf', 'What is the process of dissolving a solute in a solvent called?', 'Solvation', 'Precipitation', 'Condensation', 'Distillation', 'Solvation'),
('img/20.-Solutions-Notes.pdf', 'Which of the following is an example of a gas in liquid solution?', 'Carbonated water', 'Salt water', 'Bronze', 'Alcohol in water', 'Carbonated water'),
('img/20.-Solutions-Notes.pdf', 'What is molarity?', 'Moles of solute per liter of solution', 'Moles of solvent per kilogram of solution', 'Grams of solute per liter of solvent', 'Moles of solute per gram of solvent', 'Moles of solute per liter of solution'),
('img/20.-Solutions-Notes.pdf', 'What type of solution is formed when no more solute can dissolve in the solvent at a given temperature?', 'Saturated', 'Unsaturated', 'Supersaturated', 'Diluted', 'Saturated'),
('img/20.-Solutions-Notes.pdf', 'What happens to the solubility of most solids in liquids as temperature increases?', 'Increases', 'Decreases', 'Remains the same', 'First decreases then increases', 'Increases'),
('img/20.-Solutions-Notes.pdf', 'What is an electrolyte?', 'A substance that dissociates into ions in solution and conducts electricity', 'A substance that dissolves but does not conduct electricity', 'A gas that conducts electricity', 'A non-polar solvent', 'A substance that dissociates into ions in solution and conducts electricity'),
('img/20.-Solutions-Notes.pdf', 'Which factor does not affect the solubility of a solute in a solvent?', 'Color of the solute', 'Temperature', 'Pressure (for gases)', 'Nature of solute and solvent', 'Color of the solute'),
('img/20.-Solutions-Notes.pdf', 'Which of the following is an example of a solid solution?', 'Brass', 'Air', 'Vinegar', 'Salt water', 'Brass'),
('img/programming methodology.pdf', 'What is the primary goal of programming methodologies?', 'To provide structured approaches for software development and problem-solving', 'To increase the execution speed of software', 'To simplify programming language syntax', 'To manage hardware resources', 'To provide structured approaches for software development and problem-solving'),
('img/programming methodology.pdf', 'What does the acronym \"OOP\" stand for?', 'Object-Oriented Programming', 'Open Operating Protocol', 'Object-Oriented Procedure', 'Operational Output Process', 'Object-Oriented Programming'),
('img/programming methodology.pdf', 'Which programming methodology focuses on breaking a program into functions and procedures?', 'Procedural Programming', 'Object-Oriented Programming', 'Functional Programming', 'Declarative Programming', 'Procedural Programming'),
('img/programming methodology.pdf', 'What is a key principle of Object-Oriented Programming (OOP)?', 'Encapsulation', 'Sequential execution', 'Declarative syntax', 'Immutable variables', 'Encapsulation'),
('img/programming methodology.pdf', 'What does the term \"Agile\" refer to in software development?', 'A set of principles for iterative and incremental development', 'A programming language for web development', 'A type of database management system', 'A debugging tool for code analysis', 'A set of principles for iterative and incremental development'),
('img/programming methodology.pdf', 'Which methodology emphasizes writing code that can be easily tested and refactored?', 'Test-Driven Development (TDD)', 'Waterfall Model', 'Rapid Application Development (RAD)', 'Model-View-Controller (MVC)', 'Test-Driven Development (TDD)'),
('img/programming methodology.pdf', 'What is the main focus of Functional Programming?', 'Writing programs using pure functions and avoiding mutable state', 'Structuring programs using objects and classes', 'Organizing programs into procedures and functions', 'Defining programs using logical statements', 'Writing programs using pure functions and avoiding mutable state'),
('img/programming methodology.pdf', 'What is the Waterfall Model in software development?', 'A linear and sequential approach to software development', 'An iterative and flexible approach to software development', 'A method for managing concurrent processes', 'A technique for optimizing code performance', 'A linear and sequential approach to software development'),
('img/programming methodology.pdf', 'Which methodology uses a cycle of planning, designing, developing, and testing in short iterations?', 'Iterative Development', 'Waterfall Model', 'Spiral Model', 'Structured Programming', 'Iterative Development'),
('img/programming methodology.pdf', 'What is the main advantage of using Agile methodologies?', 'Increased flexibility and ability to adapt to changes during development', 'More stringent control over project scope and deadlines', 'Greater emphasis on upfront planning and documentation', 'Reduced need for stakeholder involvement', 'Increased flexibility and ability to adapt to changes during development'),
('img/computer and network basics.pdf', 'What is the primary purpose of a network?', 'To enable devices to communicate and share resources', 'To store data permanently', 'To manage hardware components', 'To create software applications', 'To enable devices to communicate and share resources'),
('img/computer and network basics.pdf', 'Which device is used to connect multiple networks and route data between them?', 'Router', 'Switch', 'Hub', 'Modem', 'Router'),
('img/computer and network basics.pdf', 'What does the acronym LAN stand for?', 'Local Area Network', 'Long Area Network', 'Large Access Network', 'Local Access Node', 'Local Area Network'),
('img/computer and network basics.pdf', 'What is an IP address used for in a network?', 'To identify and locate devices on a network', 'To store data on a disk', 'To manage network traffic', 'To provide wireless network access', 'To identify and locate devices on a network'),
('img/computer and network basics.pdf', 'Which protocol is used for sending email over the Internet?', 'SMTP (Simple Mail Transfer Protocol)', 'HTTP (Hypertext Transfer Protocol)', 'FTP (File Transfer Protocol)', 'IP (Internet Protocol)', 'SMTP (Simple Mail Transfer Protocol)'),
('img/computer and network basics.pdf', 'What is the purpose of DNS (Domain Name System)?', 'To translate domain names into IP addresses', 'To secure data transmission over the network', 'To manage network traffic and connections', 'To provide wireless network access', 'To translate domain names into IP addresses'),
('img/computer and network basics.pdf', 'Which device is used to provide wireless connectivity to a network?', 'Access Point', 'Router', 'Switch', 'Hub', 'Access Point'),
('img/computer and network basics.pdf', 'What is the role of a network switch?', 'To direct data packets to specific devices on a network based on MAC addresses', 'To connect multiple networks and route data between them', 'To amplify and regenerate signals on a network', 'To provide a physical connection for network devices', 'To direct data packets to specific devices on a network based on MAC addresses'),
('img/computer and network basics.pdf', 'What does the term “bandwidth” refer to in networking?', 'The maximum rate at which data can be transmitted over a network', 'The amount of data stored on a device', 'The number of devices connected to a network', 'The range of a wireless network signal', 'The maximum rate at which data can be transmitted over a network'),
('img/computer and network basics.pdf', 'Which layer of the OSI model is responsible for the physical connection and transmission of raw bit streams?', 'Physical Layer', 'Data Link Layer', 'Network Layer', 'Transport Layer', 'Physical Layer');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/EN-Ethical Hacking.pdf', 'What is the primary goal of ethical hacking?', 'To identify and fix security vulnerabilities in systems', 'To exploit systems for personal gain', 'To create new malware', 'To disrupt network operations', 'To identify and fix security vulnerabilities in systems'),
('img/EN-Ethical Hacking.pdf', 'What does the acronym \"CEH\" stand for?', 'Certified Ethical Hacker', 'Certified Enterprise Hacker', 'Certified Expert Hacker', 'Certified Encryption Hacker', 'Certified Ethical Hacker'),
('img/EN-Ethical Hacking.pdf', 'Which of the following is a common tool used in ethical hacking?', 'Nmap', 'Photoshop', 'Microsoft Excel', 'Adobe Acrobat', 'Nmap'),
('img/EN-Ethical Hacking.pdf', 'What is a vulnerability assessment?', 'The process of identifying and evaluating security weaknesses in a system', 'A technique for encoding data', 'A method for managing network traffic', 'A strategy for improving software performance', 'The process of identifying and evaluating security weaknesses in a system'),
('img/EN-Ethical Hacking.pdf', 'What is a penetration test?', 'An authorized simulation of an attack on a system to find vulnerabilities', 'A process for securing physical access to a facility', 'A method for encrypting sensitive information', 'A technique for optimizing network performance', 'An authorized simulation of an attack on a system to find vulnerabilities'),
('img/EN-Ethical Hacking.pdf', 'What is the purpose of social engineering in the context of ethical hacking?', 'To manipulate individuals into divulging confidential information', 'To install malware on a system', 'To exploit software vulnerabilities', 'To bypass network security measures', 'To manipulate individuals into divulging confidential information'),
('img/EN-Ethical Hacking.pdf', 'What does the term \"footprinting\" refer to in ethical hacking?', 'The process of gathering information about a target system or network', 'The installation of security patches', 'The encryption of data transmissions', 'The creation of a network diagram', 'The process of gathering information about a target system or network'),
('img/EN-Ethical Hacking.pdf', 'What is the difference between white-hat and black-hat hackers?', 'White-hat hackers use their skills for ethical and legal purposes, while black-hat hackers use them for malicious and illegal activities', 'White-hat hackers work alone, while black-hat hackers work in teams', 'White-hat hackers are less skilled than black-hat hackers', 'White-hat hackers focus on hardware, while black-hat hackers focus on software', 'White-hat hackers use their skills for ethical and legal purposes, while black-hat hackers use them for malicious and illegal activities'),
('img/EN-Ethical Hacking.pdf', 'What is the role of encryption in cybersecurity?', 'To protect data by converting it into a secure format', 'To increase the speed of data transmission', 'To manage user access controls', 'To prevent unauthorized physical access to devices', 'To protect data by converting it into a secure format'),
('img/EN-Ethical Hacking.pdf', 'What is a zero-day exploit?', 'An attack that targets a previously unknown vulnerability', 'A method for securing network communications', 'A tool for detecting malware', 'A technique for data recovery', 'An attack that targets a previously unknown vulnerability'),
('img/fundamentals of computer.pdf', 'What is the main function of the CPU in a computer?', 'To execute instructions and process data', 'To store data permanently', 'To manage input and output devices', 'To provide network connectivity', 'To execute instructions and process data'),
('img/fundamentals of computer.pdf', 'Which component is known as the brain of the computer?', 'Central Processing Unit (CPU)', 'Random Access Memory (RAM)', 'Hard Disk Drive (HDD)', 'Motherboard', 'Central Processing Unit (CPU)'),
('img/fundamentals of computer.pdf', 'What does RAM stand for?', 'Random Access Memory', 'Read Access Memory', 'Reliable Access Memory', 'Read-Only Memory', 'Random Access Memory'),
('img/fundamentals of computer.pdf', 'What is the purpose of the motherboard in a computer?', 'To connect and allow communication between all hardware components', 'To store data permanently', 'To manage the display output', 'To handle network connections', 'To connect and allow communication between all hardware components'),
('img/fundamentals of computer.pdf', 'Which storage device is known for its high speed and volatility?', 'RAM (Random Access Memory)', 'Hard Disk Drive (HDD)', 'Solid State Drive (SSD)', 'Optical Disk', 'RAM (Random Access Memory)'),
('img/fundamentals of computer.pdf', 'What does the term “software” refer to?', 'The programs and operating systems used by a computer', 'The physical components of a computer system', 'The instructions for assembling hardware components', 'The network connectivity of a computer', 'The programs and operating systems used by a computer'),
('img/fundamentals of computer.pdf', 'Which device is used to input text and commands into a computer?', 'Keyboard', 'Monitor', 'Printer', 'Speakers', 'Keyboard'),
('img/fundamentals of computer.pdf', 'What is the function of the computer’s power supply unit (PSU)?', 'To convert electrical power from the outlet into a usable form for the computer', 'To manage the CPU’s processing tasks', 'To store data permanently', 'To control the display output', 'To convert electrical power from the outlet into a usable form for the computer'),
('img/fundamentals of computer.pdf', 'What is the role of an operating system in a computer?', 'To manage hardware resources and provide a user interface', 'To store files and applications', 'To provide network security', 'To process data and execute programs', 'To manage hardware resources and provide a user interface'),
('img/fundamentals of computer.pdf', 'Which of the following is a non-volatile storage medium?', 'Hard Disk Drive (HDD)', 'RAM (Random Access Memory)', 'Cache Memory', 'CPU Registers', 'Hard Disk Drive (HDD)'),
('img/debugging.pdf', 'What is the primary goal of debugging?', 'To identify and fix errors in code', 'To write new features', 'To optimize database performance', 'To design user interfaces', 'To identify and fix errors in code'),
('img/debugging.pdf', 'What is a common debugging technique?', 'Using breakpoints', 'Increasing code complexity', 'Ignoring error messages', 'Writing code without testing', 'Using breakpoints'),
('img/debugging.pdf', 'Which tool helps in step-by-step execution of code?', 'Debugger', 'Compiler', 'Text Editor', 'Version Control System', 'Debugger'),
('img/debugging.pdf', 'What is a breakpoint?', 'A marker used to pause code execution for inspection', 'A point where the code always fails', 'A section of code that executes repeatedly', 'A method for optimizing performance', 'A marker used to pause code execution for inspection'),
('img/debugging.pdf', 'What is meant by \"stepping through\" code?', 'Executing code line by line to analyze its behavior', 'Skipping over parts of code', 'Compiling the entire codebase at once', 'Removing all print statements', 'Executing code line by line to analyze its behavior'),
('img/debugging.pdf', 'What does a stack trace provide?', 'Information about the function calls that led to an error', 'A list of all variables in scope', 'Detailed code comments', 'A summary of code performance', 'Information about the function calls that led to an error'),
('img/debugging.pdf', 'What is a common cause of segmentation faults?', 'Accessing memory out of bounds', 'Missing return statements', 'Using outdated libraries', 'Uninitialized variables', 'Accessing memory out of bounds'),
('img/debugging.pdf', 'What does \"logging\" refer to in debugging?', 'Recording messages about program execution', 'Executing code in a loop', 'Analyzing code for performance', 'Tracking code changes in version control', 'Recording messages about program execution'),
('img/debugging.pdf', 'What is the purpose of unit testing in debugging?', 'To test individual components for correctness', 'To test the entire application', 'To measure code execution time', 'To document code functionality', 'To test individual components for correctness'),
('img/debugging.pdf', 'What is the difference between a syntax error and a runtime error?', 'A syntax error occurs during code compilation, while a runtime error occurs during execution', 'A syntax error occurs during code execution, while a runtime error occurs during compilation', 'A syntax error is harder to fix than a runtime error', 'A syntax error is related to logic errors', 'A syntax error occurs during code compilation, while a runtime error occurs during execution'),
('img/life cycle models.pdf', 'What is a life cycle model?', 'A framework that describes the stages a product or project goes through from inception to retirement', 'A method for tracking financial performance over time', 'A strategy for market penetration and expansion', 'A process for team building and development', 'A framework that describes the stages a product or project goes through from inception to retirement'),
('img/life cycle models.pdf', 'Which stage in the product life cycle involves rapid growth in sales and market acceptance?', 'Growth', 'Introduction', 'Maturity', 'Decline', 'Growth'),
('img/life cycle models.pdf', 'What is the primary focus during the maturity stage of the product life cycle?', 'Maximizing market share and profit while facing increased competition', 'Introducing the product to the market', 'Reducing production costs', 'Enhancing product features and innovations', 'Maximizing market share and profit while facing increased competition'),
('img/life cycle models.pdf', 'What typically characterizes the decline stage of the product life cycle?', 'Decreasing sales and profitability, often due to market saturation or new alternatives', 'High growth in market share and revenue', 'Stable sales and market dominance', 'Rapid increase in product features and technology', 'Decreasing sales and profitability, often due to market saturation or new alternatives'),
('img/life cycle models.pdf', 'Which life cycle model is used in software development to represent phases such as planning, development, testing, and deployment?', 'Software Development Life Cycle (SDLC)', 'Product Life Cycle (PLC)', 'Project Life Cycle (PLC)', 'Organizational Life Cycle', 'Software Development Life Cycle (SDLC)'),
('img/life cycle models.pdf', 'In the Software Development Life Cycle (SDLC), what is the purpose of the testing phase?', 'To identify and fix defects in the software before release', 'To gather user requirements', 'To design software architecture', 'To deploy the software to users', 'To identify and fix defects in the software before release'),
('img/life cycle models.pdf', 'Which stage in the product life cycle focuses on maximizing profits while managing costs and market competition?', 'Maturity', 'Introduction', 'Growth', 'Decline', 'Maturity'),
('img/life cycle models.pdf', 'What is a key characteristic of the introduction stage in the product life cycle?', 'High costs and low sales as the product is introduced to the market', 'Stable sales and market acceptance', 'Decreasing costs and increasing competition', 'High sales and rapid growth', 'High costs and low sales as the product is introduced to the market'),
('img/life cycle models.pdf', 'What does the term \"product life cycle\" refer to?', 'The stages a product goes through from development to withdrawal from the market', 'The period during which a product is developed and tested', 'The process of marketing and promoting a product', 'The lifecycle of production equipment and technology', 'The stages a product goes through from development to withdrawal from the market'),
('img/life cycle models.pdf', 'In which life cycle model is the focus on phases like initiation, planning, execution, and closure?', 'Project Life Cycle', 'Product Life Cycle', 'Organizational Life Cycle', 'Software Development Life Cycle', 'Project Life Cycle'),
('img/quality management.pdf', 'What is the primary goal of quality management?', 'To ensure products and services meet customer expectations', 'To reduce the number of employees', 'To minimize marketing costs', 'To increase product variety', 'To ensure products and services meet customer expectations'),
('img/quality management.pdf', 'What does TQM stand for?', 'Total Quality Management', 'Total Quality Measure', 'Target Quality Management', 'Timely Quality Management', 'Total Quality Management'),
('img/quality management.pdf', 'Which tool is commonly used for root cause analysis?', 'Fishbone Diagram', 'Flowchart', 'Histogram', 'Control Chart', 'Fishbone Diagram'),
('img/quality management.pdf', 'What is a quality audit?', 'A systematic examination of a quality management system', 'A survey of customer satisfaction', 'An analysis of financial statements', 'A review of marketing strategies', 'A systematic examination of a quality management system'),
('img/quality management.pdf', 'What does the acronym PDCA stand for in quality management?', 'Plan-Do-Check-Act', 'Process-Define-Check-Analyze', 'Prepare-Deliver-Check-Assess', 'Plan-Develop-Control-Align', 'Plan-Do-Check-Act'),
('img/quality management.pdf', 'What is a control chart used for?', 'Monitoring process performance over time', 'Designing new product features', 'Analyzing customer feedback', 'Managing project budgets', 'Monitoring process performance over time'),
('img/quality management.pdf', 'What is Six Sigma?', 'A methodology for improving process quality and reducing defects', 'A quality certification standard', 'A type of project management software', 'A statistical analysis technique', 'A methodology for improving process quality and reducing defects'),
('img/quality management.pdf', 'What does ISO 9001 standard focus on?', 'Quality management systems and customer satisfaction', 'Environmental management systems', 'Occupational health and safety', 'Information security management', 'Quality management systems and customer satisfaction'),
('img/quality management.pdf', 'What is a quality management system (QMS)?', 'A framework for managing and improving quality across an organization', 'A set of guidelines for customer service', 'A software for tracking sales performance', 'A document for regulatory compliance', 'A framework for managing and improving quality across an organization'),
('img/quality management.pdf', 'What is the purpose of a quality policy?', 'To define the organizations commitment to quality and objectives', 'To outline employee benefits and compensation', 'To specify operational procedures', 'To describe marketing strategies', 'To define the organizations commitment to quality and objectives'),
('img/requirements analysis and specifications.pdf', 'What is the primary purpose of requirements analysis?', 'To identify and document the needs and expectations of stakeholders for a project or system', 'To develop a project budget', 'To create a marketing plan', 'To implement the final system or solution', 'To identify and document the needs and expectations of stakeholders for a project or system'),
('img/requirements analysis and specifications.pdf', 'Which document describes what a system should do and the constraints under which it must operate?', 'Requirements Specification', 'Project Charter', 'Business Case', 'Design Document', 'Requirements Specification'),
('img/requirements analysis and specifications.pdf', 'What is the first step in the requirements analysis process?', 'Gathering and eliciting requirements from stakeholders', 'Developing a detailed project plan', 'Designing system architecture', 'Implementing the solution', 'Gathering and eliciting requirements from stakeholders'),
('img/requirements analysis and specifications.pdf', 'Which technique is commonly used to gather requirements from stakeholders through structured discussions?', 'Interviews', 'Surveys', 'Prototyping', 'Document Analysis', 'Interviews'),
('img/requirements analysis and specifications.pdf', 'What does a \"functional requirement\" describe?', 'What the system should do, including specific behaviors and functions', 'How the system should perform in terms of speed and capacity', 'The constraints and limitations within which the system must operate', 'The technology stack and tools used to build the system', 'What the system should do, including specific behaviors and functions'),
('img/requirements analysis and specifications.pdf', 'What is a \"non-functional requirement\"?', 'A requirement that specifies how the system performs under certain conditions', 'A requirement that describes the core functionalities of the system', 'A requirement related to the technology used in development', 'A requirement that dictates the system’s user interface design', 'A requirement that specifies how the system performs under certain conditions'),
('img/requirements analysis and specifications.pdf', 'Which document outlines the agreed-upon requirements and serves as a reference for development and testing?', 'Requirements Specification Document', 'Project Plan', 'Technical Design Document', 'User Manual', 'Requirements Specification Document'),
('img/requirements analysis and specifications.pdf', 'What is the purpose of requirements validation?', 'To ensure that the documented requirements accurately reflect stakeholder needs and expectations', 'To develop a detailed design of the system', 'To estimate the project costs and resources', 'To implement the system according to specifications', 'To ensure that the documented requirements accurately reflect stakeholder needs and expectations'),
('img/requirements analysis and specifications.pdf', 'Which technique involves creating a preliminary model of the system to help understand and refine requirements?', 'Prototyping', 'Benchmarking', 'Simulation', 'Document Analysis', 'Prototyping'),
('img/requirements analysis and specifications.pdf', 'In the context of requirements analysis, what does \"traceability\" refer to?', 'The ability to track each requirement through the development process to ensure it is implemented and tested', 'The process of reviewing the project budget and timeline', 'The method of analyzing the market demand for the product', 'The technique of documenting user feedback and suggestions', 'The ability to track each requirement through the development process to ensure it is implemented and tested'),
('img/software coding and testing.pdf', 'What is the primary purpose of unit testing?', 'To verify that individual components of the software function correctly', 'To assess the overall performance of the software', 'To test the user interface design', 'To check system compatibility', 'To verify that individual components of the software function correctly'),
('img/software coding and testing.pdf', 'What is a test case?', 'A set of conditions or variables under which a tester assesses whether a software application is working correctly', 'A document that lists all project requirements', 'A code review process', 'A method for debugging code', 'A set of conditions or variables under which a tester assesses whether a software application is working correctly'),
('img/software coding and testing.pdf', 'What does the acronym CI/CD stand for?', 'Continuous Integration/Continuous Deployment', 'Critical Infrastructure/Continuous Delivery', 'Customer Integration/Code Deployment', 'Continuous Improvement/Continuous Delivery', 'Continuous Integration/Continuous Deployment'),
('img/software coding and testing.pdf', 'What is a bug?', 'An error or flaw in software that causes it to produce incorrect or unexpected results', 'A feature enhancement', 'A performance optimization', 'A type of software documentation', 'An error or flaw in software that causes it to produce incorrect or unexpected results'),
('img/software coding and testing.pdf', 'What is regression testing?', 'Testing to ensure that new code changes have not adversely affected existing functionalities', 'Testing the software’s performance under load', 'Testing the user interface design', 'Testing for security vulnerabilities', 'Testing to ensure that new code changes have not adversely affected existing functionalities'),
('img/software coding and testing.pdf', 'What is code coverage?', 'A measure of how much of the source code is executed by tests', 'The amount of documentation provided for the code', 'The complexity of the code', 'The number of features implemented', 'A measure of how much of the source code is executed by tests'),
('img/software coding and testing.pdf', 'What is a mock object in testing?', 'A simulated object used to test the interactions between components', 'A real object used for performance testing', 'A tool for tracking bugs', 'A type of code optimization', 'A simulated object used to test the interactions between components'),
('img/software coding and testing.pdf', 'What does the term \"continuous integration\" mean?', 'Frequent merging of code changes into a shared repository', 'Continuous deployment of software to end users', 'Ongoing performance monitoring of the software', 'Regular updates to the user interface', 'Frequent merging of code changes into a shared repository'),
('img/software coding and testing.pdf', 'What is a performance test?', 'A test to evaluate the speed, responsiveness, and stability of a system under load', 'A test to ensure that all features work as intended', 'A test to verify the security of the software', 'A test to check the compatibility of the software with different operating systems', 'A test to evaluate the speed, responsiveness, and stability of a system under load'),
('img/software coding and testing.pdf', 'What is the purpose of a code review?', 'To improve code quality by examining and providing feedback on the code written by others', 'To add new features to the software', 'To execute automated tests', 'To manage project timelines and budgets', 'To improve code quality by examining and providing feedback on the code written by others'),
('img/Software project management.ppt', 'What is the primary goal of software project management?', 'To plan, execute, and control software projects to meet objectives within constraints', 'To develop software code', 'To design user interfaces', 'To manage hardware resources', 'To plan, execute, and control software projects to meet objectives within constraints'),
('img/Software project management.ppt', 'Which document outlines the scope, objectives, and deliverables of a software project?', 'Project Charter', 'Requirement Specification', 'Design Document', 'Test Plan', 'Project Charter'),
('img/Software project management.ppt', 'What is the purpose of a project plan in software project management?', 'To detail the schedule, resources, and activities required to complete the project', 'To provide a detailed description of the software features', 'To outline the hardware and software requirements', 'To document user requirements and feedback', 'To detail the schedule, resources, and activities required to complete the project'),
('img/Software project management.ppt', 'Which project management methodology emphasizes iterative development and customer collaboration?', 'Agile', 'Waterfall', 'PRINCE2', 'Critical Path Method', 'Agile'),
('img/Software project management.ppt', 'What is the critical path in project management?', 'The longest sequence of tasks that determines the minimum project duration', 'The path with the most critical risks', 'The path that involves the most resource-intensive tasks', 'The path with the most dependencies', 'The longest sequence of tasks that determines the minimum project duration'),
('img/Software project management.ppt', 'What is risk management in the context of software project management?', 'The process of identifying, assessing, and mitigating potential issues that could impact the project', 'The method of managing project resources and budget', 'The technique for developing project timelines and milestones', 'The approach to designing and developing software features', 'The process of identifying, assessing, and mitigating potential issues that could impact the project'),
('img/Software project management.ppt', 'Which technique is used to estimate the cost and time required for software development tasks?', 'Work Breakdown Structure (WBS)', 'Earned Value Management (EVM)', 'Monte Carlo Simulation', 'Function Point Analysis', 'Work Breakdown Structure (WBS)'),
('img/Software project management.ppt', 'What is the purpose of a status report in software project management?', 'To provide updates on the project’s progress, issues, and changes', 'To describe the technical architecture of the software', 'To document the testing results and quality assurance', 'To outline the project’s budget and financial status', 'To provide updates on the project’s progress, issues, and changes'),
('img/Software project management.ppt', 'Which role is responsible for overseeing the entire software project and ensuring it meets its objectives?', 'Project Manager', 'Software Developer', 'Business Analyst', 'Quality Assurance Tester', 'Project Manager'),
('img/Software project management.ppt', 'What does the term “scope creep” refer to in software project management?', 'The uncontrolled expansion of project scope without adjustments to time, cost, and resources', 'The process of defining the project’s objectives and deliverables', 'The gradual increase in project budget due to unforeseen expenses', 'The delay in project schedule due to external factors', 'The uncontrolled expansion of project scope without adjustments to time, cost, and resources'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is sound?', 'A form of energy that travels through a medium as vibrations', 'A type of light wave', 'A static charge on an object', 'A chemical reaction', 'A form of energy that travels through a medium as vibrations'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'Which of the following is required for sound to travel?', 'A medium (solid, liquid, or gas)', 'A vacuum', 'An electrical current', 'A magnetic field', 'A medium (solid, liquid, or gas)'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the unit of measurement for sound intensity?', 'Decibel (dB)', 'Hertz (Hz)', 'Newton (N)', 'Joule (J)', 'Decibel (dB)'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What does the frequency of a sound wave determine?', 'The pitch of the sound', 'The loudness of the sound', 'The speed of sound', 'The direction of sound', 'The pitch of the sound'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the speed of sound in air at room temperature?', 'Approximately 343 meters per second', 'Approximately 1500 meters per second', 'Approximately 300,000 kilometers per second', 'Approximately 100 meters per second', 'Approximately 343 meters per second'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'Which term describes the distance between two consecutive crests of a sound wave?', 'Wavelength', 'Amplitude', 'Frequency', 'Velocity', 'Wavelength'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the term for the height of a sound wave crest, which affects the loudness of the sound?', 'Amplitude', 'Frequency', 'Wavelength', 'Velocity', 'Amplitude'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What phenomenon occurs when sound waves bounce off a surface?', 'Reflection', 'Refraction', 'Diffraction', 'Absorption', 'Reflection'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'What is the term for the bending of sound waves around obstacles or through openings?', 'Diffraction', 'Reflection', 'Refraction', 'Absorption', 'Diffraction'),
('img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'Which of the following materials is a good conductor of sound?', 'Metal', 'Wood', 'Plastic', 'Air', 'Metal'),
('img/9.Modern-physicstheory.pdf', 'What does quantum mechanics primarily study?', 'The behavior of particles at the atomic and subatomic levels', 'The movement of planets in the solar system', 'The flow of electric currents in circuits', 'The chemical reactions in living organisms', 'The behavior of particles at the atomic and subatomic levels'),
('img/9.Modern-physicstheory.pdf', 'Who is considered the father of quantum theory?', 'Max Planck', 'Isaac Newton', 'Albert Einstein', 'Niels Bohr', 'Max Planck'),
('img/9.Modern-physicstheory.pdf', 'What is the principle of superposition in quantum mechanics?', 'The principle that a particle can be in multiple states at once', 'The principle that energy is conserved in an isolated system', 'The principle that forces are balanced in equilibrium', 'The principle that particles move in straight lines unless acted upon by a force', 'The principle that a particle can be in multiple states at once'),
('img/9.Modern-physicstheory.pdf', 'What does the Heisenberg Uncertainty Principle state?', 'It is impossible to simultaneously know the exact position and momentum of a particle', 'Energy can neither be created nor destroyed', 'The speed of light is constant in a vacuum', 'For every action, there is an equal and opposite reaction', 'It is impossible to simultaneously know the exact position and momentum of a particle'),
('img/9.Modern-physicstheory.pdf', 'Which experiment demonstrated the wave-particle duality of light?', 'The double-slit experiment', 'The photoelectric effect', 'Rutherford’s gold foil experiment', 'Millikan’s oil drop experiment', 'The double-slit experiment'),
('img/9.Modern-physicstheory.pdf', 'Who proposed the theory of relativity?', 'Albert Einstein', 'James Clerk Maxwell', 'Niels Bohr', 'Werner Heisenberg', 'Albert Einstein'),
('img/9.Modern-physicstheory.pdf', 'What is the main concept of Einstein’s theory of relativity?', 'The interrelation of space, time, and gravity', 'The quantization of energy levels', 'The dual nature of light', 'The conservation of momentum', 'The interrelation of space, time, and gravity'),
('img/9.Modern-physicstheory.pdf', 'What is a quantum?', 'The smallest discrete quantity of a physical property', 'A large mass of energy', 'A continuous wave of light', 'A type of subatomic particle', 'The smallest discrete quantity of a physical property'),
('img/9.Modern-physicstheory.pdf', 'What phenomenon does the photoelectric effect demonstrate?', 'The emission of electrons from a material when exposed to light', 'The interference of light waves', 'The deflection of light by a prism', 'The generation of X-rays in a tube', 'The emission of electrons from a material when exposed to light'),
('img/9.Modern-physicstheory.pdf', 'Which principle states that no two electrons in an atom can have the same set of quantum numbers?', 'Pauli exclusion principle', 'Heisenberg uncertainty principle', 'Hund’s rule', 'Bohr’s postulates', 'Pauli exclusion principle'),
('img/12.VectorsTheory.pdf', 'What is a vector?', 'A quantity with both magnitude and direction', 'A quantity with only magnitude', 'A quantity with only direction', 'A scalar quantity', 'A quantity with both magnitude and direction'),
('img/12.VectorsTheory.pdf', 'Which of the following is an example of a vector?', 'Velocity', 'Temperature', 'Mass', 'Time', 'Velocity'),
('img/12.VectorsTheory.pdf', 'What is the result of adding two vectors?', 'A vector that represents the combined effect of both', 'A scalar sum of the magnitudes', 'The difference between their magnitudes', 'The average of their magnitudes', 'A vector that represents the combined effect of both'),
('img/12.VectorsTheory.pdf', 'What is the term for the length of a vector?', 'Magnitude', 'Direction', 'Component', 'Angle', 'Magnitude'),
('img/12.VectorsTheory.pdf', 'How are vectors typically represented graphically?', 'By arrows', 'By lines', 'By points', 'By shapes', 'By arrows'),
('img/12.VectorsTheory.pdf', 'What is the result when a vector is multiplied by a scalar?', 'A vector in the same or opposite direction with scaled magnitude', 'A scalar quantity', 'A vector perpendicular to the original', 'A vector with zero magnitude', 'A vector in the same or opposite direction with scaled magnitude'),
('img/12.VectorsTheory.pdf', 'Which operation combines two vectors into a single vector?', 'Vector addition', 'Scalar multiplication', 'Dot product', 'Cross product', 'Vector addition'),
('img/12.VectorsTheory.pdf', 'What is the term for the angle between two vectors when calculating the dot product?', 'Theta', 'Phi', 'Alpha', 'Beta', 'Theta'),
('img/12.VectorsTheory.pdf', 'What does the cross product of two vectors result in?', 'A vector perpendicular to both original vectors', 'A scalar product of their magnitudes', 'The sum of their magnitudes', 'A vector in the same direction', 'A vector perpendicular to both original vectors'),
('img/12.VectorsTheory.pdf', 'In which coordinate system are vectors often decomposed into components?', 'Cartesian coordinate system', 'Polar coordinate system', 'Cylindrical coordinate system', 'Spherical coordinate system', 'Cartesian coordinate system'),
('img/keep202.pdf', 'What is the primary function of a lens?', 'To focus light and form images', 'To reflect light', 'To absorb light', 'To disperse light into a spectrum', 'To focus light and form images'),
('img/keep202.pdf', 'What is the focal point of a lens?', 'The point where parallel rays of light converge or appear to diverge from', 'The point where light is absorbed by the lens', 'The center of the lens', 'The point where light is reflected back', 'The point where parallel rays of light converge or appear to diverge from'),
('img/keep202.pdf', 'What type of lens is thicker in the center than at the edges?', 'Convex lens', 'Concave lens', 'Biconcave lens', 'Planar lens', 'Convex lens'),
('img/keep202.pdf', 'What is the principal axis of a lens?', 'The line passing through the center of the lens and the focal points', 'The line perpendicular to the lens surface', 'The line parallel to the optical axis', 'The line passing through the lens curvature', 'The line passing through the center of the lens and the focal points'),
('img/keep202.pdf', 'What is the focal length of a lens?', 'The distance between the lens and its focal point', 'The distance between the lens and the object', 'The diameter of the lens', 'The distance between the two focal points', 'The distance between the lens and its focal point'),
('img/keep202.pdf', 'What type of image does a convex lens form when the object is placed beyond 2F?', 'A real, inverted image smaller than the object', 'A real, inverted image larger than the object', 'A virtual, upright image larger than the object', 'A virtual, upright image smaller than the object', 'A real, inverted image smaller than the object'),
('img/keep202.pdf', 'What type of lens is used to correct nearsightedness?', 'Concave lens', 'Convex lens', 'Bifocal lens', 'Trifocal lens', 'Concave lens'),
('img/keep202.pdf', 'How does a concave lens affect parallel rays of light?', 'It diverges the rays', 'It converges the rays', 'It reflects the rays', 'It absorbs the rays', 'It diverges the rays'),
('img/keep202.pdf', 'What happens to the image formed by a concave lens?', 'The image is virtual and upright', 'The image is real and inverted', 'The image is real and upright', 'The image is virtual and inverted', 'The image is virtual and upright'),
('img/keep202.pdf', 'Which lens is thicker at the edges and thinner in the center?', 'Concave lens', 'Convex lens', 'Bifocal lens', 'Planar lens', 'Concave lens'),
('img/CPU Scheduling.ppt', 'What is the primary goal of CPU scheduling?', 'To allocate CPU time to various processes efficiently', 'To increase the number of processes in the system', 'To optimize memory usage', 'To improve network performance', 'To allocate CPU time to various processes efficiently'),
('img/CPU Scheduling.ppt', 'What does the acronym FCFS stand for in CPU scheduling?', 'First-Come, First-Served', 'First-Come, First-Set', 'First-Come, First-Scheduled', 'Fast-Cycle First-Service', 'First-Come, First-Served'),
('img/CPU Scheduling.ppt', 'What is a key disadvantage of the FCFS scheduling algorithm?', 'It can lead to the \"convoy effect\" where shorter processes wait for longer ones', 'It does not handle priority-based scheduling', 'It is too complex to implement', 'It results in high context switching overhead', 'It can lead to the \"convoy effect\" where shorter processes wait for longer ones'),
('img/CPU Scheduling.ppt', 'What is a priority scheduling algorithm?', 'A method where processes are assigned priorities and the CPU is allocated to the process with the highest priority', 'A method where processes are allocated CPU time in a round-robin fashion', 'A method where processes are executed in the order they arrive', 'A method where CPU time is divided equally among all processes', 'A method where processes are assigned priorities and the CPU is allocated to the process with the highest priority'),
('img/CPU Scheduling.ppt', 'What does the acronym RR stand for in CPU scheduling?', 'Round-Robin', 'Rapid-Round', 'Random-Round', 'Rate-Round', 'Round-Robin'),
('img/CPU Scheduling.ppt', 'What is the main advantage of the Round-Robin (RR) scheduling algorithm?', 'It provides a fair allocation of CPU time among processes', 'It minimizes the turnaround time for all processes', 'It maximizes the throughput of the system', 'It prioritizes processes based on their arrival times', 'It provides a fair allocation of CPU time among processes'),
('img/CPU Scheduling.ppt', 'What is the concept of \"context switching\" in CPU scheduling?', 'The process of saving and loading the state of a CPU so that multiple processes can share a single CPU resource', 'The process of switching between different types of CPU hardware', 'The process of allocating more memory to the CPU', 'The process of changing the CPU scheduling algorithm', 'The process of saving and loading the state of a CPU so that multiple processes can share a single CPU resource'),
('img/CPU Scheduling.ppt', 'What is \"process starvation\" in CPU scheduling?', 'When a process is perpetually denied the CPU because other processes are continually given preference', 'When a process is terminated unexpectedly', 'When a process consumes excessive CPU time', 'When a process is incorrectly scheduled to a lower priority', 'When a process is perpetually denied the CPU because other processes are continually given preference'),
('img/CPU Scheduling.ppt', 'What does \"multilevel feedback queue\" scheduling involve?', 'Using multiple queues with different priority levels and allowing processes to move between them based on their behavior', 'Using a single queue to manage all processes', 'Allocating CPU time based on fixed time slices', 'Assigning priorities to processes and not allowing them to change', 'Using multiple queues with different priority levels and allowing processes to move between them based on their behavior'),
('img/CPU Scheduling.ppt', 'What is the difference between preemptive and non-preemptive scheduling?', 'Preemptive scheduling allows processes to be interrupted and resumed later, while non-preemptive scheduling does not', 'Preemptive scheduling prioritizes I/O-bound processes, while non-preemptive scheduling prioritizes CPU-bound processes', 'Preemptive scheduling uses a fixed time slice, while non-preemptive scheduling uses variable time slices', 'Preemptive scheduling is only used in real-time systems, while non-preemptive scheduling is used in general-purpose systems', 'Preemptive scheduling allows processes to be interrupted and resumed later, while non-preemptive scheduling does not'),
('img/Deadlocks.pdf', 'What is a deadlock in computing?', 'A situation where two or more processes are unable to proceed because each is waiting for the other to release resources', 'A type of system crash caused by hardware failure', 'An error in software code that prevents execution', 'A state where a system is running slowly due to high load', 'A situation where two or more processes are unable to proceed because each is waiting for the other to release resources'),
('img/Deadlocks.pdf', 'Which of the following is a necessary condition for a deadlock to occur?', 'Mutual Exclusion', 'Resource Sharing', 'Non-preemption', 'Process Scheduling', 'Mutual Exclusion'),
('img/Deadlocks.pdf', 'What does the “Hold and Wait” condition in deadlock theory refer to?', 'A process holding resources while waiting for additional resources to be allocated', 'A process that immediately releases resources when it requests more', 'A system that prevents multiple processes from accessing shared resources', 'A method for prioritizing processes in a queue', 'A process holding resources while waiting for additional resources to be allocated'),
('img/Deadlocks.pdf', 'Which technique involves analyzing the state of the system to determine if a deadlock has occurred?', 'Deadlock Detection', 'Deadlock Prevention', 'Deadlock Avoidance', 'Resource Allocation', 'Deadlock Detection'),
('img/Deadlocks.pdf', 'What is deadlock prevention?', 'A strategy to ensure that at least one of the necessary conditions for deadlock cannot occur', 'A method for detecting and resolving deadlocks after they occur', 'A way to avoid potential deadlocks by analyzing system state', 'A technique for managing resources to reduce contention', 'A strategy to ensure that at least one of the necessary conditions for deadlock cannot occur'),
('img/Deadlocks.pdf', 'In which deadlock avoidance algorithm does a process request resources in a manner that does not lead to a deadlock?', 'Banker’s Algorithm', 'Two-Phase Locking', 'Priority Scheduling', 'Round Robin Scheduling', 'Banker’s Algorithm'),
('img/Deadlocks.pdf', 'What is the purpose of resource allocation graphs in deadlock detection?', 'To visually represent the allocation and request of resources to identify potential deadlocks', 'To track the usage of system resources over time', 'To assign priorities to different processes', 'To manage the scheduling of tasks in the system', 'To visually represent the allocation and request of resources to identify potential deadlocks'),
('img/Deadlocks.pdf', 'What does the term “Circular Wait” refer to in the context of deadlocks?', 'A condition where a set of processes are waiting for each other in a circular chain', 'A method for arranging processes in a queue', 'A system where resources are shared among processes', 'A technique for allocating resources based on priority', 'A condition where a set of processes are waiting for each other in a circular chain'),
('img/Deadlocks.pdf', 'Which approach involves designing the system in such a way as to prevent the occurrence of deadlocks?', 'Deadlock Prevention', 'Deadlock Detection', 'Deadlock Recovery', 'Deadlock Avoidance', 'Deadlock Prevention'),
('img/Deadlocks.pdf', 'What is the role of the “Wait-for Graph” in deadlock detection?', 'To represent the relationships between processes and the resources they are waiting for', 'To manage the allocation of resources in the system', 'To schedule processes based on priority', 'To log resource usage and system performance', 'To represent the relationships between processes and the resources they are waiting for'),
('img/introduction to Operating systems.pdf', 'What is the primary role of an operating system?', 'To manage hardware resources and provide a user interface', 'To compile source code into executable programs', 'To connect computers in a network', 'To create and manage databases', 'To manage hardware resources and provide a user interface'),
('img/introduction to Operating systems.pdf', 'Which of the following is an example of a system call?', 'Opening a file', 'Displaying a webpage', 'Calculating a mathematical expression', 'Running a web browser', 'Opening a file'),
('img/introduction to Operating systems.pdf', 'What does the term \"multitasking\" refer to in operating systems?', 'The ability to run multiple processes or threads simultaneously', 'The ability to manage multiple users on a system', 'The ability to handle multiple network connections', 'The ability to schedule tasks in the background', 'The ability to run multiple processes or threads simultaneously'),
('img/introduction to Operating systems.pdf', 'What is a process in the context of operating systems?', 'An instance of a running program', 'A static set of instructions in memory', 'A file stored on disk', 'A user interface component', 'An instance of a running program'),
('img/introduction to Operating systems.pdf', 'What is virtual memory?', 'A memory management technique that gives the illusion of a larger amount of memory than is physically available', 'A type of cache memory used to speed up access to frequently used data', 'A memory area reserved for system processes', 'A special type of disk storage used for backups', 'A memory management technique that gives the illusion of a larger amount of memory than is physically available'),
('img/introduction to Operating systems.pdf', 'What is a file system?', 'A method for storing and organizing files on a storage device', 'A set of system calls for file operations', 'A tool for managing network connections', 'A program for creating and editing files', 'A method for storing and organizing files on a storage device'),
('img/introduction to Operating systems.pdf', 'What does the acronym GUI stand for?', 'Graphical User Interface', 'General User Interface', 'Graphical Unified Interface', 'Generic User Interface', 'Graphical User Interface'),
('img/introduction to Operating systems.pdf', 'What is the purpose of device drivers in an operating system?', 'To enable communication between the operating system and hardware devices', 'To manage system resources', 'To provide a user interface for system management', 'To handle network traffic', 'To enable communication between the operating system and hardware devices'),
('img/introduction to Operating systems.pdf', 'What is a kernel in an operating system?', 'The core component that manages system resources and hardware interactions', 'A type of user interface', 'A software application for managing files', 'A network protocol for data transmission', 'The core component that manages system resources and hardware interactions'),
('img/introduction to Operating systems.pdf', 'What does \"user space\" refer to in an operating system?', 'The memory space where user applications and processes run', 'The area reserved for system kernel operations', 'The space allocated for file system metadata', 'The region used for virtual memory management', 'The memory space where user applications and processes run'),
('img/memory management techniques.pdf', 'What is the primary goal of memory management in an operating system?', 'To efficiently allocate and deallocate memory to processes and ensure optimal use of system resources', 'To increase the speed of the CPU', 'To manage file storage on disk drives', 'To handle network communication between processes', 'To efficiently allocate and deallocate memory to processes and ensure optimal use of system resources'),
('img/memory management techniques.pdf', 'What does paging involve in memory management?', 'Dividing memory into fixed-size blocks and mapping them to physical memory', 'Allocating memory in variable-size chunks', 'Storing data in non-volatile memory', 'Managing memory allocation for input/output operations', 'Dividing memory into fixed-size blocks and mapping them to physical memory'),
('img/memory management techniques.pdf', 'Which memory management technique allows processes to use more memory than physically available by using disk space as virtual memory?', 'Virtual Memory', 'Segmentation', 'Paging', 'Swapping', 'Virtual Memory'),
('img/memory management techniques.pdf', 'What is segmentation in memory management?', 'Dividing memory into segments based on the logical structure of programs', 'Dividing memory into fixed-size pages', 'Allocating memory in continuous blocks', 'Managing memory through a page table', 'Dividing memory into segments based on the logical structure of programs'),
('img/memory management techniques.pdf', 'What is a page table used for in paging?', 'To map virtual addresses to physical addresses', 'To manage file allocation on disk', 'To track memory usage statistics', 'To handle process scheduling', 'To map virtual addresses to physical addresses'),
('img/memory management techniques.pdf', 'What is thrashing in the context of memory management?', 'A situation where excessive paging or swapping leads to decreased system performance', 'The process of cleaning up unused memory blocks', 'The allocation of memory for high-priority processes', 'A method for compressing memory contents', 'A situation where excessive paging or swapping leads to decreased system performance'),
('img/memory management techniques.pdf', 'What is the purpose of memory allocation algorithms?', 'To determine how and where memory will be allocated to processes', 'To increase the speed of memory access', 'To manage the storage of data on disk', 'To handle network data transmission', 'To determine how and where memory will be allocated to processes'),
('img/memory management techniques.pdf', 'Which technique involves moving processes between main memory and disk to free up memory for other processes?', 'Swapping', 'Paging', 'Segmentation', 'Compaction', 'Swapping'),
('img/memory management techniques.pdf', 'What does compaction aim to achieve in memory management?', 'To reduce fragmentation by rearranging memory contents', 'To increase the amount of virtual memory available', 'To optimize the speed of memory access', 'To handle inter-process communication', 'To reduce fragmentation by rearranging memory contents');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/memory management techniques.pdf', 'What is the primary advantage of using virtual memory?', 'It allows processes to use more memory than physically available by utilizing disk space', 'It increases the speed of memory access', 'It simplifies the management of memory allocation', 'It reduces the cost of physical memory', 'It allows processes to use more memory than physically available by utilizing disk space'),
('img/trigonometry.pdf', 'What is the basic definition of sine in a right triangle?', 'The ratio of the length of the opposite side to the hypotenuse', 'The ratio of the length of the adjacent side to the hypotenuse', 'The ratio of the length of the opposite side to the adjacent side', 'The ratio of the length of the hypotenuse to the adjacent side', 'The ratio of the length of the opposite side to the hypotenuse'),
('img/trigonometry.pdf', 'Which trigonometric function is the reciprocal of cosine?', 'Secant', 'Tangent', 'Sine', 'Cotangent', 'Secant'),
('img/trigonometry.pdf', 'What is the Pythagorean identity for sine and cosine?', 'sin²θ + cos²θ = 1', 'sin²θ - cos²θ = 1', 'sinθ + cosθ = 0', 'sinθ - cosθ = 1', 'sin²θ + cos²θ = 1'),
('img/trigonometry.pdf', 'What is the tangent of an angle in a right triangle?', 'The ratio of the length of the opposite side to the adjacent side', 'The ratio of the length of the hypotenuse to the opposite side', 'The ratio of the length of the adjacent side to the hypotenuse', 'The ratio of the length of the hypotenuse to the adjacent side', 'The ratio of the length of the opposite side to the adjacent side'),
('img/trigonometry.pdf', 'Which angle is known as the reference angle for 150°?', '30°', '60°', '45°', '90°', '30°'),
('img/trigonometry.pdf', 'How do you find the angle of elevation from the tangent function?', 'Take the inverse tangent (arctan) of the ratio of the opposite side to the adjacent side', 'Take the sine of the angle', 'Take the cosine of the angle', 'Take the inverse cosine (arccos) of the ratio of the adjacent side to the hypotenuse', 'Take the inverse tangent (arctan) of the ratio of the opposite side to the adjacent side'),
('img/trigonometry.pdf', 'What is the law of sines?', 'The ratio of the length of each side to the sine of the angle opposite that side is constant for all sides of a triangle', 'The sum of the squares of the sides of a right triangle equals the square of the hypotenuse', 'The ratio of the lengths of the opposite sides to the hypotenuse is equal for all angles in a right triangle', 'The product of the sides is equal to the product of the angles', 'The ratio of the length of each side to the sine of the angle opposite that side is constant for all sides of a triangle'),
('img/Partial Fractions.pdf', 'What is the purpose of partial fraction decomposition?', 'To break down a rational function into simpler fractions', 'To integrate complex functions directly', 'To solve algebraic equations', 'To find the roots of polynomial equations', 'To break down a rational function into simpler fractions'),
('img/Partial Fractions.pdf', 'When performing partial fraction decomposition, which form is used for linear factors in the denominator?', 'A/(ax+b)', 'A/(x^2+b)', 'A/(x^2+ax+b)', 'A/(x+b)', 'A/(ax+b)'),
('img/Partial Fractions.pdf', 'What is the correct form for partial fraction decomposition when the denominator has repeated linear factors?', 'A/(x-r) + B/(x-r)^2', 'A/(x^2-r) + B/(x-r)^2', 'A/(x-r) + B/(x-r)', 'A/(x^2-r) + B/(x-r)^2', 'A/(x-r) + B/(x-r)^2'),
('img/Partial Fractions.pdf', 'How do you handle quadratic factors in the denominator during partial fraction decomposition?', 'Use the form (Ax+B)/(x^2+bx+c)', 'Use the form A/x^2 + B/x', 'Use the form A/(x^2+b)', 'Use the form A/(x^2+ax)', 'Use the form (Ax+B)/(x^2+bx+c)'),
('img/Partial Fractions.pdf', 'What is the first step in partial fraction decomposition?', 'Express the rational function as a sum of simpler fractions', 'Combine all terms into a single fraction', 'Find the common denominator of all terms', 'Multiply both sides by the denominator', 'Express the rational function as a sum of simpler fractions'),
('img/Partial Fractions.pdf', 'In partial fraction decomposition, what is the role of the constants A, B, C, etc.?', 'To be determined by solving a system of linear equations', 'To represent the roots of the polynomial', 'To provide exact values of the fractions', 'To simplify the original function directly', 'To be determined by solving a system of linear equations'),
('img/Partial Fractions.pdf', 'Which method is commonly used to solve for the constants in partial fraction decomposition?', 'Equating coefficients', 'Substitution method', 'Long division', 'Synthetic division', 'Equating coefficients'),
('img/Partial Fractions.pdf', 'What is a necessary condition for a function to be decomposed into partial fractions?', 'The degree of the numerator must be less than the degree of the denominator', 'The denominator must be a polynomial with distinct roots', 'The function must be an exponential function', 'The function must be a trigonometric function', 'The degree of the numerator must be less than the degree of the denominator'),
('img/Partial Fractions.pdf', 'What is the typical final step in partial fraction decomposition?', 'Integrate each simpler fraction separately', 'Combine all fractions into one', 'Simplify the original function', 'Multiply through by the common denominator', 'Integrate each simpler fraction separately'),
('img/Partial Fractions.pdf', 'When decomposing a rational function with a quadratic denominator, which of the following forms is used?', 'Ax+B/(x^2+bx+c)', 'A/(x^2+bx+c)', 'Ax+B/x^2', 'A/(x^2)+B/(x+c)', 'Ax+B/(x^2+bx+c)'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the sum of the interior angles of a triangle?', '180 degrees', '90 degrees', '360 degrees', '270 degrees', '180 degrees'),
('img/MATHGEOU10Properties_Triangles.pdf', 'In an isosceles triangle, which angles are equal?', 'The two angles opposite the equal sides', 'The three angles of the triangle', 'The two angles adjacent to the equal side', 'The right angle and the other two angles', 'The two angles opposite the equal sides'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the name of a triangle with all three sides of different lengths?', 'Scalene triangle', 'Equilateral triangle', 'Isosceles triangle', 'Right triangle', 'Scalene triangle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'Which type of triangle has one angle greater than 90 degrees?', 'Obtuse triangle', 'Acute triangle', 'Equilateral triangle', 'Right triangle', 'Obtuse triangle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the property of the sides in an equilateral triangle?', 'All sides are equal in length', 'Two sides are equal in length', 'One side is longer than the other two', 'All angles are equal', 'All sides are equal in length'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the hypotenuse of a right triangle?', 'The side opposite the right angle', 'The side adjacent to the right angle', 'The longest side', 'The shortest side', 'The side opposite the right angle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What does the Triangle Inequality Theorem state?', 'The sum of the lengths of any two sides of a triangle must be greater than the length of the remaining side', 'The difference between the lengths of any two sides of a triangle must be greater than the length of the third side', 'The sum of the angles of any triangle is always equal to 90 degrees', 'All sides of a triangle are equal in length', 'The sum of the lengths of any two sides of a triangle must be greater than the length of the remaining side'),
('img/MATHGEOU10Properties_Triangles.pdf', 'In a right triangle, what is the Pythagorean theorem?', 'a² + b² = c², where c is the hypotenuse', 'a² + b² = c², where a and b are the legs', 'a² + b² = 2c, where c is the hypotenuse', 'a² + b² = c, where a and b are the legs', 'a² + b² = c², where c is the hypotenuse'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What type of triangle has all angles less than 90 degrees?', 'Acute triangle', 'Obtuse triangle', 'Right triangle', 'Equilateral triangle', 'Acute triangle'),
('img/MATHGEOU10Properties_Triangles.pdf', 'What is the centroid of a triangle?', 'The point where the three medians intersect', 'The point where the three altitudes intersect', 'The point where the three angle bisectors intersect', 'The point where the three perpendicular bisectors intersect', 'The point where the three medians intersect'),
('img/Laplace.pdf', 'What is the Laplace transform of a function?', 'A method to transform a time-domain function into a frequency-domain function', 'A technique to solve differential equations directly', 'A way to simplify algebraic expressions', 'A process to find the roots of a polynomial', 'A method to transform a time-domain function into a frequency-domain function'),
('img/Laplace.pdf', 'Which of the following is a property of the Laplace transform?', 'Linearity', 'Non-linearity', 'Additivity', 'Multiplicativity', 'Linearity'),
('img/Laplace.pdf', 'What is the Laplace transform of the derivative of a function f(t)?', 'sF(s) - f(0)', 'sF(s) + f(0)', 'F(s) - f(0)', 's^2F(s) - f(0)', 'sF(s) - f(0)'),
('img/Laplace.pdf', 'What is the inverse Laplace transform used for?', 'To convert a function from the frequency domain back to the time domain', 'To simplify algebraic functions', 'To solve for eigenvalues', 'To transform matrices', 'To convert a function from the frequency domain back to the time domain'),
('img/Laplace.pdf', 'What is the Laplace transform of t^n where n is a positive integer?', 'n!/s^(n+1)', '1/s^n', 'n!/s^n', 'n/s^(n+1)', 'n!/s^(n+1)'),
('img/Laplace.pdf', 'What does the convolution theorem state about the Laplace transform?', 'The Laplace transform of the convolution of two functions is the product of their Laplace transforms', 'The Laplace transform of a function is equal to its inverse transform', 'The convolution of two Laplace transforms equals their sum', 'The convolution of a function with itself equals its Laplace transform', 'The Laplace transform of the convolution of two functions is the product of their Laplace transforms'),
('img/Laplace.pdf', 'What is the Laplace transform of sin(at)?', 'a/(s^2 + a^2)', 's/(s^2 + a^2)', 'a/(s + a)', '1/(s^2 + a^2)', 'a/(s^2 + a^2)'),
('img/Laplace.pdf', 'Which function is commonly used as a standard function in Laplace transforms?', 'Heaviside step function', 'Exponential function', 'Logarithmic function', 'Power function', 'Heaviside step function'),
('img/hyperbolicfunctions.pdf', 'What is the definition of the hyperbolic sine function, sinh(x)?', 'sinh(x) = (e^x - e^(-x)) / 2', 'sinh(x) = (e^x + e^(-x)) / 2', 'sinh(x) = e^x - e^(-x)', 'sinh(x) = e^x + e^(-x)', 'sinh(x) = (e^x - e^(-x)) / 2'),
('img/hyperbolicfunctions.pdf', 'What is the definition of the hyperbolic cosine function, cosh(x)?', 'cosh(x) = (e^x + e^(-x)) / 2', 'cosh(x) = (e^x - e^(-x)) / 2', 'cosh(x) = e^x + e^(-x)', 'cosh(x) = e^x - e^(-x)', 'cosh(x) = (e^x + e^(-x)) / 2'),
('img/hyperbolicfunctions.pdf', 'Which hyperbolic function is analogous to the trigonometric function sine?', 'sinh(x)', 'cosh(x)', 'tanh(x)', 'csch(x)', 'sinh(x)'),
('img/hyperbolicfunctions.pdf', 'Which hyperbolic function is analogous to the trigonometric function cosine?', 'cosh(x)', 'sinh(x)', 'tanh(x)', 'csch(x)', 'cosh(x)'),
('img/hyperbolicfunctions.pdf', 'What is the relationship between sinh(x) and cosh(x) in terms of hyperbolic identity?', 'sinh^2(x) + cosh^2(x) = cosh^2(x)', 'sinh^2(x) - cosh^2(x) = -1', 'sinh^2(x) + cosh^2(x) = 1', 'sinh^2(x) - cosh^2(x) = 1', 'sinh^2(x) - cosh^2(x) = -1'),
('img/hyperbolicfunctions.pdf', 'What is the derivative of sinh(x)?', 'cosh(x)', 'sinh(x)', 'e^x', 'e^(-x)', 'cosh(x)'),
('img/hyperbolicfunctions.pdf', 'What is the derivative of cosh(x)?', 'sinh(x)', 'cosh(x)', 'e^x', 'e^(-x)', 'sinh(x)'),
('img/hyperbolicfunctions.pdf', 'What is the value of sinh(0)?', '0', '1', '-1', 'e', '0'),
('img/hyperbolicfunctions.pdf', 'Which hyperbolic function is the reciprocal of sinh(x)?', 'csch(x)', 'sech(x)', 'cotanh(x)', 'tanh(x)', 'csch(x)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of the sum of two angles, θ and φ?', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'sin(θ + φ) = sin(θ) + sin(φ)', 'sin(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'sin(θ + φ) = 2sin(θ)cos(φ)', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of the difference of two angles, θ and φ?', 'cos(θ - φ) = cos(θ)cos(φ) + sin(θ)sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'cos(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'cos(θ - φ) = 2cos(θ) - sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the tangent of the sum of two angles, θ and φ?', 'tan(θ + φ) = (tan(θ) + tan(φ)) / (1 - tan(θ)tan(φ))', 'tan(θ + φ) = tan(θ) + tan(φ)', 'tan(θ + φ) = (tan(θ) - tan(φ)) / (1 + tan(θ)tan(φ))', 'tan(θ + φ) = (1 - tan(θ)tan(φ)) / (tan(θ) + tan(φ))', 'tan(θ + φ) = (tan(θ) + tan(φ)) / (1 - tan(θ)tan(φ))'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of the difference of two angles, θ and φ?', 'sin(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'sin(θ - φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'sin(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'sin(θ - φ) = 2sin(θ)cos(φ)', 'sin(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of the sum of two angles, θ and φ?', 'cos(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'cos(θ + φ) = cos(θ)cos(φ) + sin(θ)sin(φ)', 'cos(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'cos(θ + φ) = cos(θ) - sin(φ)', 'cos(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the tangent of the difference of two angles, θ and φ?', 'tan(θ - φ) = (tan(θ) - tan(φ)) / (1 + tan(θ)tan(φ))', 'tan(θ - φ) = (tan(θ) + tan(φ)) / (1 - tan(θ)tan(φ))', 'tan(θ - φ) = (1 - tan(θ)tan(φ)) / (tan(θ) + tan(φ))', 'tan(θ - φ) = tan(θ)tan(φ) / (1 - tan(θ)tan(φ))', 'tan(θ - φ) = (tan(θ) - tan(φ)) / (1 + tan(θ)tan(φ))'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of 2θ?', 'sin(2θ) = 2sin(θ)cos(θ)', 'sin(2θ) = sin²(θ) - cos²(θ)', 'sin(2θ) = 2cos²(θ) - 1', 'sin(2θ) = sin²(θ) + cos²(θ)', 'sin(2θ) = 2sin(θ)cos(θ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of 2θ?', 'cos(2θ) = cos²(θ) - sin²(θ)', 'cos(2θ) = 2cos(θ)sin(θ)', 'cos(2θ) = cos²(θ) + sin²(θ)', 'cos(2θ) = 1 - 2sin²(θ)', 'cos(2θ) = cos²(θ) - sin²(θ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the tangent of 2θ?', 'tan(2θ) = 2tan(θ) / (1 - tan²(θ))', 'tan(2θ) = (1 - tan²(θ)) / (2tan(θ))', 'tan(2θ) = tan²(θ) / (1 - tan(θ))', 'tan(2θ) = (tan(θ) + tan(θ)) / (1 - tan²(θ))', 'tan(2θ) = 2tan(θ) / (1 - tan²(θ))'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the cosine of the difference between two angles, θ and φ?', 'cos(θ - φ) = cos(θ)cos(φ) + sin(θ)sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'cos(θ - φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'cos(θ - φ) = 1 - cos(θ)sin(φ)', 'cos(θ - φ) = cos(θ)cos(φ) + sin(θ)sin(φ)'),
('img/Compound_angle_identities_LESSON.pdf', 'What is the formula for the sine of the sum of two angles, θ and φ?', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)', 'sin(θ + φ) = cos(θ)cos(φ) - sin(θ)sin(φ)', 'sin(θ + φ) = sin(θ) - cos(φ)', 'sin(θ + φ) = sin(θ)cos(φ) - cos(θ)sin(φ)', 'sin(θ + φ) = sin(θ)cos(φ) + cos(θ)sin(φ)'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of sine?', 'arcsin', 'arccos', 'arctan', 'arccot', 'arcsin'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the range of the arcsine function?', '-π/2 to π/2', '0 to π', '0 to 2π', '-π to π', '-π/2 to π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the value of arcsin(1)?', 'π/2', 'π', '0', '3π/2', 'π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of cosine?', 'arccos', 'arcsin', 'arctan', 'arccot', 'arccos'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the range of the arccosine function?', '0 to π', '-π/2 to π/2', '0 to 2π', '-π to π', '0 to π'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the value of arccos(0)?', 'π/2', 'π', '0', '3π/2', 'π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of tangent?', 'arctan', 'arccos', 'arcsin', 'arccot', 'arctan'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the range of the arctangent function?', '-π/2 to π/2', '0 to π', '-π to π', '0 to 2π', '-π/2 to π/2'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the value of arctan(1)?', 'π/4', 'π/2', 'π', '3π/4', 'π/4'),
('img/mc-ty-trigeqn-2009-1.pdf', 'What is the inverse function of cotangent?', 'arccot', 'arctan', 'arcsin', 'arccos', 'arccot'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the definition of a limit of a function as x approaches a value?', 'The value that the function approaches as x gets closer to that value', 'The value of the function at x', 'The maximum value of the function', 'The average value of the function over an interval', 'The value that the function approaches as x gets closer to that value'),
('img/311_Maths_Eng_Lesson25.pdf', 'What does it mean if the limit of a function as x approaches a point is infinite?', 'The function increases or decreases without bound as x approaches the point', 'The function approaches a finite value', 'The function is not defined at that point', 'The function has a vertical asymptote at that point', 'The function increases or decreases without bound as x approaches the point'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the limit of f(x) = 2x as x approaches 3?', '6', '3', '2', '5', '6'),
('img/311_Maths_Eng_Lesson25.pdf', 'Which of the following statements is true about limits?', 'Limits must exist from both sides of a point for the limit at that point to exist', 'Limits can exist from only one side of a point', 'Limits are always finite', 'Limits depend on the function being continuous', 'Limits must exist from both sides of a point for the limit at that point to exist'),
('img/311_Maths_Eng_Lesson25.pdf', 'What does continuity at a point require?', 'The function must be defined at the point, the limit must exist at the point, and the limit must equal the function value', 'The function must be defined at the point', 'The function must be continuous everywhere', 'The limit must be zero at the point', 'The function must be defined at the point, the limit must exist at the point, and the limit must equal the function value'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is a removable discontinuity?', 'A discontinuity that can be removed by redefining the function at a single point', 'A discontinuity that cannot be removed', 'A discontinuity where the function is not defined', 'A discontinuity where the function has a vertical asymptote', 'A discontinuity that can be removed by redefining the function at a single point'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the definition of a function being continuous over an interval?', 'The function is continuous at every point within the interval', 'The function has no discontinuities anywhere', 'The function is differentiable within the interval', 'The function has the same value at the endpoints of the interval', 'The function is continuous at every point within the interval'),
('img/311_Maths_Eng_Lesson25.pdf', 'Which of the following is an example of a function with a jump discontinuity?', 'A piecewise function with different values on different intervals', 'A function with an asymptote', 'A function with a hole', 'A function with a removable discontinuity', 'A piecewise function with different values on different intervals'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the limit of f(x) = 1/x as x approaches 0 from the positive side?', 'Positive infinity', 'Negative infinity', 'Zero', 'One', 'Positive infinity'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of x with respect to x?', 'x²/2 + C', 'x² + C', '2x + C', 'x + C', 'x²/2 + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of e^x with respect to x?', 'e^x + C', 'e^x - C', 'x e^x + C', 'e^x/x + C', 'e^x + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of 1/x with respect to x?', 'ln|x| + C', '1/x² + C', 'x ln|x| + C', 'x + C', 'ln|x| + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of sin(x) with respect to x?', '-cos(x) + C', 'cos(x) + C', '-sin(x) + C', 'sin(x) + C', '-cos(x) + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of cos(x) with respect to x?', 'sin(x) + C', '-sin(x) + C', 'cos(x) + C', '-cos(x) + C', 'sin(x) + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of x² with respect to x?', 'x³/3 + C', 'x³ + C', '3x² + C', 'x²/2 + C', 'x³/3 + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of a constant k with respect to x?', 'kx + C', 'k/x + C', 'k²x + C', 'k/x² + C', 'kx + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the integral of 1 with respect to x?', 'x + C', 'x² + C', '1/x + C', 'x²/2 + C', 'x + C'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the method of integration by parts used for?', 'To integrate the product of two functions', 'To integrate functions with polynomial denominators', 'To find antiderivatives of exponential functions', 'To solve differential equations', 'To integrate the product of two functions'),
('img/311_Maths_Eng_Lesson25.pdf', 'What is the formula for integration by parts?', '∫u dv = uv - ∫v du', '∫u dv = uv + ∫v du', '∫u dv = uv - ∫u du', '∫u dv = v du - ∫v du', '∫u dv = uv - ∫v du'),
('img/java_tutorial.pdf', 'What is Java primarily used for?', 'Developing web applications, mobile apps, and enterprise software', 'Designing graphics and animations', 'Creating low-level system software', 'Managing hardware resources', 'Developing web applications, mobile apps, and enterprise software'),
('img/java_tutorial.pdf', 'What does the acronym \"JVM\" stand for?', 'Java Virtual Machine', 'Java Variable Manager', 'Java Visual Markup', 'Java Verification Module', 'Java Virtual Machine'),
('img/java_tutorial.pdf', 'Which keyword is used to define a class in Java?', 'class', 'define', 'struct', 'object', 'class'),
('img/java_tutorial.pdf', 'What is the purpose of the \"main\" method in a Java program?', 'To serve as the entry point for the program execution', 'To define the data types used in the program', 'To handle user input', 'To manage memory allocation', 'To serve as the entry point for the program execution'),
('img/java_tutorial.pdf', 'What does the term \"inheritance\" refer to in Java?', 'A mechanism where one class acquires properties and behaviors of another class', 'A method for managing memory', 'A technique for handling exceptions', 'A way to create user interfaces', 'A mechanism where one class acquires properties and behaviors of another class'),
('img/java_tutorial.pdf', 'What is an interface in Java?', 'A reference type that can contain method signatures but no implementation', 'A class that defines data fields and methods', 'A type of exception handling mechanism', 'A method for managing threads', 'A reference type that can contain method signatures but no implementation'),
('img/java_tutorial.pdf', 'Which Java keyword is used to handle exceptions?', 'try', 'handle', 'catch', 'error', 'try'),
('img/java_tutorial.pdf', 'What does the \"public\" keyword signify in Java?', 'That the member or method can be accessed from any other class', 'That the member or method is private to the class', 'That the member or method is only accessible within the package', 'That the member or method is protected and can be accessed by subclasses', 'That the member or method can be accessed from any other class'),
('img/java_tutorial.pdf', 'What is the purpose of the \"super\" keyword in Java?', 'To call a method or constructor of the superclass from a subclass', 'To define a static variable', 'To create a new thread', 'To handle input/output operations', 'To call a method or constructor of the superclass from a subclass'),
('img/java_tutorial.pdf', 'What does the term \"polymorphism\" mean in Java?', 'The ability of different classes to be treated as instances of the same class through a common interface', 'The process of defining multiple methods with the same name but different parameters', 'The mechanism of hiding data and providing access through methods', 'The process of creating objects from a class', 'The ability of different classes to be treated as instances of the same class through a common interface'),
('img/java_files_io.pdf', 'What is the primary purpose of Java I/O?', 'To handle input and output operations in Java applications', 'To manage memory allocation in Java', 'To connect to databases in Java', 'To define the structure of Java classes', 'To handle input and output operations in Java applications'),
('img/java_files_io.pdf', 'Which class is used for reading character data in Java?', 'FileReader', 'FileWriter', 'BufferedReader', 'ObjectInputStream', 'FileReader'),
('img/java_files_io.pdf', 'Which class is used to write data to a file in Java?', 'FileWriter', 'FileReader', 'BufferedWriter', 'PrintStream', 'FileWriter'),
('img/java_files_io.pdf', 'What does the BufferedReader class do in Java?', 'Reads text from a character-based input stream efficiently', 'Writes text to a character-based output stream', 'Handles binary data input and output', 'Provides a way to serialize objects', 'Reads text from a character-based input stream efficiently'),
('img/java_files_io.pdf', 'What is the purpose of the FileInputStream class?', 'To read byte data from a file', 'To write character data to a file', 'To read and write objects from a file', 'To manage file paths and directories', 'To read byte data from a file'),
('img/java_files_io.pdf', 'Which method is used to read data from a file using FileInputStream?', 'read()', 'write()', 'flush()', 'close()', 'read()'),
('img/java_files_io.pdf', 'What is the purpose of the ObjectOutputStream class in Java I/O?', 'To serialize objects and write them to an output stream', 'To read objects from an input stream', 'To manage file metadata', 'To handle file system operations', 'To serialize objects and write them to an output stream'),
('img/java_files_io.pdf', 'Which class provides methods for reading and writing text files efficiently by buffering data?', 'BufferedReader', 'FileReader', 'FileWriter', 'PrintWriter', 'BufferedReader'),
('img/java_files_io.pdf', 'What is the Serializable interface used for in Java?', 'To mark a class whose objects can be serialized and deserialized', 'To provide methods for reading and writing files', 'To manage network connections', 'To handle concurrency in Java applications', 'To mark a class whose objects can be serialized and deserialized'),
('img/collections in java.pdf', 'What is the primary purpose of Java Collections Framework?', 'To provide data structures and algorithms for managing groups of objects', 'To handle low-level memory management', 'To perform file I/O operations', 'To create graphical user interfaces', 'To provide data structures and algorithms for managing groups of objects'),
('img/collections in java.pdf', 'Which interface in the Java Collections Framework represents a collection of elements with unique keys?', 'Map', 'List', 'Set', 'Queue', 'Map'),
('img/collections in java.pdf', 'What does the \"List\" interface in Java Collections Framework represent?', 'An ordered collection that allows duplicate elements', 'A collection of unique elements with no specific order', 'A collection of key-value pairs', 'A collection of elements that are processed in a FIFO manner', 'An ordered collection that allows duplicate elements'),
('img/collections in java.pdf', 'Which class in Java Collections Framework implements the \"List\" interface?', 'ArrayList', 'HashSet', 'TreeMap', 'PriorityQueue', 'ArrayList'),
('img/collections in java.pdf', 'What is the primary feature of the \"Set\" interface in Java?', 'It does not allow duplicate elements', 'It maintains elements in a specific order', 'It provides fast access to elements by index', 'It allows elements to be accessed by a key', 'It does not allow duplicate elements'),
('img/collections in java.pdf', 'Which class in Java Collections Framework implements the \"Set\" interface?', 'HashSet', 'LinkedList', 'ArrayList', 'Hashtable', 'HashSet'),
('img/collections in java.pdf', 'What does the \"Queue\" interface in Java Collections Framework represent?', 'A collection designed for holding elements prior to processing in a FIFO manner', 'A collection of elements with no specific order', 'A collection of unique key-value pairs', 'A collection with elements that can be accessed by index', 'A collection designed for holding elements prior to processing in a FIFO manner'),
('img/collections in java.pdf', 'Which class in Java Collections Framework provides a queue with priority ordering?', 'PriorityQueue', 'LinkedList', 'ArrayDeque', 'HashSet', 'PriorityQueue'),
('img/collections in java.pdf', 'What is the purpose of the \"Collections\" utility class in Java?', 'To provide static methods for operating on collections', 'To define new collection types', 'To manage memory usage in collections', 'To serialize and deserialize collections', 'To provide static methods for operating on collections'),
('img/collections in java.pdf', 'Which interface would you use to represent a collection that maintains elements in a sorted order?', 'SortedSet', 'Set', 'List', 'Queue', 'SortedSet'),
('img/Exception Handling in java.pdf', 'What is the primary purpose of exception handling in Java?', 'To manage runtime errors and ensure normal program execution', 'To compile the source code into bytecode', 'To create graphical user interfaces', 'To handle file input and output operations', 'To manage runtime errors and ensure normal program execution'),
('img/Exception Handling in java.pdf', 'Which keyword is used to start an exception handling block in Java?', 'try', 'catch', 'throw', 'finally', 'try'),
('img/Exception Handling in java.pdf', 'Which keyword is used to throw an exception manually in Java?', 'throw', 'catch', 'try', 'finally', 'throw'),
('img/Exception Handling in java.pdf', 'Which class is the base class for all exceptions in Java?', 'Exception', 'Throwable', 'Error', 'RuntimeException', 'Throwable'),
('img/Exception Handling in java.pdf', 'Which exception type is used for programming errors that are typically not expected to be handled by the program?', 'Error', 'Exception', 'RuntimeException', 'IOException', 'Error'),
('img/multi threading.pdf', 'What is multithreading?', 'The concurrent execution of two or more threads within a single process', 'The sequential execution of multiple processes', 'The parallel execution of multiple programs', 'The execution of tasks using different CPU cores', 'The concurrent execution of two or more threads within a single process'),
('img/multi threading.pdf', 'Which class in Java provides methods for creating and managing threads?', 'Thread', 'Runnable', 'Executor', 'Callable', 'Thread'),
('img/multi threading.pdf', 'What method is used to start a thread in Java?', 'start()', 'run()', 'execute()', 'begin()', 'start()'),
('img/multi threading.pdf', 'What is the purpose of the \"run()\" method in a thread?', 'To define the code that constitutes the new thread', 'To pause the thread execution', 'To stop the thread execution', 'To create a new thread instance', 'To define the code that constitutes the new thread'),
('img/multi threading.pdf', 'How can you make a thread wait for a specific amount of time in Java?', 'Using the sleep() method', 'Using the wait() method', 'Using the delay() method', 'Using the pause() method', 'Using the sleep() method'),
('img/multi threading.pdf', 'What is a thread-safe class?', 'A class that is designed to handle concurrent access by multiple threads without issues', 'A class that can execute multiple threads simultaneously', 'A class that manages thread lifecycle', 'A class that does not allow any thread access', 'A class that is designed to handle concurrent access by multiple threads without issues'),
('img/multi threading.pdf', 'Which interface must a class implement to create a thread by using the Executor framework?', 'Runnable', 'Callable', 'ExecutorService', 'Thread', 'Runnable'),
('img/multi threading.pdf', 'What does the \"synchronized\" keyword do in Java?', 'It ensures that a method or block of code is accessed by only one thread at a time', 'It creates a new thread', 'It pauses the thread execution', 'It allows multiple threads to run simultaneously', 'It ensures that a method or block of code is accessed by only one thread at a time'),
('img/multi threading.pdf', 'What is a deadlock in multithreading?', 'A situation where two or more threads are blocked forever, waiting for each other to release resources', 'A condition where threads execute without any synchronization', 'A scenario where threads run faster than expected', 'A state where threads complete their tasks successfully', 'A situation where two or more threads are blocked forever, waiting for each other to release resources'),
('img/multi threading.pdf', 'Which of the following is a method for inter-thread communication?', 'wait()', 'sleep()', 'yield()', 'join()', 'wait()'),
('img/Applet in Java.pdf', 'What is a Java applet?', 'A small program that runs in a web browser or applet viewer', 'A standalone application that runs on the desktop', 'A server-side program that manages web requests', 'A library for graphical user interface components', 'A small program that runs in a web browser or applet viewer'),
('img/Applet in Java.pdf', 'Which class is the base class for all applets?', 'Applet', 'Application', 'JFrame', 'Swing', 'Applet'),
('img/Applet in Java.pdf', 'What method is used to initialize an applet?', 'init()', 'start()', 'paint()', 'stop()', 'init()'),
('img/Applet in Java.pdf', 'What method is called to display the applet on the screen?', 'paint()', 'init()', 'start()', 'stop()', 'paint()'),
('img/Applet in Java.pdf', 'Which method is called when an applet is stopped or unloaded?', 'stop()', 'init()', 'paint()', 'start()', 'stop()'),
('img/Applet in Java.pdf', 'What is the purpose of the \"destroy()\" method in an applet?', 'To clean up resources before the applet is destroyed', 'To initialize applet parameters', 'To start applet execution', 'To draw on the applet window', 'To clean up resources before the applet is destroyed'),
('img/Applet in Java.pdf', 'How do applets handle user interaction events, like mouse clicks?', 'By overriding event handling methods such as mousePressed()', 'By using the main() method', 'By creating new threads', 'By calling the start() method', 'By overriding event handling methods such as mousePressed()'),
('img/Applet in Java.pdf', 'What is the primary purpose of the \"getParameter()\" method in an applet?', 'To retrieve parameters passed to the applet from the HTML code', 'To initialize applet resources', 'To paint graphics on the applet window', 'To manage applet lifecycle events', 'To retrieve parameters passed to the applet from the HTML code'),
('img/Applet in Java.pdf', 'Which HTML tag is used to embed an applet in a web page?', '<applet>', '<embed>', '<object>', '<java>', '<applet>'),
('img/Applet in Java.pdf', 'What is a major limitation of Java applets compared to modern web technologies?', 'Security restrictions and limited browser support', 'Higher performance and faster execution', 'Better graphical capabilities', 'Full access to system resources', 'Security restrictions and limited browser support'),
('img/Entrepreneurship_deployment.pdf', 'What is the primary goal of entrepreneurship?', 'To create and manage new business ventures', 'To invest in stocks and bonds', 'To work in a corporate environment', 'To pursue higher education', 'To create and manage new business ventures'),
('img/Entrepreneurship_deployment.pdf', 'What is a common characteristic of successful entrepreneurs?', 'Risk-taking ability', 'Avoiding new challenges', 'Strict adherence to routines', 'Working alone', 'Risk-taking ability'),
('img/Entrepreneurship_deployment.pdf', 'Which of the following is a typical stage in the entrepreneurial process?', 'Idea generation', 'Employee recruitment', 'Market analysis', 'Product launch', 'Idea generation'),
('img/Entrepreneurship_deployment.pdf', 'What is a business plan?', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts', 'A list of tasks to complete in the first week of operations', 'A legal document for registering a business name', 'A summary of market trends and competitor analysis', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts'),
('img/Entrepreneurship_deployment.pdf', 'What is market research used for?', 'To understand customer needs and market conditions', 'To develop a new product design', 'To manage day-to-day operations', 'To create financial statements', 'To understand customer needs and market conditions'),
('img/Entrepreneurship_deployment.pdf', 'What does ROI stand for in business?', 'Return on Investment', 'Rate of Interest', 'Revenue of Investment', 'Return on Income', 'Return on Investment'),
('img/Entrepreneurship_deployment.pdf', 'Which financial statement shows a company’s profitability over a period of time?', 'Income Statement', 'Balance Sheet', 'Cash Flow Statement', 'Statement of Retained Earnings', 'Income Statement'),
('img/Entrepreneurship_deployment.pdf', 'What is a startup accelerator?', 'A program that provides funding and mentorship to early-stage startups', 'A software tool for managing business operations', 'A marketing strategy for growing customer base', 'A type of business loan', 'A program that provides funding and mentorship to early-stage startups'),
('img/Entrepreneurship_deployment.pdf', 'What is the purpose of a pitch deck?', 'To present a business idea to potential investors or partners', 'To track daily sales and expenses', 'To manage human resources', 'To analyze market trends', 'To present a business idea to potential investors or partners'),
('img/Entrepreneurship_deployment.pdf', 'What is the difference between a sole proprietorship and a corporation?', 'A corporation provides limited liability protection while a sole proprietorship does not', 'A sole proprietorship can issue shares of stock', 'A corporation has fewer regulatory requirements', 'A sole proprietorship offers more tax benefits', 'A corporation provides limited liability protection while a sole proprietorship does not'),
('img/Entrepreneurship_deployment.pdf', 'What is the primary goal of entrepreneurship?', 'To create and manage new business ventures', 'To invest in stocks and bonds', 'To work in a corporate environment', 'To pursue higher education', 'To create and manage new business ventures'),
('img/Entrepreneurship_deployment.pdf', 'What is a common characteristic of successful entrepreneurs?', 'Risk-taking ability', 'Avoiding new challenges', 'Strict adherence to routines', 'Working alone', 'Risk-taking ability'),
('img/Entrepreneurship_deployment.pdf', 'Which of the following is a typical stage in the entrepreneurial process?', 'Idea generation', 'Employee recruitment', 'Market analysis', 'Product launch', 'Idea generation'),
('img/Entrepreneurship_deployment.pdf', 'What is a business plan?', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts', 'A list of tasks to complete in the first week of operations', 'A legal document for registering a business name', 'A summary of market trends and competitor analysis', 'A detailed document outlining a business’s objectives, strategies, and financial forecasts'),
('img/Entrepreneurship_deployment.pdf', 'What is market research used for?', 'To understand customer needs and market conditions', 'To develop a new product design', 'To manage day-to-day operations', 'To create financial statements', 'To understand customer needs and market conditions'),
('img/Entrepreneurship_deployment.pdf', 'What does ROI stand for in business?', 'Return on Investment', 'Rate of Interest', 'Revenue of Investment', 'Return on Income', 'Return on Investment'),
('img/Entrepreneurship_deployment.pdf', 'Which financial statement shows a company’s profitability over a period of time?', 'Income Statement', 'Balance Sheet', 'Cash Flow Statement', 'Statement of Retained Earnings', 'Income Statement'),
('img/Entrepreneurship_deployment.pdf', 'What is a startup accelerator?', 'A program that provides funding and mentorship to early-stage startups', 'A software tool for managing business operations', 'A marketing strategy for growing customer base', 'A type of business loan', 'A program that provides funding and mentorship to early-stage startups'),
('img/Entrepreneurship_deployment.pdf', 'What is the purpose of a pitch deck?', 'To present a business idea to potential investors or partners', 'To track daily sales and expenses', 'To manage human resources', 'To analyze market trends', 'To present a business idea to potential investors or partners'),
('img/Entrepreneurship_deployment.pdf', 'What is the difference between a sole proprietorship and a corporation?', 'A corporation provides limited liability protection while a sole proprietorship does not', 'A sole proprietorship can issue shares of stock', 'A corporation has fewer regulatory requirements', 'A sole proprietorship offers more tax benefits', 'A corporation provides limited liability protection while a sole proprietorship does not'),
('img/organization structure and behaviour.pdf', 'What is organizational structure?', 'The way in which the roles, responsibilities, and authority are distributed within an organization', 'The process of managing employee performance', 'The method of setting business goals and objectives', 'The strategy for marketing products and services', 'The way in which the roles, responsibilities, and authority are distributed within an organization'),
('img/organization structure and behaviour.pdf', 'Which type of organizational structure is characterized by a clear hierarchy and rigidly defined roles?', 'Hierarchical structure', 'Matrix structure', 'Flat structure', 'Network structure', 'Hierarchical structure'),
('img/organization structure and behaviour.pdf', 'What is a matrix structure in an organization?', 'A structure where employees report to both functional and project managers', 'A structure with a single chain of command', 'A structure with no formal hierarchy', 'A structure with multiple levels of management', 'A structure where employees report to both functional and project managers'),
('img/organization structure and behaviour.pdf', 'What does organizational behavior study?', 'How individuals and groups act within an organization', 'The financial performance of an organization', 'The technology used in business operations', 'The market trends affecting an industry', 'How individuals and groups act within an organization'),
('img/organization structure and behaviour.pdf', 'Which theory suggests that employees are motivated by their needs being fulfilled in a hierarchy?', 'Maslow’s Hierarchy of Needs', 'Herzberg’s Two-Factor Theory', 'McGregor’s Theory X and Theory Y', 'Equity Theory', 'Maslow’s Hierarchy of Needs'),
('img/organization structure and behaviour.pdf', 'What is the primary focus of Herzberg’s Two-Factor Theory?', 'The distinction between hygiene factors and motivators', 'The relationship between job satisfaction and financial incentives', 'The impact of management styles on employee performance', 'The influence of organizational culture on productivity', 'The distinction between hygiene factors and motivators'),
('img/organization structure and behaviour.pdf', 'Which organizational behavior concept involves employees perception of fairness in the workplace?', 'Equity Theory', 'Expectancy Theory', 'Reinforcement Theory', 'Social Learning Theory', 'Equity Theory'),
('img/organization structure and behaviour.pdf', 'What is the purpose of organizational culture?', 'To shape and guide the behavior of employees within an organization', 'To establish the financial objectives of the organization', 'To design the physical layout of the workplace', 'To manage the supply chain and logistics', 'To shape and guide the behavior of employees within an organization'),
('img/organization structure and behaviour.pdf', 'In a flat organizational structure, what is typically reduced?', 'The number of management levels', 'The amount of employee responsibility', 'The level of team collaboration', 'The scope of organizational goals', 'The number of management levels'),
('img/organization structure and behaviour.pdf', 'What is a key characteristic of a decentralized organizational structure?', 'Decision-making authority is distributed among various levels of management', 'All decisions are made by top management only', 'The organization has a single, unified control system', 'The structure is highly formalized and rigid', 'Decision-making authority is distributed among various levels of management'),
('img/material management.pdf', 'What is material management?', 'The process of planning, organizing, and controlling material resources to meet production needs', 'The process of marketing products to customers', 'The management of financial resources within an organization', 'The organization of human resources for effective team performance', 'The process of planning, organizing, and controlling material resources to meet production needs'),
('img/material management.pdf', 'What is the primary goal of inventory management?', 'To ensure materials are available for production while minimizing excess inventory', 'To maximize the number of suppliers used', 'To reduce the cost of production by increasing inventory', 'To store materials indefinitely without concern for cost', 'To ensure materials are available for production while minimizing excess inventory'),
('img/material management.pdf', 'Which inventory management method involves tracking inventory in real-time as items are added or removed?', 'Just-in-Time (JIT)', 'Periodic Review', 'Economic Order Quantity (EOQ)', 'FIFO (First In, First Out)', 'Just-in-Time (JIT)'),
('img/material management.pdf', 'What does the Economic Order Quantity (EOQ) model help determine?', 'The optimal order quantity that minimizes total inventory costs', 'The best time to reorder materials', 'The most cost-effective supplier', 'The ideal inventory level for safety stock', 'The optimal order quantity that minimizes total inventory costs'),
('img/material management.pdf', 'Which term refers to the amount of inventory held to prevent stockouts due to demand variability?', 'Safety stock', 'Reorder point', 'Cycle stock', 'Lead time inventory', 'Safety stock'),
('img/material management.pdf', 'What is the purpose of the reorder point in inventory management?', 'To trigger the ordering of new inventory when stock levels fall below a specified level', 'To determine the quantity of inventory to order', 'To set the minimum stock level for safety', 'To calculate the total cost of inventory holding', 'To trigger the ordering of new inventory when stock levels fall below a specified level'),
('img/material management.pdf', 'What does the Just-in-Time (JIT) inventory system aim to achieve?', 'To minimize inventory levels and reduce waste by receiving goods only as they are needed', 'To maintain high levels of inventory to ensure production continuity', 'To order materials in large quantities to take advantage of bulk discounts', 'To stockpile materials for future production needs', 'To minimize inventory levels and reduce waste by receiving goods only as they are needed'),
('img/material management.pdf', 'Which inventory management technique is based on the principle that the oldest inventory items are sold or used first?', 'FIFO (First In, First Out)', 'LIFO (Last In, First Out)', 'JIT (Just-In-Time)', 'ABC Analysis', 'FIFO (First In, First Out)'),
('img/material management.pdf', 'What is the primary benefit of using ABC analysis in inventory management?', 'To prioritize inventory items based on their importance and value', 'To automate the inventory ordering process', 'To standardize inventory quantities across all products', 'To calculate the reorder point for all items', 'To prioritize inventory items based on their importance and value'),
('img/material management.pdf', 'What role does material handling play in material management?', 'To facilitate the efficient movement and storage of materials within the supply chain', 'To manage supplier relationships and negotiate contracts', 'To plan and forecast future material requirements', 'To ensure compliance with regulatory standards', 'To facilitate the efficient movement and storage of materials within the supply chain'),
('img/production management.pdf', 'What is production management?', 'The process of planning, organizing, directing, and controlling production activities to achieve efficient and effective production', 'The management of financial resources in an organization', 'The process of marketing and sales', 'The administration of human resources', 'The process of planning, organizing, directing, and controlling production activities to achieve efficient and effective production'),
('img/production management.pdf', 'What is the main goal of production planning?', 'To ensure that production processes are optimized and meet demand', 'To manage inventory levels', 'To handle employee scheduling', 'To oversee financial performance', 'To ensure that production processes are optimized and meet demand'),
('img/production management.pdf', 'Which production strategy involves producing goods only when orders are received?', 'Just-in-Time (JIT)', 'Mass Production', 'Batch Production', 'Continuous Production', 'Just-in-Time (JIT)');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/production management.pdf', 'What is the purpose of a Bill of Materials (BOM)?', 'To list all raw materials and components required to produce a product', 'To outline the production process steps', 'To define the cost of production', 'To plan the workforce requirements', 'To list all raw materials and components required to produce a product'),
('img/production management.pdf', 'Which inventory management method involves maintaining high inventory levels to ensure production continuity?', 'Safety Stock', 'Economic Order Quantity (EOQ)', 'Just-in-Time (JIT)', 'Cycle Stock', 'Safety Stock'),
('img/production management.pdf', 'What does the term \"lead time\" refer to in production management?', 'The time taken from placing an order for materials to receiving them', 'The time required to complete a production run', 'The duration of a production cycle', 'The time for product development', 'The time taken from placing an order for materials to receiving them'),
('img/production management.pdf', 'What is the purpose of production scheduling?', 'To allocate resources and plan production activities to meet demand efficiently', 'To track inventory levels', 'To manage supplier relationships', 'To set marketing strategies', 'To allocate resources and plan production activities to meet demand efficiently'),
('img/production management.pdf', 'Which production process is characterized by producing products in large quantities in a continuous flow?', 'Continuous Production', 'Batch Production', 'Job Shop Production', 'Mass Production', 'Continuous Production'),
('img/production management.pdf', 'What is the main objective of quality control in production?', 'To ensure that products meet specified quality standards and reduce defects', 'To increase production speed', 'To lower production costs', 'To expand product lines', 'To ensure that products meet specified quality standards and reduce defects'),
('img/production management.pdf', 'What does \"capacity planning\" involve in production management?', 'Determining the production capacity needed to meet demand', 'Planning the layout of the production facility', 'Managing supplier relationships', 'Forecasting future sales', 'Determining the production capacity needed to meet demand'),
('img/8086 micro processor.pdf', 'What is the primary function of the 8086 microprocessor?', 'To execute instructions and perform arithmetic and logical operations', 'To manage network communications', 'To control peripheral devices', 'To handle file system operations', 'To execute instructions and perform arithmetic and logical operations'),
('img/8086 micro processor.pdf', 'What is the word size of the 8086 microprocessor?', '16 bits', '8 bits', '32 bits', '64 bits', '16 bits'),
('img/8086 micro processor.pdf', 'How many address lines does the 8086 microprocessor have?', '20 address lines', '16 address lines', '24 address lines', '32 address lines', '20 address lines'),
('img/8086 micro processor.pdf', 'Which register in the 8086 microprocessor is used to store the offset address in a segment?', 'Base Register', 'Index Register', 'Stack Pointer', 'Offset Register', 'Base Register'),
('img/8086 micro processor.pdf', 'What are the two main types of instructions in the 8086 microprocessor?', 'Data transfer and arithmetic instructions', 'Control and logic instructions', 'Input and output instructions', 'Branch and jump instructions', 'Data transfer and arithmetic instructions'),
('img/8086 micro processor.pdf', 'Which of the following is a 16-bit general-purpose register in the 8086 microprocessor?', 'AX', 'AL', 'AH', 'BH', 'AX'),
('img/8086 micro processor.pdf', 'What is the function of the Instruction Pointer (IP) register in the 8086 microprocessor?', 'To hold the address of the next instruction to be executed', 'To store the result of arithmetic operations', 'To keep track of stack operations', 'To store the base address of a data segment', 'To hold the address of the next instruction to be executed'),
('img/8086 micro processor.pdf', 'What does the term \"segmentation\" refer to in the 8086 microprocessor?', 'The division of memory into segments for efficient management', 'The process of converting data into instructions', 'The method of accessing data from external devices', 'The technique for optimizing processor speed', 'The division of memory into segments for efficient management'),
('img/8086 micro processor.pdf', 'Which of the following is an example of a control instruction in the 8086 microprocessor?', 'JMP', 'ADD', 'MOV', 'SUB', 'JMP'),
('img/computer organisation.pdf', 'What is computer organization?', 'The study of the internal structure and operation of a computer system', 'The design of software applications and user interfaces', 'The management of computer networks and data security', 'The process of creating computer algorithms and data structures', 'The study of the internal structure and operation of a computer system'),
('img/computer organisation.pdf', 'What does the Central Processing Unit (CPU) do in a computer?', 'Executes instructions and processes data', 'Stores data permanently', 'Provides the interface between hardware and software', 'Manages the flow of data between peripherals', 'Executes instructions and processes data'),
('img/computer organisation.pdf', 'What is the purpose of the memory hierarchy in computer systems?', 'To balance speed and cost by using different types of memory', 'To increase the overall storage capacity of the system', 'To manage network connections and data transfer', 'To optimize software performance and reliability', 'To balance speed and cost by using different types of memory'),
('img/computer organisation.pdf', 'Which type of memory is used for temporary storage of data that is quickly accessible by the CPU?', 'Cache Memory', 'Hard Disk Drive', 'Optical Disk', 'RAM', 'Cache Memory'),
('img/computer organisation.pdf', 'What is an instruction set architecture (ISA)?', 'The collection of instructions that a CPU can execute', 'The physical layout of the computer’s hardware components', 'The software layer that interacts with the hardware', 'The process of designing computer algorithms', 'The collection of instructions that a CPU can execute'),
('img/computer organisation.pdf', 'What does the term “bus” refer to in computer organization?', 'A communication pathway that connects different components of a computer system', 'A type of storage device used for backup', 'A software application for managing hardware resources', 'A method for encrypting data during transmission', 'A communication pathway that connects different components of a computer system'),
('img/computer organisation.pdf', 'What is the function of the ALU (Arithmetic Logic Unit) in the CPU?', 'To perform arithmetic and logical operations', 'To manage data storage and retrieval', 'To control the flow of data between components', 'To provide the user interface for the computer', 'To perform arithmetic and logical operations'),
('img/computer organisation.pdf', 'Which component of the CPU is responsible for fetching and decoding instructions?', 'Control Unit', 'Arithmetic Logic Unit (ALU)', 'Cache Memory', 'Registers', 'Control Unit'),
('img/computer organisation.pdf', 'What is virtual memory?', 'A technique that allows the use of disk space to extend the apparent size of physical memory', 'A type of memory used for high-speed processing', 'The amount of memory available in a computer’s RAM', 'A method for managing memory in software applications', 'A technique that allows the use of disk space to extend the apparent size of physical memory'),
('img/computer organisation.pdf', 'What does “pipelining” refer to in CPU architecture?', 'The technique of overlapping instruction execution to improve performance', 'The method of managing memory allocation', 'The process of optimizing disk storage', 'The design of network communication protocols', 'The technique of overlapping instruction execution to improve performance'),
('img/input output organisation.pdf', 'What is the primary function of I/O organization in a computer system?', 'To manage and control the input and output operations between the computer and external devices', 'To perform arithmetic and logical operations', 'To manage memory and storage devices', 'To handle network communications', 'To manage and control the input and output operations between the computer and external devices'),
('img/input output organisation.pdf', 'What is the purpose of an I/O controller?', 'To manage data transfer between the CPU and peripheral devices', 'To perform calculations and data processing', 'To store and retrieve data from memory', 'To control the execution of software programs', 'To manage data transfer between the CPU and peripheral devices'),
('img/input output organisation.pdf', 'What does DMA stand for in I/O organization?', 'Direct Memory Access', 'Dynamic Memory Allocation', 'Data Management Application', 'Direct Memory Allocation', 'Direct Memory Access'),
('img/input output organisation.pdf', 'What is the main advantage of using DMA for I/O operations?', 'It allows data to be transferred directly between memory and a peripheral device without involving the CPU', 'It increases the CPU\'s processing speed', 'It simplifies memory management', 'It reduces the need for external storage devices', 'It allows data to be transferred directly between memory and a peripheral device without involving the CPU'),
('img/input output organisation.pdf', 'What is the difference between polling and interrupts in I/O operations?', 'Polling involves continuously checking the status of a device, while interrupts allow the device to signal the CPU when it needs attention', 'Polling is used for disk operations, while interrupts are used for network operations', 'Polling is a hardware technique, while interrupts are software-based', 'Polling is faster than interrupts', 'Polling involves continuously checking the status of a device, while interrupts allow the device to signal the CPU when it needs attention'),
('img/input output organisation.pdf', 'What is an I/O buffer?', 'A temporary storage area used to hold data during I/O operations', 'A type of memory used for long-term storage', 'A device used to process input data', 'A software program for managing I/O devices', 'A temporary storage area used to hold data during I/O operations'),
('img/input output organisation.pdf', 'What does the acronym \"PIO\" stand for in I/O organization?', 'Programmed Input/Output', 'Peripheral Input/Output', 'Primary Input/Output', 'Process Input/Output', 'Programmed Input/Output'),
('img/input output organisation.pdf', 'What is the purpose of an I/O port?', 'To provide a connection point for peripheral devices to communicate with the computer', 'To increase the computer’s processing power', 'To store data temporarily during processing', 'To manage network connections', 'To provide a connection point for peripheral devices to communicate with the computer'),
('img/input output organisation.pdf', 'What role does the system bus play in I/O operations?', 'It facilitates communication between the CPU, memory, and I/O devices', 'It stores data for long-term access', 'It performs arithmetic and logic operations', 'It manages power supply to the computer', 'It facilitates communication between the CPU, memory, and I/O devices'),
('img/input output organisation.pdf', 'What is the purpose of an I/O scheduler?', 'To manage the order and priority of I/O operations to optimize performance', 'To handle memory allocation for I/O devices', 'To execute software programs for I/O operations', 'To monitor and maintain I/O device health', 'To manage the order and priority of I/O operations to optimize performance'),
('img/Memory organisation.pdf', 'What is memory organization in computing?', 'The way in which memory is structured and accessed in a computer system', 'The process of creating software applications', 'The design of computer hardware components', 'The management of network resources', 'The way in which memory is structured and accessed in a computer system'),
('img/Memory organisation.pdf', 'What does the term “memory hierarchy” refer to?', 'The arrangement of different types of memory in a system based on speed and size', 'The process of allocating memory to software applications', 'The method of organizing data on disk drives', 'The structure of memory in a networked environment', 'The arrangement of different types of memory in a system based on speed and size'),
('img/Memory organisation.pdf', 'Which type of memory is known for its fast access times and is used to store frequently accessed data?', 'Cache Memory', 'Hard Disk Drive', 'Optical Disk', 'Virtual Memory', 'Cache Memory'),
('img/Memory organisation.pdf', 'What is the role of RAM (Random Access Memory) in a computer system?', 'To provide temporary storage for data and instructions that are actively used by the CPU', 'To store data permanently on the hard drive', 'To manage network connections and data transfer', 'To execute software applications and programs', 'To provide temporary storage for data and instructions that are actively used by the CPU'),
('img/Memory organisation.pdf', 'What is the function of virtual memory?', 'To extend the apparent size of physical memory by using disk space', 'To increase the speed of memory access by using faster storage devices', 'To manage the organization of files on disk', 'To provide a backup for data storage in case of system failure', 'To extend the apparent size of physical memory by using disk space'),
('img/Memory organisation.pdf', 'Which memory type is characterized by being non-volatile and used for long-term storage?', 'Hard Disk Drive', 'Cache Memory', 'RAM', 'Registers', 'Hard Disk Drive'),
('img/Memory organisation.pdf', 'What is the purpose of a memory management unit (MMU)?', 'To handle the translation of virtual addresses to physical addresses', 'To increase the speed of data access in memory', 'To manage the allocation of CPU time to processes', 'To store data permanently on disk', 'To handle the translation of virtual addresses to physical addresses'),
('img/Memory organisation.pdf', 'What is the primary characteristic of associative memory?', 'The ability to access data based on content rather than a specific address', 'The speed of accessing data through direct addressing', 'The use of virtual addresses for data retrieval', 'The storage of data in a sequential manner', 'The ability to access data based on content rather than a specific address'),
('img/Memory organisation.pdf', 'Which memory organization technique involves dividing memory into fixed-size blocks?', 'Paging', 'Segmentation', 'Virtual Memory', 'Swapping', 'Paging'),
('img/Memory organisation.pdf', 'What is the function of memory segmentation?', 'To divide memory into variable-sized segments based on program needs', 'To allocate memory in fixed-size blocks for uniform access', 'To manage data storage in disk drives', 'To handle the translation of addresses in virtual memory', 'To divide memory into variable-sized segments based on program needs'),
('img/micro processors.pdf', 'What is the primary function of a microprocessor?', 'To execute instructions and perform calculations for a computer system', 'To manage network communications', 'To handle input/output operations', 'To store data and programs', 'To execute instructions and perform calculations for a computer system'),
('img/micro processors.pdf', 'What does the term \"clock speed\" refer to in a microprocessor?', 'The speed at which a microprocessor executes instructions', 'The amount of memory a microprocessor can access', 'The number of cores in a microprocessor', 'The size of the microprocessor chip', 'The speed at which a microprocessor executes instructions'),
('img/micro processors.pdf', 'What is an instruction set?', 'A collection of instructions that a microprocessor can execute', 'A list of hardware components in a computer system', 'A set of programming languages for the microprocessor', 'A collection of external devices connected to the microprocessor', 'A collection of instructions that a microprocessor can execute'),
('img/micro processors.pdf', 'Which component in a microprocessor handles arithmetic and logical operations?', 'ALU (Arithmetic Logic Unit)', 'CU (Control Unit)', 'Register File', 'Cache Memory', 'ALU (Arithmetic Logic Unit)'),
('img/micro processors.pdf', 'What does the acronym \"CPU\" stand for?', 'Central Processing Unit', 'Central Peripheral Unit', 'Computer Processing Unit', 'Central Program Unit', 'Central Processing Unit'),
('img/micro processors.pdf', 'What is the role of the Control Unit (CU) in a microprocessor?', 'To fetch, decode, and execute instructions', 'To perform arithmetic and logical operations', 'To store data temporarily during processing', 'To manage communication with peripheral devices', 'To fetch, decode, and execute instructions'),
('img/micro processors.pdf', 'What is the function of cache memory in a microprocessor?', 'To provide faster access to frequently used data', 'To store large amounts of data for long-term use', 'To manage input/output operations', 'To execute instructions more efficiently', 'To provide faster access to frequently used data'),
('img/micro processors.pdf', 'What is a register in the context of a microprocessor?', 'A small, fast storage location used to hold data and instructions temporarily', 'A permanent storage location on the hard drive', 'An external device connected to the microprocessor', 'A type of memory used for system backups', 'A small, fast storage location used to hold data and instructions temporarily'),
('img/micro processors.pdf', 'What is the difference between a microprocessor and a microcontroller?', 'A microcontroller includes a microprocessor along with memory and peripherals on a single chip', 'A microprocessor is used for simple tasks, while a microcontroller handles complex tasks', 'A microcontroller is faster than a microprocessor', 'A microprocessor is used for embedded systems, while a microcontroller is used for general computing', 'A microcontroller includes a microprocessor along with memory and peripherals on a single chip'),
('img/micro processors.pdf', 'What does the term \"pipeline\" refer to in a microprocessor?', 'A technique where multiple instructions are processed simultaneously in different stages', 'A method for cooling the microprocessor', 'A process for increasing clock speed', 'A way to manage memory allocation', 'A technique where multiple instructions are processed simultaneously in different stages'),
('img/computer-networking.pdf', 'What is the primary purpose of a computer network?', 'To enable communication and resource sharing between computers', 'To increase storage capacity', 'To enhance computer processing speed', 'To manage software applications', 'To enable communication and resource sharing between computers'),
('img/computer-networking.pdf', 'What does the acronym \"LAN\" stand for in networking?', 'Local Area Network', 'Large Area Network', 'Long-distance Access Network', 'Low-speed Access Network', 'Local Area Network'),
('img/computer-networking.pdf', 'What is the function of a router in a network?', 'To direct data packets between different networks and manage traffic', 'To store data on a hard drive', 'To increase the speed of the internet connection', 'To provide power to network devices', 'To direct data packets between different networks and manage traffic'),
('img/computer-networking.pdf', 'Which layer of the OSI model is responsible for data encryption?', 'Presentation Layer', 'Application Layer', 'Transport Layer', 'Network Layer', 'Presentation Layer'),
('img/computer-networking.pdf', 'What does the acronym \"IP\" stand for in networking?', 'Internet Protocol', 'Internal Protocol', 'Internet Port', 'Integrated Processor', 'Internet Protocol'),
('img/computer-networking.pdf', 'What is a subnet mask used for?', 'To divide an IP address into network and host components', 'To encrypt data transmitted over the network', 'To manage network bandwidth', 'To assign dynamic IP addresses to devices', 'To divide an IP address into network and host components'),
('img/computer-networking.pdf', 'What is the main purpose of DNS in networking?', 'To translate domain names into IP addresses', 'To encrypt network data', 'To manage network traffic', 'To provide internet access', 'To translate domain names into IP addresses'),
('img/computer-networking.pdf', 'What is a VPN?', 'A Virtual Private Network that provides a secure connection over a public network', 'A Virtual Private Node used for storing data', 'A Variable Port Network for high-speed data transfer', 'A Voltage Protection Network for safeguarding hardware', 'A Virtual Private Network that provides a secure connection over a public network'),
('img/computer-networking.pdf', 'What does the acronym \"HTTP\" stand for?', 'HyperText Transfer Protocol', 'High Transfer Text Protocol', 'HyperText Transport Protocol', 'HyperText Transmission Protocol', 'HyperText Transfer Protocol'),
('img/computer-networking.pdf', 'What is a firewall in networking?', 'A security system designed to prevent unauthorized access to or from a private network', 'A device used to increase network speed', 'A type of networking cable', 'A protocol for managing IP addresses', 'A security system designed to prevent unauthorized access to or from a private network'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What is a computer network?', 'A collection of interconnected computers that share resources and communicate with each other', 'A single computer that performs multiple tasks', 'A hardware device used for processing data', 'A type of software used for managing files', 'A collection of interconnected computers that share resources and communicate with each other'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which of the following is a common network topology?', 'Star', 'Disk', 'Queue', 'Stack', 'Star'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What does the term “IP address” stand for?', 'Internet Protocol Address', 'Internal Process Address', 'Interface Point Address', 'Internet Protocol Application', 'Internet Protocol Address'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which layer of the OSI model is responsible for routing and addressing?', 'Network Layer', 'Data Link Layer', 'Physical Layer', 'Application Layer', 'Network Layer'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What is the primary function of the transport layer in the OSI model?', 'To provide end-to-end communication and error recovery between applications', 'To establish and maintain physical connections between devices', 'To route data between different networks', 'To manage the format and structure of data', 'To provide end-to-end communication and error recovery between applications'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which protocol is used for reliable data transmission over the Internet?', 'TCP (Transmission Control Protocol)', 'UDP (User Datagram Protocol)', 'IP (Internet Protocol)', 'FTP (File Transfer Protocol)', 'TCP (Transmission Control Protocol)'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What does a switch do in a network?', 'Directs data to the correct device on a local area network', 'Routes data between different networks', 'Encrypts data for secure transmission', 'Manages the allocation of IP addresses', 'Directs data to the correct device on a local area network'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What is a LAN?', 'Local Area Network', 'Large Area Network', 'Link Access Node', 'Long Access Network', 'Local Area Network'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'Which device connects multiple networks and routes data between them?', 'Router', 'Switch', 'Hub', 'Modem', 'Router'),
('img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'What does DNS stand for in networking?', 'Domain Name System', 'Data Network Service', 'Digital Network Security', 'Dynamic Network Solution', 'Domain Name System'),
('img/IP_Addressing_and Subnetting.pdf', 'What is an IP address?', 'A unique identifier assigned to each device on a network', 'A protocol used for network communication', 'A type of network hardware', 'A method for encrypting network data', 'A unique identifier assigned to each device on a network'),
('img/IP_Addressing_and Subnetting.pdf', 'What does the acronym \"CIDR\" stand for in IP addressing?', 'Classless Inter-Domain Routing', 'Classified Internal Data Routing', 'Computer Interface Domain Routing', 'Centralized Internet Data Routing', 'Classless Inter-Domain Routing'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the purpose of subnetting in IP addressing?', 'To divide a larger network into smaller, more manageable sub-networks', 'To increase the speed of data transmission', 'To provide additional security to the network', 'To assign dynamic IP addresses to devices', 'To divide a larger network into smaller, more manageable sub-networks'),
('img/IP_Addressing_and Subnetting.pdf', 'What does a subnet mask do?', 'It defines the network and host portions of an IP address', 'It encrypts data transmitted over the network', 'It assigns IP addresses dynamically', 'It monitors network traffic', 'It defines the network and host portions of an IP address'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the purpose of a default gateway?', 'To route traffic from a local network to other networks', 'To assign IP addresses to devices on the network', 'To monitor network performance', 'To encrypt data packets', 'To route traffic from a local network to other networks'),
('img/IP_Addressing_and Subnetting.pdf', 'What does the term \"network address\" refer to?', 'The IP address that identifies the network portion of an address', 'The IP address assigned to a specific device', 'The physical address of a network device', 'The address used to communicate with external networks', 'The IP address that identifies the network portion of an address'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the purpose of an IP address class?', 'To define the range of IP addresses and the size of the network', 'To assign unique IP addresses to each device', 'To manage network traffic', 'To encrypt network communications', 'To define the range of IP addresses and the size of the network'),
('img/IP_Addressing_and Subnetting.pdf', 'Which IP address class is typically used for small networks?', 'Class C', 'Class A', 'Class B', 'Class D', 'Class C'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the role of a public IP address?', 'To provide a unique identifier for a device accessible from the internet', 'To manage internal network traffic', 'To assign dynamic IP addresses within a local network', 'To encrypt data transmitted over the internet', 'To provide a unique identifier for a device accessible from the internet'),
('img/IP_Addressing_and Subnetting.pdf', 'What is the subnet mask for a Class B network?', '255.255.0.0', '255.0.0.0', '255.255.255.0', '255.255.255.255', '255.255.0.0'),
('img/network tools and device.pdf', 'What is the primary function of a network router?', 'To route data between different networks and manage traffic', 'To amplify signals within a network', 'To provide a physical connection for network devices', 'To manage local network traffic and avoid collisions', 'To route data between different networks and manage traffic'),
('img/network tools and device.pdf', 'Which device is used to connect multiple devices on a local area network (LAN)?', 'Switch', 'Router', 'Modem', 'Access Point', 'Switch'),
('img/network tools and device.pdf', 'What is a network hub used for?', 'To connect multiple devices in a network and broadcast data to all of them', 'To route data between different networks', 'To provide wireless access to a network', 'To convert digital signals to analog', 'To connect multiple devices in a network and broadcast data to all of them'),
('img/network tools and device.pdf', 'Which tool is used to measure the time it takes for data to travel between two points on a network?', 'Ping', 'Traceroute', 'Netstat', 'Wireshark', 'Ping'),
('img/network tools and device.pdf', 'What does a network switch do?', 'Directs data to the correct device on a network using MAC addresses', 'Routes data between different networks', 'Converts digital data to analog signals', 'Manages the allocation of IP addresses', 'Directs data to the correct device on a network using MAC addresses'),
('img/network tools and device.pdf', 'Which device is used to extend the range of a wireless network?', 'Access Point', 'Router', 'Switch', 'Hub', 'Access Point'),
('img/network tools and device.pdf', 'What is the function of a modem in networking?', 'To modulate and demodulate signals for communication over telephone lines', 'To manage network traffic and connections', 'To connect devices within a local area network', 'To provide wireless access to a network', 'To modulate and demodulate signals for communication over telephone lines'),
('img/network tools and device.pdf', 'Which network tool is used to capture and analyze network traffic?', 'Wireshark', 'Ping', 'Traceroute', 'Netstat', 'Wireshark'),
('img/network tools and device.pdf', 'What does a network analyzer or protocol analyzer do?', 'Monitors and analyzes network traffic to troubleshoot and diagnose issues', 'Connects multiple networks together', 'Provides security for network communications', 'Distributes IP addresses within a network', 'Monitors and analyzes network traffic to troubleshoot and diagnose issues'),
('img/network tools and device.pdf', 'Which tool is used to determine the path data takes from one network device to another?', 'Traceroute', 'Ping', 'Netstat', 'Wireshark', 'Traceroute'),
('img/protocols.pdf', 'What is the primary function of a network protocol?', 'To define rules and conventions for communication between network devices', 'To manage the physical connection between devices', 'To encrypt data transmitted over the network', 'To increase the speed of data transfer', 'To define rules and conventions for communication between network devices'),
('img/protocols.pdf', 'What does the acronym \"TCP\" stand for?', 'Transmission Control Protocol', 'Transfer Communication Protocol', 'Technical Control Protocol', 'Transport Communication Protocol', 'Transmission Control Protocol'),
('img/protocols.pdf', 'What is the purpose of the HTTP protocol?', 'To enable communication between web browsers and web servers', 'To manage email transmission', 'To handle file transfers between computers', 'To encrypt data sent over the internet', 'To enable communication between web browsers and web servers'),
('img/protocols.pdf', 'Which protocol is commonly used for secure web communication?', 'HTTPS', 'HTTP', 'FTP', 'SMTP', 'HTTPS'),
('img/protocols.pdf', 'What does the acronym \"DNS\" stand for?', 'Domain Name System', 'Direct Network Service', 'Data Network Security', 'Distributed Name Server', 'Domain Name System'),
('img/protocols.pdf', 'What is the main function of the FTP protocol?', 'To transfer files between computers over a network', 'To send email messages', 'To manage network routing', 'To provide web page access', 'To transfer files between computers over a network'),
('img/protocols.pdf', 'Which protocol is used for sending email messages?', 'SMTP', 'FTP', 'HTTP', 'DNS', 'SMTP'),
('img/protocols.pdf', 'What does the acronym \"IP\" stand for?', 'Internet Protocol', 'Internal Protocol', 'Internet Port', 'International Protocol', 'Internet Protocol'),
('img/protocols.pdf', 'What is the main purpose of the DHCP protocol?', 'To assign IP addresses to devices on a network dynamically', 'To encrypt data transmitted over a network', 'To manage email messages', 'To transfer files between devices', 'To assign IP addresses to devices on a network dynamically'),
('img/protocols.pdf', 'Which layer of the OSI model does the IP protocol operate on?', 'Network Layer', 'Data Link Layer', 'Transport Layer', 'Application Layer', 'Network Layer'),
('img/network-topologies.ppt', 'What is a network topology?', 'The physical or logical arrangement of network devices and connections', 'The protocol used for network communication', 'The software that manages network resources', 'The security measures implemented in a network', 'The physical or logical arrangement of network devices and connections'),
('img/network-topologies.ppt', 'Which network topology connects all devices to a central hub or switch?', 'Star Topology', 'Bus Topology', 'Ring Topology', 'Mesh Topology', 'Star Topology'),
('img/network-topologies.ppt', 'What is the main characteristic of a bus topology?', 'All devices share a single communication line or cable', 'Devices are connected in a circular fashion', 'Each device is connected to every other device', 'A central hub manages the data flow', 'All devices share a single communication line or cable'),
('img/network-topologies.ppt', 'In which topology do devices connect in a closed loop, where each device has exactly two neighbors?', 'Ring Topology', 'Star Topology', 'Bus Topology', 'Mesh Topology', 'Ring Topology'),
('img/network-topologies.ppt', 'What is a major advantage of mesh topology?', 'High fault tolerance as multiple paths exist for data transmission', 'Simple and cost-effective to implement', 'Easy to manage and configure', 'Requires less cabling compared to other topologies', 'High fault tolerance as multiple paths exist for data transmission'),
('img/network-topologies.ppt', 'Which network topology is often used in local area networks (LANs) due to its simplicity and cost-effectiveness?', 'Star Topology', 'Mesh Topology', 'Bus Topology', 'Ring Topology', 'Star Topology'),
('img/network-topologies.ppt', 'What is a key disadvantage of bus topology?', 'If the central cable fails, the entire network goes down', 'Requires a lot of cabling compared to other topologies', 'Requires multiple hubs or switches to function', 'Each device must have its own network address', 'If the central cable fails, the entire network goes down'),
('img/network-topologies.ppt', 'Which topology involves each device being connected to every other device in the network?', 'Mesh Topology', 'Bus Topology', 'Star Topology', 'Ring Topology', 'Mesh Topology'),
('img/network-topologies.ppt', 'What is a hybrid topology?', 'A combination of two or more different network topologies', 'A topology that uses multiple communication protocols', 'A topology designed for high-speed data transfer', 'A topology that integrates both wired and wireless devices', 'A combination of two or more different network topologies'),
('img/network-topologies.ppt', 'Which topology is most commonly used in WANs (Wide Area Networks) for its ability to handle high traffic loads and provide redundancy?', 'Mesh Topology', 'Star Topology', 'Bus Topology', 'Ring Topology', 'Mesh Topology'),
('img/2.-Atomic-Structure.pdf', 'What is the smallest unit of an element that retains its chemical properties?', 'Atom', 'Molecule', 'Electron', 'Proton', 'Atom'),
('img/2.-Atomic-Structure.pdf', 'What is the central part of an atom called?', 'Nucleus', 'Electron shell', 'Proton', 'Neutron', 'Nucleus'),
('img/2.-Atomic-Structure.pdf', 'Which particle in an atom has a positive charge?', 'Proton', 'Electron', 'Neutron', 'Photon', 'Proton'),
('img/2.-Atomic-Structure.pdf', 'What determines the atomic number of an element?', 'Number of protons', 'Number of electrons', 'Number of neutrons', 'Number of atoms', 'Number of protons'),
('img/2.-Atomic-Structure.pdf', 'What is the mass number of an atom?', 'Sum of protons and neutrons', 'Sum of electrons and protons', 'Number of neutrons', 'Number of electrons', 'Sum of protons and neutrons'),
('img/2.-Atomic-Structure.pdf', 'Which particle is found in the electron cloud of an atom?', 'Electron', 'Proton', 'Neutron', 'Positron', 'Electron'),
('img/2.-Atomic-Structure.pdf', 'What is an isotope?', 'Atoms of the same element with different numbers of neutrons', 'Atoms with the same number of protons and neutrons', 'Atoms with different numbers of electrons', 'A type of ion', 'Atoms of the same element with different numbers of neutrons'),
('img/2.-Atomic-Structure.pdf', 'What is the charge of a neutron?', 'Neutral (no charge)', 'Positive', 'Negative', 'Depends on the atom', 'Neutral (no charge)'),
('img/2.-Atomic-Structure.pdf', 'Which model introduced the concept of electron orbits?', 'Bohr Model', 'Quantum Mechanical Model', 'Plum Pudding Model', 'Rutherford Model', 'Bohr Model'),
('img/2.-Atomic-Structure.pdf', 'What is the most abundant isotope of carbon?', 'Carbon-12', 'Carbon-14', 'Carbon-13', 'Carbon-11', 'Carbon-12'),
('img/20.-Solutions-Notes.pdf', 'What is a solution in chemistry?', 'A homogeneous mixture of two or more substances', 'A heterogeneous mixture of two substances', 'A pure substance', 'A compound', 'A homogeneous mixture of two or more substances'),
('img/20.-Solutions-Notes.pdf', 'Which component of a solution is present in the largest amount?', 'Solvent', 'Solute', 'Precipitate', 'Colloid', 'Solvent'),
('img/20.-Solutions-Notes.pdf', 'What is the process of dissolving a solute in a solvent called?', 'Solvation', 'Precipitation', 'Condensation', 'Distillation', 'Solvation'),
('img/20.-Solutions-Notes.pdf', 'Which of the following is an example of a gas in liquid solution?', 'Carbonated water', 'Salt water', 'Bronze', 'Alcohol in water', 'Carbonated water'),
('img/20.-Solutions-Notes.pdf', 'What is molarity?', 'Moles of solute per liter of solution', 'Moles of solvent per kilogram of solution', 'Grams of solute per liter of solvent', 'Moles of solute per gram of solvent', 'Moles of solute per liter of solution'),
('img/20.-Solutions-Notes.pdf', 'What type of solution is formed when no more solute can dissolve in the solvent at a given temperature?', 'Saturated', 'Unsaturated', 'Supersaturated', 'Diluted', 'Saturated'),
('img/20.-Solutions-Notes.pdf', 'What happens to the solubility of most solids in liquids as temperature increases?', 'Increases', 'Decreases', 'Remains the same', 'First decreases then increases', 'Increases'),
('img/20.-Solutions-Notes.pdf', 'What is an electrolyte?', 'A substance that dissociates into ions in solution and conducts electricity', 'A substance that dissolves but does not conduct electricity', 'A gas that conducts electricity', 'A non-polar solvent', 'A substance that dissociates into ions in solution and conducts electricity'),
('img/20.-Solutions-Notes.pdf', 'Which factor does not affect the solubility of a solute in a solvent?', 'Color of the solute', 'Temperature', 'Pressure (for gases)', 'Nature of solute and solvent', 'Color of the solute'),
('img/20.-Solutions-Notes.pdf', 'Which of the following is an example of a solid solution?', 'Brass', 'Air', 'Vinegar', 'Salt water', 'Brass'),
('img/21.-Electrochemistry-Notes.pdf', 'What is electrochemistry?', 'The study of chemical reactions that involve electricity', 'The study of heat in chemical reactions', 'The study of atoms and molecules', 'The study of acids and bases', 'The study of chemical reactions that involve electricity'),
('img/21.-Electrochemistry-Notes.pdf', 'What occurs at the anode in an electrochemical cell?', 'Oxidation', 'Reduction', 'Neutralization', 'Precipitation', 'Oxidation'),
('img/21.-Electrochemistry-Notes.pdf', 'In a galvanic cell, which electrode is positive?', 'Cathode', 'Anode', 'Both are positive', 'Neither, both are neutral', 'Cathode'),
('img/21.-Electrochemistry-Notes.pdf', 'What is the purpose of the salt bridge in a galvanic cell?', 'To maintain electrical neutrality by allowing the flow of ions', 'To connect the power source', 'To provide electrons to the solution', 'To measure voltage', 'To maintain electrical neutrality by allowing the flow of ions'),
('img/21.-Electrochemistry-Notes.pdf', 'Which of the following is a type of electrochemical cell?', 'Galvanic cell', 'Neutral cell', 'Thermal cell', 'Nuclear cell', 'Galvanic cell'),
('img/21.-Electrochemistry-Notes.pdf', 'What is the standard electrode potential?', 'The potential of a half-cell under standard conditions relative to the standard hydrogen electrode', 'The potential of any cell under non-standard conditions', 'The energy required to remove an electron', 'The resistance of a cell to electrical flow', 'The potential of a half-cell under standard conditions relative to the standard hydrogen electrode'),
('img/21.-Electrochemistry-Notes.pdf', 'What occurs at the cathode in an electrochemical cell?', 'Reduction', 'Oxidation', 'Dissociation', 'Ionization', 'Reduction'),
('img/21.-Electrochemistry-Notes.pdf', 'Which of the following is an example of an electrolytic process?', 'Electrolysis of water', 'Boiling water', 'Mixing salt and water', 'Combustion of hydrogen', 'Electrolysis of water'),
('img/21.-Electrochemistry-Notes.pdf', 'What type of reaction occurs in a galvanic cell?', 'A spontaneous redox reaction', 'A non-spontaneous reaction', 'A thermal reaction', 'A nuclear reaction', 'A spontaneous redox reaction'),
('img/21.-Electrochemistry-Notes.pdf', 'What is Faraday\'s First Law of Electrolysis?', 'The amount of substance deposited at an electrode is directly proportional to the quantity of electricity passed', 'The charge on an electron is constant', 'The electrode potential depends on temperature', 'The amount of heat produced is proportional to the current', 'The amount of substance deposited at an electrode is directly proportional to the quantity of electricity passed'),
('img/24.-Metallurgy-Notes.pdf', 'What is metallurgy?', 'The science of extracting metals from their ores', 'The study of metallic compounds', 'The art of forging metals', 'The process of alloying metals', 'The science of extracting metals from their ores'),
('img/24.-Metallurgy-Notes.pdf', 'Which of the following is the first step in the extraction of metals from ores?', 'Crushing and grinding the ore', 'Electrolytic refining', 'Smelting', 'Oxidation', 'Crushing and grinding the ore'),
('img/24.-Metallurgy-Notes.pdf', 'What is the purpose of roasting in metallurgy?', 'To convert the ore into its oxide form', 'To reduce the ore into metal', 'To remove impurities by heating', 'To mix the ore with carbon', 'To convert the ore into its oxide form'),
('img/24.-Metallurgy-Notes.pdf', 'Which method is used for extracting highly reactive metals?', 'Electrolysis', 'Roasting', 'Smelting', 'Leaching', 'Electrolysis'),
('img/24.-Metallurgy-Notes.pdf', 'What is gangue in the context of metallurgy?', 'The impurities in an ore', 'The slag formed during smelting', 'A mixture of metals', 'A process for alloying metals', 'The impurities in an ore'),
('img/24.-Metallurgy-Notes.pdf', 'What is the process of refining metals using electricity called?', 'Electrolytic refining', 'Zone refining', 'Liquation', 'Smelting', 'Electrolytic refining'),
('img/24.-Metallurgy-Notes.pdf', 'Which of the following is an example of a metal obtained by electrolytic reduction?', 'Aluminium', 'Iron', 'Copper', 'Zinc', 'Aluminium'),
('img/24.-Metallurgy-Notes.pdf', 'What is an alloy?', 'A mixture of two or more metals', 'A pure form of metal', 'A metal that is resistant to corrosion', 'A metal ore', 'A mixture of two or more metals'),
('img/24.-Metallurgy-Notes.pdf', 'Which process is used for concentrating sulfide ores?', 'Froth flotation', 'Electrolysis', 'Smelting', 'Roasting', 'Froth flotation'),
('img/24.-Metallurgy-Notes.pdf', 'What is the function of flux in the smelting process?', 'To combine with gangue to form slag', 'To reduce the metal oxide', 'To increase the melting point of the ore', 'To dissolve the metal', 'To combine with gangue to form slag'),
('img/33.-Polymer-Notes.pdf', 'What is a polymer?', 'A large molecule made up of repeating units', 'A small molecule made of two atoms', 'A substance with only one type of atom', 'A mixture of different compounds', 'A large molecule made up of repeating units'),
('img/33.-Polymer-Notes.pdf', 'What are the repeating units in a polymer called?', 'Monomers', 'Isotopes', 'Dimers', 'Ions', 'Monomers'),
('img/33.-Polymer-Notes.pdf', 'Which of the following is an example of a natural polymer?', 'Cellulose', 'Polyethylene', 'Nylon', 'Teflon', 'Cellulose'),
('img/33.-Polymer-Notes.pdf', 'Which of the following is a synthetic polymer?', 'Polyethylene', 'Starch', 'Cellulose', 'Protein', 'Polyethylene'),
('img/33.-Polymer-Notes.pdf', 'What is the process of forming polymers from monomers called?', 'Polymerization', 'Crystallization', 'Oxidation', 'Condensation', 'Polymerization'),
('img/33.-Polymer-Notes.pdf', 'What type of polymerization involves the elimination of a small molecule like water?', 'Condensation polymerization', 'Addition polymerization', 'Hydrolysis', 'Electrolysis', 'Condensation polymerization'),
('img/33.-Polymer-Notes.pdf', 'Which of the following is an example of a thermoplastic polymer?', 'Polyvinyl chloride (PVC)', 'Bakelite', 'Melamine', 'Vulcanized rubber', 'Polyvinyl chloride (PVC)'),
('img/33.-Polymer-Notes.pdf', 'What is vulcanization?', 'The process of cross-linking rubber molecules to make them more durable', 'The process of melting polymers', 'The degradation of polymers under heat', 'The creation of synthetic fibers', 'The process of cross-linking rubber molecules to make them more durable'),
('img/33.-Polymer-Notes.pdf', 'Which of the following is a biodegradable polymer?', 'Polylactic acid (PLA)', 'Polyethylene', 'Nylon', 'Polystyrene', 'Polylactic acid (PLA)'),
('img/33.-Polymer-Notes.pdf', 'What is the primary use of Kevlar?', 'Body armor and bulletproof vests', 'Packaging materials', 'Waterproof coatings', 'Insulation materials', 'Body armor and bulletproof vests'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which chemical compound is commonly used in the preservation of food?', 'Sodium benzoate', 'Sodium chloride', 'Calcium carbonate', 'Sulfur dioxide', 'Sodium benzoate'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which of the following is the main ingredient in baking powder?', 'Sodium bicarbonate', 'Ammonium chloride', 'Sodium chloride', 'Calcium sulfate', 'Sodium bicarbonate'),
('img/34.-Chemistry-Everyday-Life.pdf', 'What is the primary chemical found in vinegar?', 'Acetic acid', 'Citric acid', 'Sulfuric acid', 'Lactic acid', 'Acetic acid'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which gas is used in the carbonation of soft drinks?', 'Carbon dioxide', 'Nitrogen', 'Oxygen', 'Hydrogen', 'Carbon dioxide'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which chemical is responsible for the cleaning action in soaps and detergents?', 'Sodium lauryl sulfate', 'Sodium chloride', 'Sodium hydroxide', 'Potassium permanganate', 'Sodium lauryl sulfate'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which of the following is used as an antiseptic in mouthwashes?', 'Chlorhexidine', 'Sodium chloride', 'Calcium sulfate', 'Sodium bicarbonate', 'Chlorhexidine'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which of these compounds is commonly used as a bleaching agent?', 'Hydrogen peroxide', 'Ammonium nitrate', 'Calcium carbonate', 'Magnesium sulfate', 'Hydrogen peroxide'),
('img/34.-Chemistry-Everyday-Life.pdf', 'What is the active ingredient in most antacids?', 'Magnesium hydroxide', 'Sulfuric acid', 'Sodium sulfate', 'Calcium chloride', 'Magnesium hydroxide'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which chemical compound is widely used to treat water in swimming pools?', 'Calcium hypochlorite', 'Sodium hydroxide', 'Potassium permanganate', 'Sodium bicarbonate', 'Calcium hypochlorite'),
('img/34.-Chemistry-Everyday-Life.pdf', 'Which chemical is responsible for the addictive properties of tobacco in cigarettes?', 'Nicotine', 'Caffeine', 'Ethanol', 'Methanol', 'Nicotine'),
('img/Corrosion Basics.pdf', 'What is corrosion?', 'The deterioration of materials, usually metals, due to chemical reactions', 'The strengthening of materials through chemical reactions', 'The process of melting metals', 'The formation of alloys', 'The deterioration of materials, usually metals, due to chemical reactions'),
('img/Corrosion Basics.pdf', 'Which of the following metals is most resistant to corrosion?', 'Gold', 'Iron', 'Zinc', 'Aluminum', 'Gold'),
('img/Corrosion Basics.pdf', 'What is the primary cause of rusting in iron?', 'Oxidation', 'Reduction', 'Neutralization', 'Sublimation', 'Oxidation'),
('img/Corrosion Basics.pdf', 'What is the role of moisture in the corrosion process?', 'It acts as an electrolyte', 'It prevents corrosion', 'It strengthens the metal', 'It speeds up the metal melting', 'It acts as an electrolyte'),
('img/Corrosion Basics.pdf', 'Which of the following can accelerate the corrosion of metals?', 'Acidic environments', 'Alkaline environments', 'Dry conditions', 'Neutral environments', 'Acidic environments'),
('img/Corrosion Basics.pdf', 'What is galvanization?', 'The process of coating iron or steel with a layer of zinc to prevent rusting', 'The process of alloying metals', 'The process of melting metals', 'The process of adding paint to metal surfaces', 'The process of coating iron or steel with a layer of zinc to prevent rusting'),
('img/Corrosion Basics.pdf', 'Which type of corrosion occurs on metal surfaces exposed to air and moisture?', 'Uniform corrosion', 'Pitting corrosion', 'Crevice corrosion', 'Stress corrosion cracking', 'Uniform corrosion'),
('img/Corrosion Basics.pdf', 'What is a sacrificial anode?', 'A metal that corrodes preferentially to protect a more valuable metal', 'A metal that resists corrosion', 'A type of coating applied to metals', 'A metal used to strengthen alloys', 'A metal that corrodes preferentially to protect a more valuable metal'),
('img/Corrosion Basics.pdf', 'Which method is commonly used to protect underground pipelines from corrosion?', 'Cathodic protection', 'Galvanization', 'Painting', 'Passivation', 'Cathodic protection');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/Corrosion Basics.pdf', 'What is the main effect of corrosion on metals?', 'Weakening and deterioration of the material', 'Strengthening of the material', 'Increasing the conductivity', 'Enhancing the appearance', 'Weakening and deterioration of the material'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What is the primary cause of climate change?', 'Increased greenhouse gas emissions', 'Deforestation', 'Overfishing', 'Air pollution', 'Increased greenhouse gas emissions'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'Which of the following is a renewable energy source?', 'Solar power', 'Natural gas', 'Coal', 'Nuclear power', 'Solar power'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What is the main greenhouse gas responsible for global warming?', 'Carbon dioxide', 'Methane', 'Nitrous oxide', 'Water vapor', 'Carbon dioxide'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What is deforestation?', 'The large-scale removal of forests for land use', 'The planting of new forests', 'The conservation of existing forests', 'The protection of endangered species', 'The large-scale removal of forests for land use'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What is the effect of acid rain on aquatic ecosystems?', 'It lowers the pH of water, harming aquatic life', 'It increases the nutrient levels', 'It enhances fish growth', 'It neutralizes pollution', 'It lowers the pH of water, harming aquatic life'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What does the term “biodiversity” refer to?', 'The variety of life forms within a given ecosystem', 'The quantity of resources in an ecosystem', 'The size of the ecosystem', 'The number of species in a population', 'The variety of life forms within a given ecosystem'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'Which process is used to remove pollutants from wastewater?', 'Wastewater treatment', 'Chemical weathering', 'Natural filtration', 'Sublimation', 'Wastewater treatment'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What is an ecological footprint?', 'The measure of human impact on the environment', 'The total amount of energy used by an ecosystem', 'The number of species in an area', 'The size of natural reserves', 'The measure of human impact on the environment'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'What is the primary goal of conservation efforts?', 'To protect and preserve natural resources and habitats', 'To increase industrial production', 'To expand urban areas', 'To exploit natural resources', 'To protect and preserve natural resources and habitats'),
('img/ENVIRONMENTAL-SCIENCE-1.pdf', 'Which of the following is a consequence of ozone layer depletion?', 'Increased UV radiation reaching the Earth’s surface', 'Lower global temperatures', 'Decreased greenhouse gas emissions', 'Enhanced plant growth', 'Increased UV radiation reaching the Earth’s surface'),
('img/mongodb.pdf', 'What type of database is MongoDB?', 'NoSQL', 'Relational', 'Graph', 'Hierarchical', 'NoSQL'),
('img/mongodb.pdf', 'Which data format does MongoDB use to store data?', 'BSON', 'JSON', 'XML', 'CSV', 'BSON'),
('img/mongodb.pdf', 'What is a collection in MongoDB?', 'A group of related documents', 'A single document', 'A type of query', 'A database schema', 'A group of related documents'),
('img/mongodb.pdf', 'Which command is used to insert a document in MongoDB?', 'insertOne()', 'add()', 'create()', 'push()', 'insertOne()'),
('img/mongodb.pdf', 'How do you find a document in MongoDB?', 'Using the find() method', 'Using the search() method', 'Using the get() method', 'Using the fetch() method', 'Using the find() method'),
('img/mongodb.pdf', 'What is the purpose of indexes in MongoDB?', 'To improve query performance', 'To increase storage size', 'To manage data relationships', 'To enforce data integrity', 'To improve query performance'),
('img/mongodb.pdf', 'Which operator is used to update a field in a document?', '$set', '$update', '$modify', '$change', '$set'),
('img/mongodb.pdf', 'What is the default port number for MongoDB?', '27017', '8080', '3306', '5432', '27017'),
('img/mongodb.pdf', 'What is sharding in MongoDB?', 'Distributing data across multiple servers', 'Creating backups of data', 'Indexing data', 'Encrypting data', 'Distributing data across multiple servers'),
('img/mongodb.pdf', 'Which language is primarily used for querying MongoDB?', 'MongoDB Query Language (MQL)', 'SQL', 'JavaScript', 'Python', 'MongoDB Query Language (MQL)'),
('img/plsql.pdf', 'What does PL/SQL stand for?', 'Procedural Language/Structured Query Language', 'Programming Language/Structured Query Language', 'Procedural Language/SQL', 'Programming Language/SQL', 'Procedural Language/Structured Query Language'),
('img/plsql.pdf', 'Which of the following is a feature of PL/SQL?', 'Block structure', 'Object-oriented programming', 'Data encapsulation', 'All of the above', 'All of the above'),
('img/plsql.pdf', 'What is the primary purpose of PL/SQL?', 'To enhance SQL with procedural capabilities', 'To create database tables', 'To perform data mining', 'To manage user permissions', 'To enhance SQL with procedural capabilities'),
('img/plsql.pdf', 'What is a PL/SQL block?', 'A group of SQL and PL/SQL statements', 'A single SQL statement', 'A command for database backup', 'A type of data type', 'A group of SQL and PL/SQL statements'),
('img/plsql.pdf', 'Which keyword is used to declare a variable in PL/SQL?', 'DECLARE', 'DEFINE', 'VARIABLE', 'SET', 'DECLARE'),
('img/plsql.pdf', 'What is the purpose of the EXCEPTION block in PL/SQL?', 'To handle runtime errors', 'To declare variables', 'To define procedures', 'To optimize performance', 'To handle runtime errors'),
('img/plsql.pdf', 'Which of the following can be used to create a PL/SQL procedure?', 'CREATE PROCEDURE', 'MAKE PROCEDURE', 'NEW PROCEDURE', 'DEFINE PROCEDURE', 'CREATE PROCEDURE'),
('img/plsql.pdf', 'What is the use of the CURSOR in PL/SQL?', 'To retrieve multiple rows from a query', 'To insert data into tables', 'To delete records', 'To update records', 'To retrieve multiple rows from a query'),
('img/plsql.pdf', 'Which command is used to execute a PL/SQL block?', 'BEGIN', 'EXECUTE', 'RUN', 'CALL', 'BEGIN'),
('img/plsql.pdf', 'What is a function in PL/SQL?', 'A named PL/SQL block that returns a value', 'A type of cursor', 'A variable declaration', 'A data type', 'A named PL/SQL block that returns a value'),
('img/sql.pdf', 'What does SQL stand for?', 'Structured Query Language', 'Simple Query Language', 'Sequential Query Language', 'Standard Query Language', 'Structured Query Language'),
('img/sql.pdf', 'Which command is used to retrieve data from a database?', 'SELECT', 'GET', 'FETCH', 'PULL', 'SELECT'),
('img/sql.pdf', 'What is the purpose of the WHERE clause in SQL?', 'To filter records', 'To sort records', 'To group records', 'To update records', 'To filter records'),
('img/sql.pdf', 'Which SQL statement is used to update data in a database?', 'UPDATE', 'MODIFY', 'CHANGE', 'SET', 'UPDATE'),
('img/sql.pdf', 'What does the GROUP BY clause do?', 'Groups rows that have the same values in specified columns', 'Sorts the result set', 'Filters records', 'Joins two tables', 'Groups rows that have the same values in specified columns'),
('img/sql.pdf', 'Which operator is used to search for a specified pattern in a column?', 'LIKE', 'MATCH', 'SEARCH', 'FIND', 'LIKE'),
('img/sql.pdf', 'What is the purpose of the JOIN clause?', 'To combine rows from two or more tables', 'To separate tables', 'To create a new table', 'To remove records', 'To combine rows from two or more tables'),
('img/sql.pdf', 'Which command is used to delete data from a database?', 'DELETE', 'REMOVE', 'DROP', 'CLEAR', 'DELETE'),
('img/sql.pdf', 'What is a primary key?', 'A unique identifier for a record in a table', 'A foreign key in another table', 'A type of index', 'A constraint on a column', 'A unique identifier for a record in a table'),
('img/sql.pdf', 'Which function is used to count the number of rows in a query?', 'COUNT()', 'SUM()', 'TOTAL()', 'NUMBER()', 'COUNT()'),
('img/M2M.docx', 'What does M2M stand for in IoT?', 'Machine to Machine', 'Machine to Middleware', 'Middleware to Machine', 'Machine to Management', 'Machine to Machine'),
('img/M2M.docx', 'What is a primary characteristic of M2M communication?', 'Automated data exchange between devices', 'User-initiated data exchange', 'Manual data entry', 'Data visualization', 'Automated data exchange between devices'),
('img/M2M.docx', 'Which of the following is an example of M2M communication?', 'Smart meters reporting usage to utility companies', 'Mobile apps controlling devices', 'Users sending commands to devices', 'Manual data logging', 'Smart meters reporting usage to utility companies'),
('img/M2M.docx', 'How does M2M communication benefit industries?', 'Increases operational efficiency and reduces costs', 'Eliminates the need for data', 'Requires more human intervention', 'None of the above', 'Increases operational efficiency and reduces costs'),
('img/M2M.docx', 'What role does IoT play in M2M communication?', 'Facilitates connectivity between devices', 'Replaces all communication methods', 'Only works with user interfaces', 'None of the above', 'Facilitates connectivity between devices'),
('img/M2M.docx', 'Which protocol is commonly used in M2M communication?', 'MQTT', 'HTTP', 'FTP', 'SMTP', 'MQTT'),
('img/M2M.docx', 'What is the primary function of a SIM card in M2M devices?', 'Provides cellular connectivity', 'Stores data', 'Processes information', 'Monitors performance', 'Provides cellular connectivity'),
('img/M2M.docx', 'What type of data is typically exchanged in M2M communication?', 'Sensor data', 'Control commands', 'Status updates', 'All of the above', 'All of the above'),
('img/M2M.docx', 'What is the significance of a unique identifier in M2M communication?', 'To distinguish between different devices', 'To encrypt data', 'To reduce costs', 'To improve user experience', 'To distinguish between different devices'),
('img/M2M.docx', 'Which industry has widely adopted M2M communication?', 'Healthcare', 'Automotive', 'Manufacturing', 'All of the above', 'All of the above'),
('img/WirelessSensorNetworkUnit4.docx', 'What is a Wireless Sensor Network (WSN)?', 'A network of spatially distributed sensors that monitor physical conditions', 'A network of wired sensors', 'A type of personal area network', 'A network limited to one type of sensor', 'A network of spatially distributed sensors that monitor physical conditions'),
('img/WirelessSensorNetworkUnit4.docx', 'Which protocol is commonly used in WSNs?', 'IEEE 802.15.4', 'HTTP', 'FTP', 'TCP/IP', 'IEEE 802.15.4'),
('img/WirelessSensorNetworkUnit4.docx', 'What is the primary function of nodes in a WSN?', 'To sense and transmit data', 'To store data only', 'To process data only', 'To act as a gateway', 'To sense and transmit data'),
('img/WirelessSensorNetworkUnit4.docx', 'What kind of data do WSNs typically collect?', 'Environmental data', 'Physical data', 'Chemical data', 'All of the above', 'All of the above'),
('img/WirelessSensorNetworkUnit4.docx', 'Which of the following is a challenge in WSNs?', 'Limited battery life', 'High data redundancy', 'Excessive data transfer rates', 'None of the above', 'Limited battery life'),
('img/WirelessSensorNetworkUnit4.docx', 'How do WSNs typically communicate?', 'Using radio waves', 'Through physical cables', 'By human intervention', 'Via satellite', 'Using radio waves'),
('img/WirelessSensorNetworkUnit4.docx', 'What is the role of a sink node in a WSN?', 'To collect data from sensor nodes and forward it', 'To sense data only', 'To transmit data to other networks', 'To process data locally', 'To collect data from sensor nodes and forward it'),
('img/WirelessSensorNetworkUnit4.docx', 'What is a major application of WSNs?', 'Environmental monitoring', 'Social networking', 'Gaming', 'All of the above', 'Environmental monitoring'),
('img/WirelessSensorNetworkUnit4.docx', 'Which of the following is a type of sensor used in WSNs?', 'Temperature sensor', 'Humidity sensor', 'Light sensor', 'All of the above', 'All of the above'),
('img/WirelessSensorNetworkUnit4.docx', 'What is the significance of data aggregation in WSNs?', 'To reduce the amount of data transmitted', 'To increase data redundancy', 'To enhance data accuracy', 'To improve sensor performance', 'To reduce the amount of data transmitted'),
('img/BluetoothNotesIoT504.docx', 'What is Bluetooth?', 'A short-range wireless technology for data exchange', 'A type of wired connection', 'A satellite communication method', 'An Internet protocol', 'A short-range wireless technology for data exchange'),
('img/BluetoothNotesIoT504.docx', 'Which frequency band does Bluetooth operate in?', '2.4 GHz', '5 GHz', '1.2 GHz', '900 MHz', '2.4 GHz'),
('img/BluetoothNotesIoT504.docx', 'What is the primary purpose of Bluetooth in IoT?', 'To connect devices over short distances', 'To transmit data over long distances', 'To create cellular networks', 'To manage power consumption', 'To connect devices over short distances'),
('img/BluetoothNotesIoT504.docx', 'Which version of Bluetooth introduced low energy technology?', 'Bluetooth 4.0', 'Bluetooth 3.0', 'Bluetooth 5.0', 'Bluetooth 2.1', 'Bluetooth 4.0'),
('img/BluetoothNotesIoT504.docx', 'What is a common application of Bluetooth in IoT?', 'Smart home devices', 'Television broadcasting', 'Satellite communication', 'Wired networking', 'Smart home devices'),
('img/BluetoothNotesIoT504.docx', 'What does BLE stand for in the context of Bluetooth?', 'Bluetooth Low Energy', 'Bluetooth Long Energy', 'Bluetooth Link Exchange', 'Bluetooth Local Environment', 'Bluetooth Low Energy'),
('img/BluetoothNotesIoT504.docx', 'How does Bluetooth achieve device pairing?', 'Through a process of discovery and authentication', 'By connecting via USB', 'Through wired connections', 'Using infrared signals', 'Through a process of discovery and authentication'),
('img/BluetoothNotesIoT504.docx', 'Which of the following is a feature of Bluetooth?', 'Low power consumption', 'Long-range communication', 'High data transfer speed', 'Wired connectivity', 'Low power consumption'),
('img/BluetoothNotesIoT504.docx', 'What is the maximum range of Bluetooth technology?', 'Typically around 100 meters', 'Typically around 10 kilometers', 'Typically around 1 kilometer', 'Typically around 500 meters', 'Typically around 100 meters'),
('img/BluetoothNotesIoT504.docx', 'In IoT, which protocol is often used alongside Bluetooth for communication?', 'HTTP', 'MQTT', 'CoAP', 'All of the above', 'All of the above'),
('img/PiconetUnit3CommTech.docx', 'What is a Piconet?', 'A small Bluetooth network with one master and multiple slaves', 'A large-scale wireless network', 'A wired connection', 'A satellite communication system', 'A small Bluetooth network with one master and multiple slaves'),
('img/PiconetUnit3CommTech.docx', 'How many devices can typically be connected in a Piconet?', 'Up to 8 devices', 'Up to 32 devices', 'Up to 50 devices', 'Unlimited devices', 'Up to 8 devices'),
('img/PiconetUnit3CommTech.docx', 'What is the role of the master device in a Piconet?', 'To manage communication between connected devices', 'To serve as a data storage unit', 'To amplify signals', 'To monitor battery levels', 'To manage communication between connected devices'),
('img/PiconetUnit3CommTech.docx', 'In a Piconet, what happens when a master device leaves?', 'The Piconet becomes inactive', 'Other devices can take over as master', 'The slaves continue to communicate', 'All devices disconnect', 'The Piconet becomes inactive'),
('img/PiconetUnit3CommTech.docx', 'What type of communication is primarily used in Piconets?', 'Short-range wireless communication', 'Long-range wireless communication', 'Wired communication', 'Optical communication', 'Short-range wireless communication'),
('img/PiconetUnit3CommTech.docx', 'Which protocol is commonly associated with Piconet?', 'Bluetooth', 'Zigbee', 'Wi-Fi', 'Ethernet', 'Bluetooth'),
('img/PiconetUnit3CommTech.docx', 'How does device pairing occur in a Piconet?', 'Through a discovery and authentication process', 'By connecting via Ethernet', 'Through infrared signals', 'By using USB connections', 'Through a discovery and authentication process'),
('img/PiconetUnit3CommTech.docx', 'What is the maximum range of a Piconet?', 'Typically around 10 meters', 'Typically around 100 meters', 'Typically around 1 kilometer', 'Typically around 50 meters', 'Typically around 10 meters'),
('img/PiconetUnit3CommTech.docx', 'Which of the following is a benefit of using a Piconet?', 'Efficient use of bandwidth', 'Complex network management', 'High power consumption', 'Long-distance communication', 'Efficient use of bandwidth'),
('img/PiconetUnit3CommTech.docx', 'What is a key feature of a Piconet?', 'One master can connect to multiple slaves', 'Only wired devices can connect', 'All devices must be of the same type', 'There is no master-slave relationship', 'One master can connect to multiple slaves'),
('img/combinational circuits.pdf', 'What is a combinational circuit?', 'A circuit whose output depends only on the current inputs', 'A circuit whose output depends on previous inputs', 'A sequential circuit', 'A circuit with memory', 'A circuit whose output depends only on the current inputs'),
('img/combinational circuits.pdf', 'Which of the following is an example of a combinational circuit?', 'Multiplexer', 'Flip-flop', 'Counter', 'Register', 'Multiplexer'),
('img/combinational circuits.pdf', 'What is the primary function of an adder circuit?', 'To perform addition of binary numbers', 'To store data', 'To perform logical operations', 'To synchronize signals', 'To perform addition of binary numbers'),
('img/combinational circuits.pdf', 'What does a multiplexer do?', 'Selects one input from multiple inputs', 'Performs addition', 'Stores data', 'Inverts the input', 'Selects one input from multiple inputs'),
('img/combinational circuits.pdf', 'Which logic gate implements the function A AND B?', 'AND gate', 'OR gate', 'NOT gate', 'NAND gate', 'AND gate'),
('img/combinational circuits.pdf', 'What is the output of a half adder with inputs A = 1 and B = 1?', 'Sum = 0, Carry = 1', 'Sum = 1, Carry = 0', 'Sum = 0, Carry = 0', 'Sum = 1, Carry = 1', 'Sum = 0, Carry = 1'),
('img/combinational circuits.pdf', 'What is a decoder used for in combinational circuits?', 'To convert binary information from n input lines to a maximum of 2^n unique output lines', 'To perform arithmetic operations', 'To store data', 'To amplify signals', 'To convert binary information from n input lines to a maximum of 2^n unique output lines'),
('img/combinational circuits.pdf', 'What is a truth table?', 'A table that shows the output for all possible input combinations', 'A diagram of a circuit', 'A representation of a logic gate', 'A method for solving equations', 'A table that shows the output for all possible input combinations'),
('img/combinational circuits.pdf', 'Which of the following represents a logical OR operation?', 'A + B', 'A * B', 'A - B', 'A / B', 'A + B'),
('img/combinational circuits.pdf', 'In which type of circuit can the output change without any change in the input?', 'Combinational circuit', 'Sequential circuit', 'Analog circuit', 'Digital circuit', 'Sequential circuit'),
('img/counters.pdf', 'What is a counter in digital electronics?', 'A sequential circuit that counts pulses', 'A combinational circuit', 'A type of memory', 'A signal amplifier', 'A sequential circuit that counts pulses'),
('img/counters.pdf', 'Which type of counter counts in binary?', 'Binary counter', 'Decade counter', 'Ring counter', 'Johnson counter', 'Binary counter'),
('img/counters.pdf', 'What is a modulus in the context of counters?', 'The number of unique states a counter can represent', 'The speed of the counter', 'The type of logic used', 'The maximum count value', 'The number of unique states a counter can represent'),
('img/counters.pdf', 'Which of the following is a characteristic of an asynchronous counter?', 'Each flip-flop is triggered by the previous one', 'All flip-flops are triggered simultaneously', 'It counts only in a forward direction', 'It cannot be reset', 'Each flip-flop is triggered by the previous one'),
('img/counters.pdf', 'What does a decade counter count up to?', '10', '12', '16', '8', '10'),
('img/counters.pdf', 'Which type of counter is known for its simplicity and versatility?', 'Ripple counter', 'Up-down counter', 'Synchronous counter', 'Ring counter', 'Ripple counter'),
('img/counters.pdf', 'What is the primary function of a ring counter?', 'To circulate a single \"1\" or \"0\" through the flip-flops', 'To count pulses', 'To perform arithmetic operations', 'To store data', 'To circulate a single \"1\" or \"0\" through the flip-flops'),
('img/counters.pdf', 'What is an up-down counter?', 'A counter that can count in both directions', 'A counter that only counts up', 'A counter that only counts down', 'A counter that is always reset', 'A counter that can count in both directions'),
('img/counters.pdf', 'Which flip-flop is commonly used in counters?', 'T flip-flop', 'D flip-flop', 'SR flip-flop', 'JK flip-flop', 'T flip-flop'),
('img/counters.pdf', 'What is the output of a 3-bit binary counter after 5 pulses?', '101', '010', '111', '000', '101'),
('img/flip-flops.pdf', 'What is a flip-flop in digital electronics?', 'A bistable device that can store one bit of information', 'A combinational circuit', 'A type of resistor', 'A signal amplifier', 'A bistable device that can store one bit of information'),
('img/flip-flops.pdf', 'Which of the following flip-flops is known for its ability to toggle?', 'T flip-flop', 'D flip-flop', 'SR flip-flop', 'JK flip-flop', 'T flip-flop'),
('img/flip-flops.pdf', 'What does a D flip-flop do?', 'Stores the value of the data input at the moment of the clock edge', 'Stores a toggled value', 'Sets or resets the output', 'Counts pulses', 'Stores the value of the data input at the moment of the clock edge'),
('img/flip-flops.pdf', 'Which flip-flop has two inputs and can set and reset?', 'SR flip-flop', 'D flip-flop', 'JK flip-flop', 'T flip-flop', 'SR flip-flop'),
('img/flip-flops.pdf', 'What is the primary use of flip-flops?', 'To store binary data', 'To perform arithmetic operations', 'To amplify signals', 'To generate clock pulses', 'To store binary data'),
('img/flip-flops.pdf', 'What is the function of the clock in flip-flops?', 'Controls the timing of data storage', 'Amplifies the signal', 'Sets the output', 'Resets the flip-flop', 'Controls the timing of data storage'),
('img/flip-flops.pdf', 'What does the term \"setup time\" refer to in flip-flops?', 'The minimum time before the clock edge that data must be stable', 'The time taken to reset the flip-flop', 'The duration of the clock pulse', 'The time it takes for the output to change', 'The minimum time before the clock edge that data must be stable'),
('img/flip-flops.pdf', 'Which flip-flop can operate in both set and reset states using clock pulses?', 'JK flip-flop', 'D flip-flop', 'SR flip-flop', 'T flip-flop', 'JK flip-flop'),
('img/flip-flops.pdf', 'What happens if both inputs of an SR flip-flop are high?', 'Indeterminate state', 'Sets the output', 'Resets the output', 'Toggles the output', 'Indeterminate state'),
('img/flip-flops.pdf', 'What is a common application of flip-flops?', 'Used in memory devices and registers', 'Used in amplifiers', 'Used for signal modulation', 'Used in oscillators', 'Used in memory devices and registers'),
('img/number system and logic gates.pdf', 'What is a number system?', 'A way to represent numbers in different formats', 'A method of sorting numbers', 'A technique for counting', 'A logical operation', 'A way to represent numbers in different formats'),
('img/number system and logic gates.pdf', 'Which of the following is a binary number?', '1010', '123', '0.5', 'A3', '1010'),
('img/number system and logic gates.pdf', 'What is the decimal equivalent of the binary number 1101?', '13', '11', '14', '12', '13'),
('img/number system and logic gates.pdf', 'Which number system uses base 16?', 'Hexadecimal', 'Binary', 'Octal', 'Decimal', 'Hexadecimal'),
('img/number system and logic gates.pdf', 'What is the purpose of logic gates?', 'To perform logical operations on binary inputs', 'To store data', 'To amplify signals', 'To convert signals', 'To perform logical operations on binary inputs'),
('img/number system and logic gates.pdf', 'Which logic gate outputs true only if all inputs are true?', 'AND gate', 'OR gate', 'NOT gate', 'NAND gate', 'AND gate'),
('img/number system and logic gates.pdf', 'Which gate is used to invert the input signal?', 'NOT gate', 'AND gate', 'OR gate', 'XOR gate', 'NOT gate'),
('img/number system and logic gates.pdf', 'What is a truth table?', 'A table that lists all possible input combinations and their corresponding outputs', 'A diagram of a logic circuit', 'A representation of numbers', 'A summary of logical operations', 'A table that lists all possible input combinations and their corresponding outputs'),
('img/number system and logic gates.pdf', 'Which of the following represents an exclusive OR operation?', 'A ⊕ B', 'A + B', 'A * B', 'A - B', 'A ⊕ B'),
('img/registers.pdf', 'What is a register in digital electronics?', 'A small amount of storage available directly in the CPU', 'A type of memory chip', 'A data bus', 'A logic gate', 'A small amount of storage available directly in the CPU'),
('img/registers.pdf', 'Which of the following is a common type of register?', 'Shift register', 'Counter register', 'Data register', 'All of the above', 'All of the above'),
('img/registers.pdf', 'What is the primary purpose of a shift register?', 'To store and shift data', 'To perform arithmetic operations', 'To amplify signals', 'To store instructions', 'To store and shift data'),
('img/registers.pdf', 'What does a data register do?', 'Holds intermediate data for processing', 'Stores the final output', 'Performs calculations', 'Generates clock signals', 'Holds intermediate data for processing'),
('img/registers.pdf', 'Which register temporarily holds data being transferred to or from the CPU?', 'Buffer register', 'Instruction register', 'Accumulator', 'Control register', 'Buffer register'),
('img/registers.pdf', 'What is an accumulator register used for?', 'To store the results of arithmetic operations', 'To hold the program counter', 'To manage input/output operations', 'To store instructions', 'To store the results of arithmetic operations'),
('img/registers.pdf', 'In a shift register, what does a left shift operation do?', 'Moves bits to the left and introduces a zero on the right', 'Moves bits to the right and introduces a zero on the left', 'Swaps the bits', 'Inverts the bits', 'Moves bits to the left and introduces a zero on the right'),
('img/registers.pdf', 'What is a control register used for?', 'To control the operation of the CPU', 'To store data temporarily', 'To perform calculations', 'To manage power consumption', 'To control the operation of the CPU'),
('img/registers.pdf', 'What type of register can store a single bit of information?', 'Flip-flop', 'Buffer register', 'Data register', 'Instruction register', 'Flip-flop'),
('img/registers.pdf', 'Which of the following statements is true about registers?', 'They are faster than main memory', 'They are used for long-term storage', 'They have large capacity', 'They are only used in arithmetic operations', 'They are faster than main memory'),
('img/Input output statement in C++ .pdf', 'What is the primary library used for input and output in C++?', 'iostream', 'stdlib', 'string', 'vector', 'iostream'),
('img/Input output statement in C++ .pdf', 'Which operator is used for output in C++?', '<<', '>>', '=', '::', '<<'),
('img/Input output statement in C++ .pdf', 'Which operator is used for input in C++?', '>>', '<<', '=', '::', '>>'),
('img/Input output statement in C++ .pdf', 'What is the correct syntax to print \"Hello, World!\" in C++?', 'cout << \"Hello, World!\";', 'print(\"Hello, World!\");', 'echo \"Hello, World!\";', 'Console.WriteLine(\"Hello, World!\");', 'cout << \"Hello, World!\";'),
('img/Input output statement in C++ .pdf', 'Which function is used to read input from the user in C++?', 'cin', 'input', 'read', 'get', 'cin'),
('img/Input output statement in C++ .pdf', 'What will be the output of the following code: cout << 5 + 2;', '7', '52', 'Error', 'None of the above', '7'),
('img/Input output statement in C++ .pdf', 'What does the flush manipulator do in C++?', 'Flushes the output buffer', 'Clears the input buffer', 'Delays the output', 'Resets the stream', 'Flushes the output buffer'),
('img/Input output statement in C++ .pdf', 'Which of the following is true about the endl manipulator?', 'It adds a new line and flushes the output stream', 'It adds a new line only', 'It flushes the input stream', 'None of the above', 'It adds a new line and flushes the output stream'),
('img/Input output statement in C++ .pdf', 'How can you read multiple values from a single line in C++?', 'Using cin with multiple variables', 'Using getline', 'Using printf', 'Using input', 'Using cin with multiple variables'),
('img/Input output statement in C++ .pdf', 'What does the setw manipulator do in C++?', 'Sets the width of the output field', 'Sets the precision of floating-point numbers', 'Changes the output format', 'None of the above', 'Sets the width of the output field'),
('img/constructors and destructors.pdf', 'What is a constructor in C++?', 'A special member function that initializes objects', 'A function that destroys objects', 'A type of destructor', 'A regular function', 'A special member function that initializes objects'),
('img/constructors and destructors.pdf', 'Which of the following is true about a destructor?', 'It has the same name as the class with a tilde (~) prefix', 'It can be overloaded', 'It is called explicitly', 'It does not free memory', 'It has the same name as the class with a tilde (~) prefix'),
('img/constructors and destructors.pdf', 'What is the default constructor?', 'A constructor that takes no parameters', 'A constructor that initializes all member variables', 'A constructor with default values', 'A constructor that is private', 'A constructor that takes no parameters'),
('img/constructors and destructors.pdf', 'How many destructors can a class have?', 'Only one', 'Two', 'As many as needed', 'None', 'Only one'),
('img/constructors and destructors.pdf', 'When is a constructor called?', 'When an object is created', 'When an object is destroyed', 'When the program starts', 'When the function returns', 'When an object is created'),
('img/constructors and destructors.pdf', 'What is a copy constructor?', 'A constructor that initializes an object using another object of the same class', 'A constructor that creates a new object', 'A constructor that destroys an object', 'A constructor that takes multiple arguments', 'A constructor that initializes an object using another object of the same class'),
('img/constructors and destructors.pdf', 'What happens if no constructor is defined in a class?', 'A default constructor is provided by the compiler', 'The program will not compile', 'You must define a constructor', 'An error occurs', 'A default constructor is provided by the compiler'),
('img/constructors and destructors.pdf', 'What is the main purpose of a destructor?', 'To free resources and perform cleanup when an object is destroyed', 'To initialize objects', 'To copy objects', 'To allocate memory', 'To free resources and perform cleanup when an object is destroyed'),
('img/constructors and destructors.pdf', 'Can constructors be declared as virtual?', 'No', 'Yes', 'Only in derived classes', 'Only in base classes', 'No'),
('img/constructors and destructors.pdf', 'What is the syntax for a default constructor in C++?', 'ClassName() {}', 'ClassName()()', 'ClassName{}', 'ClassName():{}', 'ClassName() {}'),
('img/InheritanceinC++.pdf', 'What is inheritance in C++?', 'A mechanism to derive a new class from an existing class', 'A way to destroy objects', 'A way to overload functions', 'A method to handle exceptions', 'A mechanism to derive a new class from an existing class'),
('img/InheritanceinC++.pdf', 'Which of the following is a base class?', 'The class from which properties are inherited', 'The class that inherits properties', 'A class with only virtual functions', 'A class with only constructors', 'The class from which properties are inherited'),
('img/InheritanceinC++.pdf', 'What is the keyword used to define inheritance?', 'public', 'inherits', 'extends', 'base', 'public'),
('img/InheritanceinC++.pdf', 'Which type of inheritance allows a class to inherit from multiple base classes?', 'Multiple inheritance', 'Single inheritance', 'Hierarchical inheritance', 'Multilevel inheritance', 'Multiple inheritance'),
('img/InheritanceinC++.pdf', 'What is the main advantage of inheritance?', 'Code reusability', 'Faster execution', 'Better error handling', 'Easier debugging', 'Code reusability'),
('img/InheritanceinC++.pdf', 'What happens if a derived class does not have a constructor?', 'The base class constructor is called', 'An error occurs', 'The derived class is not created', 'The program crashes', 'The base class constructor is called'),
('img/InheritanceinC++.pdf', 'Which of the following access specifiers allows a derived class to access the base class members?', 'Protected', 'Private', 'Public', 'All of the above', 'Protected'),
('img/InheritanceinC++.pdf', 'What is the purpose of virtual inheritance?', 'To solve the diamond problem', 'To improve performance', 'To create a base class', 'To overload operators', 'To solve the diamond problem'),
('img/InheritanceinC++.pdf', 'What is polymorphism in the context of inheritance?', 'The ability to treat derived class objects as base class objects', 'The ability to have multiple constructors', 'The ability to create multiple base classes', 'The ability to override functions', 'The ability to treat derived class objects as base class objects'),
('img/InheritanceinC++.pdf', 'What is the destructor order in inheritance?', 'Derived class destructor is called first, then base class', 'Base class destructor is called first, then derived class', 'Both destructors are called simultaneously', 'It depends on the access specifiers', 'Derived class destructor is called first, then base class'),
('img/TEMPLATES-IN-C++.pdf', 'What is a template in C++?', 'A blueprint for creating functions or classes with generic types', 'A type of function', 'A way to overload functions', 'A method of error handling', 'A blueprint for creating functions or classes with generic types'),
('img/TEMPLATES-IN-C++.pdf', 'Which keyword is used to define a template?', 'template', 'generic', 'class', 'function', 'template'),
('img/TEMPLATES-IN-C++.pdf', 'What type of template allows defining functions and classes for any data type?', 'Generic template', 'Class template', 'Function template', 'Static template', 'Generic template'),
('img/TEMPLATES-IN-C++.pdf', 'Which of the following is a valid function template syntax?', 'template <typename T> T func(T a) { return a; }', 'func <T>(T a) { return a; }', 'function template <T>(T a) { return a; }', 'template func(T a) { return a; }', 'template <typename T> T func(T a) { return a; }'),
('img/TEMPLATES-IN-C++.pdf', 'What is the purpose of the typename keyword in a template?', 'To specify a type parameter', 'To declare a template class', 'To overload functions', 'To define a variable', 'To specify a type parameter'),
('img/TEMPLATES-IN-C++.pdf', 'Can templates be specialized in C++?', 'Yes, both full and partial specialization are allowed', 'No, templates cannot be specialized', 'Only full specialization is allowed', 'Only partial specialization is allowed', 'Yes, both full and partial specialization are allowed'),
('img/TEMPLATES-IN-C++.pdf', 'Which of the following allows templates to work with multiple data types?', 'Template parameters', 'Function overloading', 'Class overloading', 'Type casting', 'Template parameters'),
('img/TEMPLATES-IN-C++.pdf', 'What happens if a template is instantiated with an unsupported type?', 'A compilation error occurs', 'It uses a default type', 'It automatically converts to a supported type', 'It produces runtime errors', 'A compilation error occurs'),
('img/TEMPLATES-IN-C++.pdf', 'What is a template argument?', 'A specific type or value used to instantiate a template', 'A function parameter', 'A class member', 'A constant variable', 'A specific type or value used to instantiate a template'),
('img/TEMPLATES-IN-C++.pdf', 'Which of the following statements is true about template metaprogramming?', 'It allows computations at compile time', 'It is only used for classes', 'It slows down the compilation process', 'It cannot be used with templates', 'It allows computations at compile time'),
('img/VIRTUAL-FUNCTION.pdf', 'What is a virtual function in C++?', 'A function that can be overridden in a derived class', 'A function that cannot be overridden', 'A static function', 'A private function', 'A function that can be overridden in a derived class'),
('img/VIRTUAL-FUNCTION.pdf', 'Which keyword is used to declare a virtual function?', 'virtual', 'override', 'abstract', 'dynamic', 'virtual'),
('img/VIRTUAL-FUNCTION.pdf', 'What is the main purpose of virtual functions?', 'To achieve runtime polymorphism', 'To achieve compile-time polymorphism', 'To prevent inheritance', 'To declare static methods', 'To achieve runtime polymorphism'),
('img/VIRTUAL-FUNCTION.pdf', 'What will happen if a base class pointer points to a derived class object and calls a virtual function?', 'The derived class function is called', 'The base class function is called', 'It results in a compile-time error', 'It leads to undefined behavior', 'The derived class function is called'),
('img/VIRTUAL-FUNCTION.pdf', 'Can a virtual function be static?', 'No', 'Yes', 'Only in derived classes', 'Only in base classes', 'No'),
('img/VIRTUAL-FUNCTION.pdf', 'What is a pure virtual function?', 'A virtual function that must be overridden in derived classes', 'A virtual function with no implementation', 'A static function', 'A private function', 'A virtual function that must be overridden in derived classes'),
('img/VIRTUAL-FUNCTION.pdf', 'Which of the following correctly declares a pure virtual function?', 'virtual void func() = 0;', 'void func() = 0;', 'virtual void func();', 'void func();', 'virtual void func() = 0;'),
('img/VIRTUAL-FUNCTION.pdf', 'What is the impact of declaring a destructor as virtual?', 'It ensures proper cleanup in derived classes', 'It prevents destruction of base class objects', 'It has no effect on the program', 'It makes the destructor static', 'It ensures proper cleanup in derived classes'),
('img/VIRTUAL-FUNCTION.pdf', 'What is the virtual table (vtable)?', 'A mechanism that supports dynamic dispatch of virtual functions', 'A data structure for storing class members', 'A list of all functions in a class', 'A compiler optimization technique', 'A mechanism that supports dynamic dispatch of virtual functions'),
('img/VIRTUAL-FUNCTION.pdf', 'Can constructors be virtual?', 'No', 'Yes', 'Only in derived classes', 'Only in base classes', 'No'),
('img/1.6 Function.pdf', 'What is a function in C?', 'A block of code that performs a specific task', 'A type of variable', 'A control structure', 'A keyword', 'A block of code that performs a specific task'),
('img/1.6 Function.pdf', 'Which of the following is the correct way to declare a function?', 'return_type function_name(parameter_list)', 'function_name(parameter_list) return_type', 'function_type function_name;', 'void function_name()', 'return_type function_name(parameter_list)'),
('img/1.6 Function.pdf', 'What does the return statement do in a function?', 'Exits the function and returns a value', 'Continues to the next iteration', 'Stops the entire program', 'None of the above', 'Exits the function and returns a value'),
('img/1.6 Function.pdf', 'How do you call a function in C?', 'function_name();', 'call function_name;', 'execute function_name;', 'invoke function_name;', 'function_name();'),
('img/1.6 Function.pdf', 'What is a function prototype?', 'A declaration of a function that specifies its name and parameters', 'An implementation of a function', 'A comment explaining a function', 'A type of loop', 'A declaration of a function that specifies its name and parameters'),
('img/1.6 Function.pdf', 'What is the scope of a function?', 'The region in the program where the function can be called', 'The return type of the function', 'The parameters of the function', 'The body of the function', 'The region in the program where the function can be called'),
('img/1.6 Function.pdf', 'Which keyword is used to define a function that does not return a value?', 'void', 'null', 'empty', 'none', 'void'),
('img/1.6 Function.pdf', 'What is recursion in functions?', 'A function that calls itself', 'A function that takes multiple parameters', 'A function that returns multiple values', 'A function that does not terminate', 'A function that calls itself'),
('img/1.6 Function.pdf', 'Which of the following is an example of a library function?', 'printf()', 'main()', 'myFunction()', 'localFunction()', 'printf()'),
('img/1.6 Function.pdf', 'What is the default return type of a function if not specified?', 'int', 'void', 'float', 'char', 'int'),
('img/linked list.pdf', 'What is a linked list?', 'A data structure consisting of nodes connected by pointers', 'An array of elements', 'A function for memory management', 'A type of loop', 'A data structure consisting of nodes connected by pointers'),
('img/linked list.pdf', 'Which of the following is the first node in a linked list called?', 'Head', 'Tail', 'Root', 'Base', 'Head'),
('img/linked list.pdf', 'What does each node in a linked list typically contain?', 'Data and a pointer to the next node', 'Only data', 'Only a pointer', 'Data and a pointer to the previous node', 'Data and a pointer to the next node'),
('img/linked list.pdf', 'How do you traverse a linked list?', 'Starting from the head and following the next pointers', 'From tail to head', 'Using an index', 'Randomly', 'Starting from the head and following the next pointers'),
('img/linked list.pdf', 'Which operation adds a new node to a linked list?', 'Insertion', 'Deletion', 'Traversal', 'Searching', 'Insertion'),
('img/linked list.pdf', 'What is the time complexity for searching an element in a linked list?', 'O(n)', 'O(1)', 'O(log n)', 'O(n^2)', 'O(n)'),
('img/linked list.pdf', 'How do you delete a node from a linked list?', 'By adjusting the pointers of adjacent nodes', 'By setting the node to NULL', 'By using an array index', 'By freeing the memory', 'By adjusting the pointers of adjacent nodes'),
('img/linked list.pdf', 'What is a doubly linked list?', 'A linked list where each node points to both the next and previous nodes', 'A linked list with only one pointer', 'A circular linked list', 'A stack implemented using linked lists', 'A linked list where each node points to both the next and previous nodes'),
('img/linked list.pdf', 'What is the main advantage of using linked lists over arrays?', 'Dynamic memory allocation', 'Faster access times', 'Ease of implementation', 'Lower memory usage', 'Dynamic memory allocation'),
('img/linked list.pdf', 'Which function would you use to create a new node in a linked list?', 'malloc()', 'free()', 'create()', 'new()', 'malloc()'),
('img/Queues.pdf', 'What is a queue?', 'A data structure that follows FIFO order', 'A data structure that follows LIFO order', 'A type of array', 'A pointer', 'A data structure that follows FIFO order'),
('img/Queues.pdf', 'Which operation adds an element to the end of the queue?', 'enqueue', 'dequeue', 'peek', 'pop', 'enqueue'),
('img/Queues.pdf', 'Which operation removes an element from the front of the queue?', 'dequeue', 'enqueue', 'push', 'insert', 'dequeue'),
('img/Queues.pdf', 'What does the term FIFO stand for?', 'First In, First Out', 'First In, First Over', 'First Out, First In', 'Fast In, Fast Out', 'First In, First Out'),
('img/Queues.pdf', 'How do you check if a queue is empty?', 'By comparing the front and rear pointers', 'By checking the size variable', 'Both of the above', 'None of the above', 'Both of the above'),
('img/Queues.pdf', 'Which of the following is a real-world example of a queue?', 'A line of customers at a store', 'A stack of plates', 'A pile of laundry', 'A set of books', 'A line of customers at a store'),
('img/Queues.pdf', 'What is the time complexity of the enqueue operation in a queue implemented using an array?', 'O(1)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(1)'),
('img/Queues.pdf', 'What happens when a queue implemented with a fixed-size array is full?', 'Overflow occurs', 'Underflow occurs', 'The queue resets', 'It automatically expands', 'Overflow occurs'),
('img/Queues.pdf', 'Which function is used to view the front element of the queue without removing it?', 'peek', 'front', 'getFront', 'view', 'peek'),
('img/Queues.pdf', 'What is a circular queue?', 'A queue where the last position is connected to the first', 'A queue that grows indefinitely', 'A queue that does not allow duplicates', 'A queue with a fixed size', 'A queue where the last position is connected to the first'),
('img/SEARCHING 2.docx', 'What is a searching algorithm?', 'A method to find a specific value in a data structure', 'A method to sort data', 'A way to store data', 'A function for memory management', 'A method to find a specific value in a data structure'),
('img/SEARCHING 2.docx', 'Which of the following is a linear search algorithm?', 'Sequential search', 'Binary search', 'Hash search', 'Jump search', 'Sequential search'),
('img/SEARCHING 2.docx', 'What is the time complexity of linear search in the worst case?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 'O(n)'),
('img/SEARCHING 2.docx', 'What is required for binary search to work?', 'The data must be sorted', 'The data must be unsorted', 'The data must be an array', 'The data must be unique', 'The data must be sorted'),
('img/SEARCHING 2.docx', 'What is the time complexity of binary search in the worst case?', 'O(log n)', 'O(n)', 'O(n log n)', 'O(1)', 'O(log n)'),
('img/SEARCHING 2.docx', 'Which of the following is faster on average?', 'Binary search', 'Linear search', 'Jump search', 'Exponential search', 'Binary search'),
('img/SEARCHING 2.docx', 'What does the term \"search space\" refer to?', 'The range of values to search through', 'The time taken to search', 'The space complexity of the algorithm', 'The data structure used', 'The range of values to search through'),
('img/SEARCHING 2.docx', 'Which searching algorithm is most efficient for small datasets?', 'Linear search', 'Binary search', 'Jump search', 'Interpolation search', 'Linear search'),
('img/SEARCHING 2.docx', 'What is a hash table used for?', 'To implement a fast search operation', 'To store data sequentially', 'To sort data', 'To manage memory', 'To implement a fast search operation'),
('img/SEARCHING 2.docx', 'What is the main disadvantage of linear search?', 'It is slow for large datasets', 'It is complex to implement', 'It requires sorting', 'It is memory intensive', 'It is slow for large datasets'),
('img/Sorting 1.docx', 'What is a sorting algorithm?', 'A method to arrange data in a particular order', 'A method to search data', 'A way to store data', 'A function for memory management', 'A method to arrange data in a particular order'),
('img/Sorting 1.docx', 'Which of the following is a comparison-based sorting algorithm?', 'Bubble sort', 'Counting sort', 'Radix sort', 'Bucket sort', 'Bubble sort'),
('img/Sorting 1.docx', 'What is the time complexity of bubble sort in the worst case?', 'O(n^2)', 'O(n log n)', 'O(n)', 'O(1)', 'O(n^2)'),
('img/Sorting 1.docx', 'Which sorting algorithm is known for its divide-and-conquer approach?', 'Merge sort', 'Insertion sort', 'Selection sort', 'Bubble sort', 'Merge sort'),
('img/Sorting 1.docx', 'What is the time complexity of quicksort in the average case?', 'O(n log n)', 'O(n^2)', 'O(n)', 'O(log n)', 'O(n log n)'),
('img/Sorting 1.docx', 'Which sorting algorithm is the fastest for large datasets?', 'Quicksort', 'Bubble sort', 'Selection sort', 'Insertion sort', 'Quicksort'),
('img/Sorting 1.docx', 'What does the term \"stability\" refer to in sorting algorithms?', 'Preserving the relative order of equal elements', 'The speed of the algorithm', 'The memory usage', 'The complexity of the algorithm', 'Preserving the relative order of equal elements'),
('img/Sorting 1.docx', 'What is the main disadvantage of selection sort?', 'It is inefficient for large datasets', 'It is complex to implement', 'It requires sorting', 'It is memory intensive', 'It is inefficient for large datasets'),
('img/Sorting 1.docx', 'Which of the following sorting algorithms is not in-place?', 'Merge sort', 'Insertion sort', 'Selection sort', 'Bubble sort', 'Merge sort'),
('img/Sorting 1.docx', 'Which algorithm is often used to sort linked lists?', 'Merge sort', 'Bubble sort', 'Insertion sort', 'Quick sort', 'Merge sort'),
('img/w13-14-pointers-in-c.pdf', 'What is a pointer in C?', 'A variable that stores the address of another variable', 'A function that returns a memory address', 'A data type for memory management', 'None of the above', 'A variable that stores the address of another variable'),
('img/w13-14-pointers-in-c.pdf', 'Which operator is used to get the address of a variable?', '& (ampersand)', '* (asterisk)', '# (hash)', '@ (at)', '& (ampersand)'),
('img/w13-14-pointers-in-c.pdf', 'How do you declare a pointer in C?', 'int *ptr;', 'pointer int ptr;', 'int ptr;', 'int &ptr;', 'int *ptr;'),
('img/w13-14-pointers-in-c.pdf', 'What does the `*` operator do when used with a pointer?', 'Dereferences the pointer to access the value stored at the address', 'Assigns a value to a pointer', 'Returns the memory address of a variable', 'Multiplies the pointer value', 'Dereferences the pointer to access the value stored at the address');
INSERT INTO `quizq` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
('img/w13-14-pointers-in-c.pdf', 'What is a NULL pointer?', 'A pointer that points to nothing', 'A pointer to a function', 'A pointer that contains random garbage value', 'A pointer that stores zero', 'A pointer that points to nothing'),
('img/w13-14-pointers-in-c.pdf', 'Which of the following is a valid declaration of a pointer to an int?', 'int *ptr;', 'int ptr*;', 'int &ptr;', 'pointer int ptr;', 'int *ptr;'),
('img/w13-14-pointers-in-c.pdf', 'How can you pass a pointer to a function?', 'By passing the pointer variable directly', 'By passing the memory address of the pointer', 'By passing a reference to the pointer', 'You cannot pass pointers to functions', 'By passing the pointer variable directly'),
('img/w13-14-pointers-in-c.pdf', 'What does the free() function do in C?', 'Deallocates the memory previously allocated', 'Deletes the pointer variable', 'Resets the pointer to NULL', 'Reassigns memory to the pointer', 'Deallocates the memory previously allocated'),
('img/w13-14-pointers-in-c.pdf', 'Can pointers be used with arrays?', 'Yes, pointers can iterate over array elements', 'No, arrays cannot be used with pointers', 'Only for static arrays', 'Only for dynamic arrays', 'Yes, pointers can iterate over array elements'),
('img/w13-14-pointers-in-c.pdf', 'Which pointer type should be used with dynamic memory allocation?', 'void *', 'int *', 'char *', 'float *', 'void *'),
('img/unions in c.pdf', 'What is a union in C?', 'A data type where all members share the same memory location', 'A data type that can hold multiple types of values at once', 'A collection of different data types', 'A pointer to a structure', 'A data type where all members share the same memory location'),
('img/unions in c.pdf', 'How do you define a union in C?', 'Using the union keyword', 'Using the struct keyword', 'Using the enum keyword', 'Using the typedef keyword', 'Using the union keyword'),
('img/unions in c.pdf', 'What is the size of a union?', 'The size of its largest member', 'The sum of the sizes of all members', 'The size of its first member', 'The size of its smallest member', 'The size of its largest member'),
('img/unions in c.pdf', 'Which of the following correctly accesses a member of a union?', 'unionVar.member', 'unionVar->member', 'unionVar[member]', 'unionVar{member}', 'unionVar.member'),
('img/unions in c.pdf', 'What is the primary advantage of using a union?', 'Efficient memory usage', 'Faster access to data', 'Safer memory management', 'Better data abstraction', 'Efficient memory usage'),
('img/unions in c.pdf', 'Can a union hold multiple values at the same time?', 'No, only one member can hold a value at any given time', 'Yes, all members can hold values simultaneously', 'Only two members can hold values at a time', 'Depends on the compiler', 'No, only one member can hold a value at any given time'),
('img/unions in c.pdf', 'What happens if you assign a value to one member of a union?', 'It overwrites any previous value stored in the union', 'It stores the value without affecting other members', 'It throws an error', 'It preserves the values of other members', 'It overwrites any previous value stored in the union'),
('img/unions in c.pdf', 'How do you initialize a union in C?', 'By assigning a value to its first member', 'By assigning values to all its members', 'By using the new keyword', 'By calling a union constructor', 'By assigning a value to its first member'),
('img/unions in c.pdf', 'Can a union be nested inside a structure in C?', 'Yes, a union can be a member of a structure', 'No, unions cannot be nested', 'Only in specific compilers', 'No, it violates C standards', 'Yes, a union can be a member of a structure'),
('img/unions in c.pdf', 'What is the difference between a union and a structure in C?', 'A union shares memory for all its members, while a structure allocates separate memory for each member', 'A structure is more efficient than a union', 'A union allows multiple values, a structure does not', 'There is no difference', 'A union shares memory for all its members, while a structure allocates separate memory for each member'),
('img/structures.pdf', 'What is a structure in C?', 'A user-defined data type that groups different data types', 'A data type that holds only one type of data', 'A pointer to an array', 'A function that returns multiple values', 'A user-defined data type that groups different data types'),
('img/structures.pdf', 'How do you define a structure in C?', 'Using the union keyword', 'Using the union keyword', 'Using the enum keyword', 'Using the typedef keyword', 'Using the struct keyword'),
('img/structures.pdf', 'How do you access a member of a structure?', 'Using the dot (.) operator', 'Using the arrow (->) operator', 'Using the bracket ([]) operator', 'Using the colon (:) operator', 'Using the dot (.) operator'),
('img/structures.pdf', 'What is the size of a structure?', 'The sum of the sizes of all its members', 'The size of its largest member', 'The size of its first member', 'The size of its smallest member', 'The sum of the sizes of all its members'),
('img/structures.pdf', 'Can structures in C contain arrays?', 'Yes, structures can contain arrays as members', 'No, structures cannot contain arrays', 'Only if the array is dynamically allocated', 'Only in certain compilers', 'Yes, structures can contain arrays as members'),
('img/structures.pdf', 'How do you pass a structure to a function?', 'By passing the structure by value or by reference', 'Only by passing the address of the structure', 'By passing individual members of the structure', 'You cannot pass a structure to a function', 'By passing the structure by value or by reference'),
('img/structures.pdf', 'Can structures in C be nested?', 'Yes, a structure can contain another structure as a member', 'No, structures cannot be nested', 'Only in specific compilers', 'Only with pointers', 'Yes, a structure can contain another structure as a member'),
('img/structures.pdf', 'What is the primary use of a structure?', 'To group related variables of different data types', 'To create a list of similar variables', 'To allocate memory dynamically', 'To manage pointers', 'To group related variables of different data types'),
('img/structures.pdf', 'Which operator is used to access structure members via a pointer?', 'Arrow (->)', 'Dot (.)', 'Asterisk (*)', 'Ampersand (&)', 'Arrow (->)'),
('img/structures.pdf', 'What is the difference between a structure and a union in C?', 'A structure allocates separate memory for each member, while a union shares memory for all its members', 'A union is larger than a structure', 'A structure holds more data types than a union', 'There is no difference', 'A structure allocates separate memory for each member, while a union shares memory for all its members'),
('img/sample programs in c Language.pdf', 'Which function is used to print output in C?', 'printf()', 'print()', 'output()', 'show()', 'printf()'),
('img/sample programs in c Language.pdf', 'What is the return type of the main function in C?', 'int', 'void', 'char', 'float', 'int'),
('img/sample programs in c Language.pdf', 'Which header file is required for using printf()?', '<stdio.h>', '<stdlib.h>', '<conio.h>', '<string.h>', '<stdio.h>'),
('img/sample programs in c Language.pdf', 'What is the purpose of the `#include` directive?', 'To include header files in the program', 'To define macros', 'To declare functions', 'To create variables', 'To include header files in the program'),
('img/sample programs in c Language.pdf', 'What is a syntax error?', 'An error in the code structure', 'An error in logic', 'An error at runtime', 'An error in output', 'An error in the code structure'),
('img/sample programs in c Language.pdf', 'How do you declare a variable in C?', 'data_type variable_name;', 'variable_name data_type;', 'var data_type;', 'data_type: variable_name;', 'data_type variable_name;'),
('img/sample programs in c Language.pdf', 'What is the purpose of the return statement?', 'To return a value from a function', 'To end a program', 'To print output', 'To declare a variable', 'To return a value from a function'),
('img/sample programs in c Language.pdf', 'Which of the following is a valid comment in C?', '// This is a comment', '/* This is a comment */', '# This is a comment', 'Both A and B', 'Both A and B'),
('img/sample programs in c Language.pdf', 'What is a variable in C?', 'A named storage location in memory', 'A function', 'A data type', 'An operator', 'A named storage location in memory'),
('img/sample programs in c Language.pdf', 'How do you compile a C program?', 'Using a C compiler', 'Using an interpreter', 'By running the program', 'By debugging', 'Using a C compiler'),
('img/HTML.pdf', 'What does HTML stand for?', 'Hypertext Markup Language', 'Hightext Machine Language', 'Hyperlink and Text Markup Language', 'None of the above', 'Hypertext Markup Language'),
('img/HTML.pdf', 'Which tag is used to create a hyperlink in HTML?', '<a>', '<link>', '<href>', '<hyperlink>', '<a>'),
('img/HTML.pdf', 'Which HTML attribute is used to define inline styles?', 'style', 'font', 'class', 'styles', 'style'),
('img/HTML.pdf', 'What is the correct HTML element for inserting a line break?', '<break>', '<lb>', '<br>', '<newline>', '<br>'),
('img/HTML.pdf', 'Which HTML element is used to define the title of a document?', '<title>', '<head>', '<header>', '<meta>', '<title>'),
('img/HTML.pdf', 'How do you create a list in HTML?', 'Using <ol> and <ul>', 'Using <list>', 'Using <li>', 'Using <item>', 'Using <ol> and <ul>'),
('img/HTML.pdf', 'Which tag is used for the largest heading in HTML?', '<h1>', '<h6>', '<heading>', '<h5>', '<h1>'),
('img/HTML.pdf', 'What is the purpose of the <meta> tag in HTML?', 'To provide metadata', 'To create links', 'To insert images', 'To define scripts', 'To provide metadata'),
('img/HTML.pdf', 'Which tag is used to display a picture on a webpage?', '<img>', '<picture>', '<image>', '<src>', '<img>'),
('img/HTML.pdf', 'What does the <div> tag represent in HTML?', 'A division or section', 'An image', 'A link', 'A header', 'A division or section'),
('img/CSS.pdf', 'What does CSS stand for?', 'Cascading Style Sheets', 'Computer Style Sheets', 'Creative Style Systems', 'Colorful Style Sheets', 'Cascading Style Sheets'),
('img/CSS.pdf', 'Which HTML tag is used to link to a CSS file?', '<css>', '<link>', '<style>', '<stylesheet>', '<link>'),
('img/CSS.pdf', 'Which property is used to change the background color in CSS?', 'bgcolor', 'background-color', 'color', 'background', 'background-color'),
('img/CSS.pdf', 'How do you add a comment in CSS?', '// This is a comment', '/* This is a comment */', '<!-- This is a comment -->', '/* This is a comment', '/* This is a comment */'),
('img/CSS.pdf', 'Which CSS property controls the text size?', 'font-size', 'text-size', 'font-style', 'text-style', 'font-size'),
('img/CSS.pdf', 'What is the correct CSS syntax to change the font name of an element?', 'font-family: Arial;', 'font: Arial;', 'font-name: Arial;', 'text-font: Arial;', 'font-family: Arial;'),
('img/CSS.pdf', 'Which CSS property is used to set the space between elements?', 'padding', 'margin', 'spacing', 'border', 'margin'),
('img/CSS.pdf', 'What is the default value of the position property in CSS?', 'relative', 'absolute', 'fixed', 'static', 'static'),
('img/CSS.pdf', 'How do you select an element with id \"header\" in CSS?', '#header', '.header', 'header', 'id:header', '#header'),
('img/CSS.pdf', 'Which CSS rule is used to make a list not displayed with bullets?', 'list-style-type: none;', 'list-type: none;', 'style-type: none;', 'list: none;', 'list-style-type: none;'),
('img/ajax.pdf', 'What does AJAX stand for?', 'Asynchronous JavaScript and XML', 'Asynchronous Java and XML', 'Advanced JavaScript and XHTML', 'All JavaScript and XML', 'Asynchronous JavaScript and XML'),
('img/ajax.pdf', 'Which object is used to make AJAX requests?', 'XMLHttpRequest', 'HTTPRequest', 'AJAXRequest', 'FetchRequest', 'XMLHttpRequest'),
('img/ajax.pdf', 'What is the purpose of AJAX?', 'To send data to the server asynchronously', 'To create dynamic web pages', 'To improve website performance', 'All of the above', 'All of the above'),
('img/ajax.pdf', 'Which method is used to send a request in AJAX?', 'send()', 'post()', 'request()', 'execute()', 'send()'),
('img/ajax.pdf', 'Which data format is commonly used with AJAX?', 'JSON', 'XML', 'HTML', 'All of the above', 'All of the above'),
('img/ajax.pdf', 'What will be the status code for a successful AJAX request?', '200', '404', '500', '301', '200'),
('img/ajax.pdf', 'Which event is triggered when an AJAX request completes?', 'onload', 'onreadystatechange', 'oncomplete', 'onresponse', 'onreadystatechange'),
('img/ajax.pdf', 'Which of the following is a popular library for making AJAX requests easier?', 'jQuery', 'React', 'Angular', 'Vue', 'jQuery'),
('img/ajax.pdf', 'What does the readyState property indicate?', 'The current state of the request', 'The number of requests made', 'The type of request', 'The size of the response', 'The current state of the request'),
('img/ajax.pdf', 'Which method can be used to handle the response from an AJAX request?', 'responseText', 'getResponse()', 'response()', 'fetchResponse()', 'responseText'),
('img/javascript.pdf', 'What does JavaScript primarily allow you to do?', 'Create dynamic content', 'Style web pages', 'Store data', 'Manage databases', 'Create dynamic content'),
('img/javascript.pdf', 'Which symbol is used for comments in JavaScript?', '//', '#', '/*', 'Both // and /*', 'Both // and /*'),
('img/javascript.pdf', 'Which of the following is a JavaScript data type?', 'String', 'Boolean', 'Number', 'All of the above', 'All of the above'),
('img/javascript.pdf', 'What keyword is used to declare a variable in JavaScript?', 'var', 'let', 'const', 'All of the above', 'All of the above'),
('img/javascript.pdf', 'What is the correct syntax to create a function in JavaScript?', 'function myFunction() {}', 'function:myFunction() {}', 'function = myFunction() {}', 'myFunction() {}', 'function myFunction() {}'),
('img/javascript.pdf', 'Which operator is used to assign a value to a variable?', '=', '==', '===', '=>', '='),
('img/javascript.pdf', 'How can you convert a string to a number in JavaScript?', 'parseInt()', 'Number()', 'parseFloat()', 'All of the above', 'All of the above'),
('img/javascript.pdf', 'What does the `typeof` operator do?', 'Returns the type of a variable', 'Checks if a variable is defined', 'Converts a variable to a string', 'None of the above', 'Returns the type of a variable'),
('img/javascript.pdf', 'Which method is used to add an event listener in JavaScript?', 'addEvent()', 'attachEvent()', 'addEventListener()', 'onEvent()', 'addEventListener()'),
('img/javascript.pdf', 'What is the output of `console.log(typeof null)`?', 'object', 'null', 'undefined', 'error', 'object'),
('img/jquery.pdf', 'What is jQuery?', 'A JavaScript library', 'A CSS framework', 'A HTML editor', 'A programming language', 'A JavaScript library'),
('img/jquery.pdf', 'Which of the following is the correct way to include jQuery?', '<script src=\"jquery.js\"></script>', '<link rel=\"stylesheet\" href=\"jquery.css\">', '<script href=\"jquery.js\"></script>', '<script src=\"jquery()\"></script>', '<script src=\"jquery.js\"></script>'),
('img/jquery.pdf', 'How do you create a jQuery object?', '$(selector)', 'jQuery(selector)', 'Both are correct', 'None of the above', 'Both are correct'),
('img/jquery.pdf', 'Which method is used to hide an element in jQuery?', 'hide()', 'invisible()', 'displayNone()', 'fadeOut()', 'hide()'),
('img/jquery.pdf', 'What does the jQuery `$(document).ready()` function do?', 'Executes code when the document is fully loaded', 'Executes code on button click', 'Executes code every second', 'Executes code only in IE', 'Executes code when the document is fully loaded'),
('img/jquery.pdf', 'How do you select elements with a class of \"example\" in jQuery?', '.example', '$(example)', 'document.getElementsByClassName(\"example\")', 'All of the above', '.example'),
('img/jquery.pdf', 'Which event is triggered when a user clicks on an element in jQuery?', 'click()', 'onClick()', 'handleClick()', 'tap()', 'click()'),
('img/jquery.pdf', 'What does the `.css()` method do in jQuery?', 'Gets or sets CSS properties', 'Only gets CSS properties', 'Only sets CSS properties', 'Removes CSS properties', 'Gets or sets CSS properties'),
('img/jquery.pdf', 'Which method is used to add a class to an element in jQuery?', 'addClass()', 'setClass()', 'newClass()', 'classify()', 'addClass()'),
('img/jquery.pdf', 'What is the purpose of jQuery animations?', 'To create visual effects', 'To manipulate HTML', 'To handle events', 'To manage data', 'To create visual effects');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`username`, `password`) VALUES
('karthik', '1'),
('karthik1', '1'),
('charan', '11'),
('jatin', 'jatin123'),
('11', '11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `date` varchar(50) NOT NULL,
  `reply_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id`, `name`, `comment`, `date`, `reply_id`) VALUES
(1, 'karthik', 'how to do google login', 'August 10 2024, 12:35:47 PM', 0),
(2, 'karthik', 'can any one reply me please!!', 'August 10 2024, 12:36:04 PM', 1),
(3, 'charan', '1212', 'August 10 2024, 01:12:57 PM', 2),
(4, 'afnanx', 'what is php used for?', 'August 11 2024, 09:10:45 PM', 0),
(5, 'afnanx', 'please help me?', 'August 11 2024, 09:11:09 PM', 4),
(6, 'afnanx', 'what is json?', 'August 11 2024, 09:11:24 PM', 0),
(7, 'afnan', 'for backend development', 'August 12 2024, 05:06:25 PM', 5),
(8, 'afnan', 'gaga', 'August 12 2024, 05:30:23 PM', 0),
(9, 'karthik', 'hello', 'August 12 2024, 05:38:21 PM', 0),
(10, 'karthik', 'hello', 'August 12 2024, 05:38:42 PM', 0),
(11, 'afnan', 'what is payment gateway', 'August 23 2024, 05:14:05 PM', 0),
(12, 'afnan', 'it is used for payment in web or apps', 'August 23 2024, 05:14:47 PM', 11),
(13, '', 'hello', 'August 25 2024, 08:32:12 AM', 0),
(14, 'Shaik Afnan', 'hello', 'August 25 2024, 08:32:56 AM', 0),
(15, '<?php  echo $name;?>', '', 'August 29 2024, 05:30:04 PM', 0),
(16, '<?php  echo $name;?>', '', 'August 29 2024, 05:30:36 PM', 0),
(17, 'Shaik Afnan', 'hello iam afnan', 'August 29 2024, 09:05:11 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `sub` int(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`sub`, `path`, `chapter`, `link`) VALUES
(1, 'img/w13-14-pointers-in-c.pdf', 'pointers', 'https://youtu.be/f2i0CnUOniA?si=WHmjJnT8hGlrqJiP'),
(1, 'img/unions in c.pdf', 'unions in c', 'https://youtu.be/oySsPUDr35U?si=_J-jl-UZUCsqy6xA'),
(1, 'img/structures.pdf', 'structures in c', 'https://youtu.be/oKXP1HZ8xIs?si=KWTSNz3f2-LU1Nen'),
(1, 'img/sample programs in c Language.pdf', 'c sample programs', 'https://youtu.be/sepK5w4Uep0?si=InntMJDfkqo6W9eF'),
(1, 'img/File_handling.pdf', 'file handling in c', 'https://youtu.be/wVDfRzBp8iE?si=VfYIeQNynXX9g865'),
(1, 'img/control and looping statements.pdf', 'control and looping statements', 'https://youtu.be/qUPXsPtWGoY?si=9V0I35LEy7c_9lGX'),
(1, 'img/c_operators.pdf', 'operators in c', 'https://youtu.be/50Pb27JoUrw?si=08SkuaYEwp3VdHqB'),
(1, 'img/arrays and strings.pdf', 'arrays and strings in c', 'https://youtu.be/55l-aZ7_F24?si=bukMOcbYKkmTdp8w'),
(1, 'img/1.6 Function.pdf', 'functions in c', 'https://youtu.be/3lqgdqoY83o?si=a1WYeFhBtc220eX2'),
(1, 'img/linked list.pdf', 'linked list', 'https://youtu.be/R9PTBwOzceo?si=kJuEezQgbOVA8eFf'),
(1, 'img/Queues.pdf', 'queues', 'https://youtu.be/D80AB1WkzRk?si=4wnZC8t1ljvBkFfI'),
(1, 'img/SEARCHING 2.docx', 'searching in c', 'https://youtu.be/Uuyv88Tn9iU?si=KSW6xUe_89tigLCB'),
(1, 'img/sorting.docx', 'sorting in c', 'https://youtu.be/Tz7vBodZqo8?si=H98KIa3lhGoXJzOk'),
(1, 'img/Stacks.pdf', 'stacks in c', 'https://youtu.be/I37kGX-nZEI?si=v3-NH3xtrch2vVJ5'),
(1, 'img/trees.pdf', 'trees in c', 'https://youtu.be/9oTV7fDEaCY?si=RHxiKsW05MELM1Er'),
(5, 'img/combinational circuits.pdf', 'combinational circuits', 'https://youtu.be/SzV4l0_1MCQ?si=L63WG5bg2_NwSck9'),
(5, 'img/counters.pdf', 'counters in digital electronics', 'https://youtu.be/iaIu5SYmWVM?si=nZZ0z3iJ3kgc4-YO'),
(5, 'img/flip-flops.pdf', 'flip-flops in digital electronics', 'https://youtu.be/AaN72s5WfOM?si=hfaQWhSkli1mCIr7'),
(5, 'img/number system and logic gates.pdf', 'numbering system and logic gates', 'https://youtu.be/crSGS1uBSNQ?si=4yUMha3yXnozfEkh'),
(5, 'img/registers.pdf', 'registers', 'https://youtu.be/-paFaxtTCkI?si=XZl9I21CAUu0MnEj'),
(4, 'img/mongodb.pdf', 'mongo database', 'https://youtu.be/SnqPyqRh4r4?si=PEadidkJU3ovmExq'),
(4, 'img/plsql.pdf', 'topic about pl/my sql', 'https://youtu.be/Tdl7CGnhPeA?si=9yyyL04g2ePobuVZ'),
(4, 'img/sql.pdf', 'sql usage in database', 'https://youtu.be/OyBwIjnQLtI?si=JikUXLjklTc_pHXM'),
(7, 'img/HTML.pdf', 'html basics ', 'https://youtu.be/qz0aGYrrlhU?si=055ho5arIzrI3wSu'),
(7, 'img/CSS.pdf', 'css basics ', 'https://youtu.be/OEV8gMkCHXQ?si=AfPyqaPI7dkt-X0L'),
(7, 'img/ajax.pdf', 'ajax basics ', 'https://youtu.be/5MmEUWfuZFk?si=8oAbIywi1kPmN3AV'),
(7, 'img/javascript.pdf', 'javascript basics ', 'https://youtu.be/xwKbtUP87Dk?si=oRWdt91gkSugh8--'),
(7, 'img/jquery.pdf', 'what is jquery?', 'https://youtu.be/JjIvF0yikGU?si=bhSc9A6kEJZT7dr-'),
(2, 'img/Input output statement in  C++  .pdf', 'basics of c++', 'https://youtu.be/McojvctVsUs?si=CgaWs0gJG7pWOoIZ'),
(2, 'img/constructors and destructors.pdf', 'constructors and destructors', 'https://youtu.be/hAA8FBq2bA4?si=xe2WA21HhN6WYxG4'),
(2, 'img/InheritanceinC++.pdf', 'inheritance', 'https://youtu.be/qYY9eR7Ldek?si=h-bHMCSakttx3YnN'),
(2, 'img/TEMPLATES-IN-C++.pdf', 'templates in c++', 'https://youtu.be/bP1ceQFbohM?si=fgrCFaB7rs6xxdRC'),
(2, 'img/VIRTUAL-FUNCTION.pdf', 'virtual functions in c++', 'https://youtu.be/gtkh3KxcX4U?si=dyCOUzKQVoE0iVxJ'),
(11, 'img/java_tutorial.pdf', 'java turtorial', 'https://youtu.be/bm0OyhwFDuY?si=DJu0zVkjBkywmZpl'),
(11, 'img/java_files_io.pdf', 'java io operations', 'https://youtu.be/e3dFoA4-tqs?si=AERFVIEa5KBPbZJn'),
(11, 'img/collections in java.pdf', 'collections in java', 'https://youtu.be/viTHc_4XfCA?si=JSL3gMEjjD4wyooL'),
(11, 'img/Exception Handling in java.pdf', 'exception handling in java', 'https://youtu.be/5r_ERSm7NKE?si=u7emkKnRLS5zZiYM'),
(11, 'img/Method Overloading and Methid Overriding in java.pdf', 'method overloading and overrriding', 'https://youtu.be/ryDeTfmSY_o?si=pONb63sMyP6jweLU'),
(11, 'img/multi threading.pdf', 'multithreading in java', 'https://youtu.be/KuvkahVyY9E?si=v8VMc5uxixyWMmzr'),
(11, 'img/Applet in Java.pdf', 'applet in java', 'https://www.youtube.com/live/3pr5OOfv_Dc?si=nEc5hF4mncMcTvMC'),
(12, 'img/python-control-statements-1.pdf', 'control statements in python', 'https://youtu.be/gkV14SRCD-4?si=vDX8guksIJkRYmwG'),
(12, 'img/arrays in python.pdf', 'arrays in python', 'https://youtu.be/nlP5kF1_efE?si=-TF_pLFp_borhG4T'),
(12, 'img/exception handling in python.pdf', 'exception handling in python', 'https://youtu.be/-_uNayxaQoU?si=5t1LPTQ3IYG5MhgN'),
(12, 'img/File Handling in python.pdf', 'file handling in python', 'https://youtu.be/DmHSwTiD5Tk?si=IErmnWx1pHLsLtlX'),
(12, 'img/functions-in python.pdf', 'functions in python', 'https://youtu.be/wLie11bgbSI?si=OTsV5EjoHLjP8-K8'),
(12, 'img/Strings-In-Python.pdf', 'strings in python', 'https://youtu.be/Ctqi5Y4X-jA?si=a_QLJWQCjVSp1jte'),
(12, 'img/list, tuples, dictionary.pdf', 'list, tuple, set and dictonary', 'https://youtu.be/gOMW_n2-2Mw?si=J-nxBSoIpW2rUYsa'),
(6, 'img/M2M.docx', 'M2M data transfer', 'https://youtu.be/CJ6FdlQqgPM?si=KkAFAgOX7T4eXUvg'),
(6, 'img/WirelessSensorNetworkUnit4.docx', 'wireless sensors', 'https://youtu.be/BBvG7uzmOV0?si=WMfxJrDMJN1ZBKU-'),
(6, 'img/BluetoothNotesIoT504.docx', 'bluetooth', 'https://youtu.be/ixY0Cau4mBM?si=PGO2ejX67inq1SPP'),
(6, 'img/PiconetUnit3CommTech.docx', 'piconet', 'https://youtu.be/oYD2Kr175h8?si=g8kzNBsrAQOCKeCJ'),
(13, 'img/programming methodology.pdf', 'programming methodology', 'https://youtu.be/yW90RGeRDOE?si=H6KdEHih9RL0LEYt'),
(13, 'img/computer eand network basics.pdf', 'networks basics', 'https://youtu.be/oHQvWa6J8dU?si=TidFj06xX8jGocBc'),
(13, 'img/EN-Ethical Hacking.pdf', 'ethical hacking', 'https://youtu.be/XLvPpirlmEs?si=ErIvUfQ6jPyYKoY7'),
(13, 'img/fundamentals of computer.pdf', 'fundamentals of computers', 'https://youtu.be/pLnN3ooJcqw?si=OEN-pUxquHGBc7O9'),
(13, 'img/ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING.pdf', 'AI & ML', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(14, 'img/computer-networking.pdf', 'computer networking', 'https://youtu.be/keeqnciDVOo?si=fFHl7n9kQ89fXZSr'),
(14, 'img/INTRODUCTION_TO_COMPUTER_NETWORKS.pptx', 'iintroduction computer networking', 'https://youtu.be/VwN91x5i25g?si=1_vbpgfoxaQPZRek'),
(14, 'img/IP_Addressing_and Subnetting.pdf', 'ip adressing and subnetting', 'https://youtu.be/phOlq9SuscM?si=JjS7h_bCHz_Vnbdb'),
(14, 'img/network tools and device.pdf', 'network tools and device', 'https://youtu.be/0pMm_QxCg3I?si=NaJvbMakDsB7jR6H'),
(14, 'img/protocols.pdf', 'protocols', 'https://youtu.be/ly8ikWtAY7s?si=cecpjrdGymHvCwEM'),
(14, 'img/network-topologies.ppt', 'network topologies', 'https://youtu.be/zbqrNg4C98U?si=thZkF7F-uFHAVeUa'),
(15, 'img/8086 micro processor.pdf', '8086 microprocessor', 'https://youtu.be/nV0pC0-zJc0?si=7KV_KyjvMTclRdjJ'),
(15, 'img/computer organisation.pdf', 'computer organization', 'https://youtu.be/Ol8D69VKX2k?si=ddfjYRnGU_KfJWuc'),
(15, 'img/input output organisation.pdf', 'ip/op organization', 'https://youtu.be/Hr7tbmIr0G8?si=FGPwytV2_t-kBSXe'),
(15, 'img/Memory organisation.pdf', 'memory organization', 'https://youtu.be/xRGUlypj89E?si=c2YtH4qGn89pr-vq'),
(15, 'img/micro processors.pdf', 'micro processors', 'https://youtu.be/OWCaYfPcaoI?si=BATGVxk8koe-6LaL'),
(16, 'img/CPU Scheduling.ppt', 'cpu sheduling', 'https://youtu.be/EWkQl0n0w5M?si=viIAkYoR5pRywtud'),
(16, 'img/Deadlocks.pdf', 'deadlocks', 'https://youtu.be/7bnpFpYZtVk?si=M0riyZuD8V7XMR6O'),
(16, 'img/introduction to Operating systems.pdf', 'introduction to os', 'https://youtu.be/vBURTt97EkA?si=b61jHNsPw-BoJnsp'),
(16, 'img/memory management techniques.pdf', 'memory management', 'https://youtu.be/PujjqfUhtNo?si=chImEOiM2JAUxnDs'),
(17, 'img/debugging.pdf', 'debugging', 'https://youtu.be/uS9eWXcuYOk?si=yydlXtuJP5Hw3h2c'),
(17, 'img/life cycle models.pdf', 'life cycle models', 'https://youtu.be/kSU2MPeptpM?si=yvqFTUZhfpUcHaE6'),
(17, 'img/quality management.pdf', 'quality management', 'https://youtu.be/OSz7MvkPhFI?si=XYhhXL2idq17gOm2'),
(17, 'img/requirements analysis and specifications.pdf', 'requirement analysis', 'https://youtu.be/JNLRXczA9Y0?si=_W-TTMS07qv57V2k'),
(17, 'img/software coding and testing.pdf', 'coding and testing', 'https://youtu.be/T0TynxN77oY?si=efpbAGs2gEFZG-fc'),
(17, 'img/Software project management.ppt', 'project management', 'https://youtu.be/ZKOL-rZ79gs?si=VRZdQmP0IDq7QZUL'),
(18, 'img/Entrepreneurship deployment.pdf', 'entrepreneurship deployment', 'https://youtu.be/Dgqsp57LmHc?si=r9NTLgIc4sZxX37O'),
(18, 'img/Entrepreneurship deployment.pdf', 'industrical management', 'https://youtu.be/r9feprBR15c?si=jDx0RU2LH9-Xq94-'),
(18, 'img/material management.pdf', 'material management', 'https://youtu.be/oSoU4msV2ss?si=3ztjAMw5p06DzujW'),
(18, 'img/organization structure and behaviour.pdf', 'organization and behavior', 'https://youtu.be/zF8PY8pyrEQ?si=LpMARlMgni3LMfzc'),
(18, 'img/production management.pdf', 'production management', 'https://youtu.be/fmT__fQdbSU?si=7A3DgcbB6bZjpEgL'),
(19, 'img/trigonometry.pdf', 'trigonometry', 'https://youtu.be/mhd9FXYdf4s?si=BQk29Yor6vv9XEip'),
(19, 'img/Partial Fractions.pdf', 'partial fractions', 'https://youtu.be/6rXByMcuAyI?si=28VflWaqmk7B9Ra6'),
(19, 'img/MATHGEOU10Properties_Triangles.pdf', 'triangles', 'https://youtu.be/q7vI2oXL0gQ?si=whCr1g8WS3z0EEYA'),
(19, 'img/Laplace.pdf', 'laplace transforms', 'https://youtu.be/PG_-ax_HmS0?si=GIaWmC6mVKumb7WU'),
(19, 'img/214623B.C.Amathematics2nd-sem-matrix-and-determinant-13-04-2020.pdf', 'matrices', 'https://youtu.be/yRwQ7A6jVLk?si=Ol6kZuYlE8pxL59-'),
(19, 'img/Compound_angle_identities_LESSON.pdf', 'compound angles', 'https://youtu.be/sU2pyMR8GZ4?si=IiELULIwty1oGWm5'),
(19, 'img/hyperbolicfunctions.pdf', 'hyperbolic functions', 'https://youtu.be/vVcEePliDUA?si=Eot1QDZZx0lRg0jj'),
(19, 'img/mc-ty-trigeqn-2009-1.pdf', 'inverse of trigonometry functions', 'https://youtu.be/jt7p-mCC0ng?si=lELsG6GkHHgYEDe5'),
(19, 'img/311_Maths_Eng_Lesson25.pdf', 'linits and continuity', 'https://youtu.be/9brk313DjV8?si=FT6l9MWm0_g_wU6L'),
(19, 'img/311_Maths_Eng_Lesson25.pdf', 'integrations', 'https://youtu.be/o75AqTInKDU?si=jHfYnuMYJNfy0Gm9'),
(20, 'img/2_Lesson-01_INTRODUCTION_TO_SOUND.pdf', 'introduction to sound', 'https://youtu.be/OWETRP_eabg?si=T17KCuZ-aJsDFcm-'),
(20, 'img/9.Modern-physicstheory.pdf', 'modern physics theory', 'https://youtu.be/H0m97YJavH4?si=kwCRL6VRZW0HmbTT'),
(20, 'img/12.VectorsTheory.pdf', 'vectors', 'https://youtu.be/wAs1TIiF7A0?si=qT7xpNYeO5Kj6ynD'),
(20, 'img/keep202.pdf', 'lens concept', 'https://youtu.be/CJ6aB5ULqa0?si=FPthN2rs6lM18T51'),
(21, 'img/2.-Atomic-Structure.pdf', 'atomic structure', 'https://youtu.be/4QblYo-XeoY?si=DZ1OO6nbmQpetGIg'),
(21, 'img/20.-Solutions-Notes.pdf', 'solutions', 'https://youtu.be/jwDyoznlwGk?si=sBlv0YYasdfGz0vM'),
(21, 'img/21.-Electrochemistry-Notes.pdf', 'electrochemistry', 'https://youtu.be/3X50s_ks16w?si=9IMFNe5LrvWno32T'),
(21, 'img/24.-Metallurgy-Notes.pdf', 'metallurgy', 'https://youtu.be/hJTlNLRXfzE?si=tNigaKVeHinOKERJ'),
(21, 'img/33.-Polymer-Notes.pdf', 'polymers', 'https://youtu.be/dtFp-BcFAY8?si=4IeUTi_K2qo1uIbg'),
(21, 'img/34.-Chemistry-Everyday-Life.pdf', 'chemistry in everyday life', 'https://youtu.be/kYPoYnDa11E?si=mpVOylKDsIgD-F9C'),
(21, 'img/Corrosion Basics.pdf', 'corrosion basics', 'https://youtu.be/nT4L2n1Q3yI?si=lMhqMyPRdGB5g6qW'),
(21, 'img/ENVIRONMENTAL-SCIENCE-1.pdf', 'enviornmental studies', 'https://youtu.be/jLk0L3xQYNE?si=tsg-UDRl8rrEqKf_'),
(8, 'img/JAVA QUIZ4.docx', 'qwert', 'qw'),
(8, 'img/JAVA QUIZ4.docx', 'qwert', 'qw'),
(8, 'img/SE1.docx', 'dsd', 'df'),
(8, 'img/SE1.docx', 'dsd', 'df'),
(8, 'img/JAVA QUIZ2.docx', 'dsd', 'df'),
(8, 'img/JAVA QUIZ4.docx', 'qwert', 'qw'),
(8, 'img/SE2.docx', 'qwert', 'qw'),
(8, 'img/chatbot.js', 'AD', 'sdf'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/chatbot.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/server.js', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/applets.java', 'html', 'https://youtu.be/4RixMPF4xis?si=IqE9Q8UhFinyw_ky'),
(8, 'img/applets.java', 'html', 'https://youtu.be/pLnN3ooJcqw?si=OEN-pUxquHGBc7O9');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(100) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `verifiedEmail` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile1`
--
ALTER TABLE `profile1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile1`
--
ALTER TABLE `profile1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_data`
--
ALTER TABLE `tb_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"file\",\"table\":\"quizq\"},{\"db\":\"file\",\"table\":\"upload\"},{\"db\":\"projectwork\",\"table\":\"books\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-09-26 17:44:56', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shaikestate`
--
CREATE DATABASE IF NOT EXISTS `shaikestate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shaikestate`;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `years_experience` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `license_number`, `years_experience`, `user_id`, `createdAt`, `updatedAt`) VALUES
(2, 'LIC10001', 5, 1, '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(3, 'LIC10002', 8, 4, '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(4, 'LIC10003', 3, 3, '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(5, 'LIC10004', 10, 2, '2025-04-21 11:51:36', '2025-04-21 11:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `bedrooms` int(11) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `area_sqft` int(11) DEFAULT NULL,
  `property_type` enum('House','Land','Farm','Commercial') NOT NULL,
  `status` enum('For Sale','Sold') DEFAULT 'For Sale',
  `town_id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`property_id`, `address`, `price`, `bedrooms`, `bathrooms`, `area_sqft`, `property_type`, `status`, `town_id`, `agent_id`, `createdAt`, `updatedAt`) VALUES
(1, '123 Main St', 250000.00, 3, 2, 1500, 'House', 'For Sale', 4, 5, '2025-04-21 11:51:36', '2025-04-21 12:06:20'),
(2, '456 Oak Ave', 350000.00, 4, 3, 2000, 'House', 'For Sale', 3, 4, '2025-04-21 11:51:36', '2025-04-21 12:06:20'),
(3, '789 Pine Rd', 150000.00, 2, 1, 900, 'House', 'Sold', 2, 3, '2025-04-21 11:51:36', '2025-04-21 12:06:20'),
(4, '101 Maple Ln', 500000.00, 5, 4, 3000, 'House', 'For Sale', 1, 2, '2025-04-21 11:51:36', '2025-04-21 12:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `image_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`image_id`, `property_id`, `image_url`) VALUES
(1, 1, 'property_images/property_1.jpg'),
(2, 2, 'property_images/property_2.jpg'),
(3, 3, 'property_images/property_3.jpg'),
(4, 4, 'property_images/property_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `town`
--

CREATE TABLE `town` (
  `town_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `population` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `town`
--

INSERT INTO `town` (`town_id`, `name`, `state`, `population`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Springfield', 'Illinois', 116250, 'Capital of Illinois', '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(2, 'Riverside', 'California', 303871, 'Known for its citrus industry', '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(3, 'Franklin', 'Tennessee', 83000, 'Historic city', '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(4, 'Greenville', 'South Carolina', 70000, 'Growing city', '2025-04-21 11:51:36', '2025-04-21 11:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('Buyer','Seller','Agent') NOT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phone`, `role`, `profile_picture_url`, `createdAt`, `updatedAt`) VALUES
(1, 'John Doe', 'john@example.com', '$2y$10$6hOedAwTkNQ7WidY9bXpfOOlt58PZXInd4nRRGyaUe6RVR8wXbF4y', '1234567890', 'Agent', NULL, '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(2, 'Jane Smith', 'jane@example.com', '$2y$10$R7HpnctlMJPEvDfqo9IoN.31VJXu./GkV0X.RjMk1zbV41Qxd/fJO', '2345678901', 'Buyer', NULL, '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(3, 'Bob Johnson', 'bob@example.com', '$2y$10$ktLh4J5Su3e99PNVF41u7OLWO4J3WJ8Ln2vJ3pMoPV2ttpnNlZ2gm', '3456789012', 'Seller', NULL, '2025-04-21 11:51:36', '2025-04-21 11:51:36'),
(4, 'Alice Williams', 'alice@example.com', '$2y$10$oDLPzUn82pLCucKgR4ImBuTOaAZPASSrsew/W9gcqT5bOsIkMDyRK', '4567890123', 'Agent', NULL, '2025-04-21 11:51:36', '2025-04-21 11:51:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `license_number` (`license_number`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `idx_town` (`town_id`),
  ADD KEY `idx_agent` (`agent_id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `idx_property` (`property_id`);

--
-- Indexes for table `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`town_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `town`
--
ALTER TABLE `town`
  MODIFY `town_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`town_id`) REFERENCES `town` (`town_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`) ON DELETE SET NULL;

--
-- Constraints for table `property_images`
--
ALTER TABLE `property_images`
  ADD CONSTRAINT `property_images_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`) ON DELETE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `user_auth`
--
CREATE DATABASE IF NOT EXISTS `user_auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'abbas', '$2y$10$/JpSTyBrTUs5gi1s0ENIY.zrCzXGWBhHlTf8Zy1pMN2NTvyEXnLfW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
