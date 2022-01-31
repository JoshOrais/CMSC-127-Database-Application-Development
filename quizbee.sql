-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 04:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizbee`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_ID`, `name`) VALUES
(1, 'History and Geography'),
(2, 'General Knowledge'),
(3, 'Science and Nature'),
(4, 'Music'),
(5, 'Computer and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `category_ID` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `letter` char(1) NOT NULL,
  `choice_content` varchar(100) DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`category_ID`, `item`, `letter`, `choice_content`, `answer`) VALUES
(1, 1, 'A', 'Toledo', 0),
(1, 1, 'B', 'Bern', 0),
(1, 1, 'C', 'Madrid', 1),
(1, 1, 'D', 'Kingston', 0),
(1, 2, 'A', 'Asia', 0),
(1, 2, 'B', 'Canada', 1),
(1, 2, 'C', 'Africa', 0),
(1, 2, 'D', 'Europe', 0),
(1, 3, 'A', 'Leaf', 1),
(1, 3, 'B', 'Seed', 0),
(1, 3, 'C', 'Twig', 0),
(1, 3, 'D', 'Root', 0),
(1, 4, 'A', 'Antarctica', 0),
(1, 4, 'B', 'Asia', 0),
(1, 4, 'C', 'North America', 1),
(1, 4, 'D', 'Europe', 0),
(1, 5, 'A', 'Chile', 0),
(1, 5, 'B', 'Japan', 0),
(1, 5, 'C', 'New Zealand', 0),
(1, 5, 'D', 'France', 1),
(1, 6, 'A', 'Egypt', 1),
(1, 6, 'B', 'Canada', 0),
(1, 6, 'C', 'Austria', 0),
(1, 6, 'D', 'Jamaica', 0),
(1, 7, 'A', 'Europe - Haiti - Helsinki', 0),
(1, 7, 'B', 'Europe - Finland - Malabo', 0),
(1, 7, 'C', 'Asia - Finland - Helsinki', 0),
(1, 7, 'D', 'Europe - Finland - Helsinki', 1),
(1, 8, 'A', 'Paraguay', 1),
(1, 8, 'B', 'Cuba', 0),
(1, 8, 'C', 'Canada', 0),
(1, 8, 'D', 'Bulgaria', 0),
(1, 9, 'A', 'King', 0),
(1, 9, 'B', 'Prime Minister', 1),
(1, 9, 'C', 'CEO', 0),
(1, 9, 'D', 'Lord', 0),
(1, 10, 'A', 'Blindness', 0),
(1, 10, 'B', 'Learning Disability', 1),
(1, 10, 'C', 'Mental Illness', 0),
(1, 10, 'D', 'Arthritis', 0),
(2, 1, 'A', 'Amazon', 0),
(2, 1, 'B', 'Google', 0),
(2, 1, 'C', 'Wikipedia', 1),
(2, 1, 'D', 'eBay', 0),
(2, 2, 'A', 'Spoons and Forks', 0),
(2, 2, 'B', 'Toilet Paper', 0),
(2, 2, 'C', 'Curtains', 1),
(2, 2, 'D', 'Dirt', 0),
(2, 3, 'A', 'Welding', 1),
(2, 3, 'B', 'Plaster', 0),
(2, 3, 'C', 'Tapestry', 0),
(2, 3, 'D', 'Tape', 0),
(2, 4, 'A', 'Rooster', 0),
(2, 4, 'B', 'Pig', 1),
(2, 4, 'C', 'Chicken', 0),
(2, 4, 'D', 'Horse', 0),
(2, 5, 'A', 'Read poetry man', 0),
(2, 5, 'B', 'Really poor music', 0),
(2, 5, 'C', 'Revolutions per minute', 1),
(2, 5, 'D', 'Right play machine', 0),
(2, 6, 'A', 'Copper', 0),
(2, 6, 'B', 'Silver', 1),
(2, 6, 'C', 'Pewter', 0),
(2, 6, 'D', 'Platinum', 0),
(2, 7, 'A', 'Rice', 1),
(2, 7, 'B', 'Custard', 0),
(2, 7, 'C', 'Apples', 0),
(2, 7, 'D', 'Bananas', 0),
(2, 8, 'A', '3 and 6', 0),
(2, 8, 'B', '3 and 8', 0),
(2, 8, 'C', '6 and 9', 1),
(2, 8, 'D', '4 and 11', 0),
(2, 9, 'A', 'Montserrat', 0),
(2, 9, 'B', 'Richelieu', 0),
(2, 9, 'C', 'Moriarty', 0),
(2, 9, 'D', 'Roquefort', 1),
(2, 10, 'A', '1959', 1),
(2, 10, 'B', '1957', 0),
(2, 10, 'C', '1952', 0),
(2, 10, 'D', '1955', 0),
(3, 1, 'A', 'Bee', 0),
(3, 1, 'B', 'Bear', 1),
(3, 1, 'C', 'Arctic Tern', 0),
(3, 1, 'D', 'Angelfish', 0),
(3, 2, 'A', 'It cries', 0),
(3, 2, 'B', 'It sneezes', 0),
(3, 2, 'C', 'It turns white', 1),
(3, 2, 'D', 'It goes blind', 0),
(3, 3, 'A', 'Pod', 0),
(3, 3, 'B', 'Calf', 1),
(3, 3, 'C', 'Pup', 0),
(3, 3, 'D', 'Junior', 0),
(3, 4, 'A', 'Tarantula', 1),
(3, 4, 'B', 'Emu', 0),
(3, 4, 'C', 'Seal', 0),
(3, 4, 'D', 'Silkworm', 0),
(3, 5, 'A', 'Humpback Whales', 1),
(3, 5, 'B', 'Gorillas', 0),
(3, 5, 'C', 'Parrots', 0),
(3, 5, 'D', 'Humans', 0),
(3, 6, 'A', 'Earwig', 0),
(3, 6, 'B', 'Dromedary', 1),
(3, 6, 'C', 'Common Rhea', 0),
(3, 6, 'D', 'Hawaiian Goose', 0),
(3, 7, 'A', 'They always stay near it', 0),
(3, 7, 'B', 'Smell of the river', 1),
(3, 7, 'C', 'Sound of the river', 0),
(3, 7, 'D', 'Salmon will spawn in any river', 0),
(3, 8, 'A', 'Wind', 1),
(3, 8, 'B', 'Solar', 0),
(3, 8, 'C', 'Water', 0),
(3, 8, 'D', 'Electricity', 0),
(3, 9, 'A', 'Runoff', 1),
(3, 9, 'B', 'Flood', 0),
(3, 9, 'C', 'Zone of Saturation', 0),
(3, 9, 'D', 'Water Table', 0),
(3, 10, 'A', 'It automatically storms', 0),
(3, 10, 'B', 'It flies away', 0),
(3, 10, 'C', 'It becomes lighter', 0),
(3, 10, 'D', 'It becomes dense', 1),
(4, 1, 'A', 'Break Dancing', 0),
(4, 1, 'B', 'Kickboxing', 0),
(4, 1, 'C', 'Kung fu Fighting', 1),
(4, 1, 'D', 'Makign Sweet and Sour Pork', 0),
(4, 2, 'A', 'Lene Lovich', 0),
(4, 2, 'B', 'Siouxsie Sioux', 1),
(4, 2, 'C', 'Poly Styrene', 0),
(4, 2, 'D', 'Suzi Quatro', 0),
(4, 3, 'A', 'The Captain and the Kid', 0),
(4, 3, 'B', 'Caribou', 0),
(4, 3, 'C', 'Reg Strikes Back', 0),
(4, 3, 'D', 'Smiler', 1),
(4, 4, 'A', 'Calypso', 1),
(4, 4, 'B', 'Flamenco', 0),
(4, 4, 'C', 'Pasadoble', 0),
(4, 4, 'D', 'Ipso facto', 0),
(4, 5, 'A', 'Ireland', 0),
(4, 5, 'B', 'Scotland', 0),
(4, 5, 'C', 'USA', 0),
(4, 5, 'D', 'England', 1),
(4, 6, 'A', 'Reality', 0),
(4, 6, 'B', 'My Dreams', 0),
(4, 6, 'C', 'The Unkown', 1),
(4, 6, 'D', 'Love', 0),
(4, 7, 'A', 'Ms. Kelly', 1),
(4, 7, 'B', 'Mrs. Rowland', 0),
(4, 7, 'C', 'Kelly', 0),
(4, 7, 'D', 'Kelly Rowland', 0),
(4, 8, 'A', 'Anastacia Rose', 0),
(4, 8, 'B', 'Chelsea Korka', 0),
(4, 8, 'C', 'Melissa Reyes', 0),
(4, 8, 'D', 'Asia Nitollano', 1),
(4, 9, 'A', 'Jay-Z', 0),
(4, 9, 'B', 'Eminem', 0),
(4, 9, 'C', 'Michael Jackson\'s Dad', 0),
(4, 9, 'D', '50 cent', 1),
(4, 10, 'A', 'Whitesnake', 0),
(4, 10, 'B', 'Red Hot Chili Peppers', 1),
(4, 10, 'C', 'Beach Boys', 0),
(4, 10, 'D', 'Aerosmith', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `category_ID` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `question_content` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`category_ID`, `item`, `question_content`) VALUES
(1, 1, 'What is the capital city of Spain?'),
(1, 2, 'Which of these is not a continent?'),
(1, 3, 'What part of the maple tree is featured on the Canadian flag?'),
(1, 4, 'On which continent is the United States located?'),
(1, 5, 'Victor Hugo\'s \"The Hunchback of Notre Dame\" is set in what country?'),
(1, 6, 'Where was King Tut\'s tomb found?'),
(1, 7, 'Which of these continent - country - capital groups is correct?'),
(1, 8, 'Which country is located on the continent of South America?'),
(1, 9, 'What title does the leader of Canada hold?'),
(1, 10, 'What disability do they claim Albert Einstein possessed?'),
(2, 1, 'Which website became a hugely popular user-contributed online encyclopedia?'),
(2, 2, 'What are commonly used to decorate windows?'),
(2, 3, 'How do artists join two pieces of steel when making a sculpture?'),
(2, 4, 'What farm animal does ham come from?'),
(2, 5, 'What did \"rpm\" mean when old vinyl records were played at 33 1/3 rpm?'),
(2, 6, 'What is associated with a 25th wedding anniversary in the U.K.?'),
(2, 7, 'What food is cultivated in flooded paddy fields?'),
(2, 8, 'Which numbers aren\'t in a deck of \"Sorry\" cards?'),
(2, 9, 'Which of these is a variety of cheese?'),
(2, 10, 'The Barbie doll was first introduced in what year?'),
(3, 1, 'Which of these animals is big and furry?'),
(3, 2, 'What happens to a goldfish when it is kept in a dark room?'),
(3, 3, 'What is a baby whale called?'),
(3, 4, 'Which of the following is an insect?'),
(3, 5, 'Which living creature makes the loudest noise?'),
(3, 6, 'The Arabian or one-humped camel is also known as what?'),
(3, 7, 'How do salmon find their way back to their home river to spawn each year?'),
(3, 8, 'What kind of power do sailboats use?'),
(3, 9, 'What is water that flows over the ground rather than seeping into it?'),
(3, 10, 'Which of the following happens when air cools?'),
(4, 1, 'According to Carl Douglas, what was \"a little bit frightening\" but done \"with expert timing\"?'),
(4, 2, 'What is the stage name of singer Susan Janet Ballion?'),
(4, 3, 'Which of the following is not the title of an album by Elton John?'),
(4, 4, 'Which of these is a style of Afro-Caribbean music?'),
(4, 5, 'What country was Sting born in?'),
(4, 6, 'In \"First Time\" by Lifehouse, what are they crashing into?'),
(4, 7, 'What is the name of Kelly Rowland\'s 2007 album?'),
(4, 8, 'Who won \"Pussycat Dolls Present: The Search for the Next Doll\" in 2007?'),
(4, 9, 'Who is Curtis Jackson III?'),
(4, 10, 'Which \"hot\" group won a VMA for their video \"Dani California\"?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`category_ID`,`item`,`letter`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`category_ID`,`item`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `questions` (`category_ID`),
  ADD CONSTRAINT `choices_ibfk_2` FOREIGN KEY (`category_ID`) REFERENCES `questions` (`category_ID`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `categories` (`category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
