-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 11:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcheroes`
--

-- --------------------------------------------------------

--
-- Table structure for table `characterproperties`
--

CREATE TABLE `characterproperties` (
  `characterPropertyId` int(10) NOT NULL,
  `characterId` int(5) NOT NULL,
  `propertyId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characterproperties`
--

INSERT INTO `characterproperties` (`characterPropertyId`, `characterId`, `propertyId`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 7),
(11, 4, 9),
(12, 4, 10),
(13, 5, 11),
(14, 5, 12),
(15, 5, 12),
(16, 6, 6),
(17, 6, 14),
(18, 6, 15),
(19, 7, 16),
(20, 7, 17),
(21, 7, 18),
(22, 8, 19),
(23, 8, 20),
(24, 8, 21),
(25, 9, 26),
(26, 9, 23),
(27, 9, 24),
(28, 10, 25),
(29, 10, 26),
(30, 10, 27),
(31, 11, 28),
(32, 11, 29),
(33, 11, 30),
(34, 12, 31),
(35, 12, 32),
(36, 12, 33),
(37, 13, 25),
(38, 13, 34),
(39, 13, 35),
(40, 14, 28),
(41, 14, 29),
(42, 14, 30),
(43, 15, 28),
(44, 15, 29),
(45, 15, 30),
(46, 16, 36),
(47, 16, 37),
(48, 16, 38),
(49, 17, 10),
(50, 17, 40),
(51, 17, 36),
(52, 18, 41),
(53, 18, 42),
(54, 18, 43),
(55, 19, 43),
(56, 19, 44),
(57, 19, 45),
(58, 20, 46),
(59, 20, 41),
(60, 20, 42),
(61, 21, 48),
(62, 21, 49),
(63, 21, 50),
(64, 22, 60),
(65, 22, 52),
(66, 22, 6),
(67, 23, 53),
(68, 23, 54),
(69, 23, 50),
(70, 24, 56),
(71, 24, 57),
(72, 24, 58),
(73, 25, 59),
(74, 25, 60),
(75, 25, 61);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `characterId` int(5) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  `characterDescription` varchar(750) NOT NULL,
  `characterImage` varchar(255) NOT NULL,
  `characterImageCloseup` varchar(255) NOT NULL,
  `characterBackground` varchar(255) NOT NULL,
  `teamId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`characterId`, `characterName`, `characterDescription`, `characterImage`, `characterImageCloseup`, `characterBackground`, `teamId`) VALUES
(1, 'White Canary', 'A Star City vigilante and former League of Assassins member suffering from rage issues after being resurrected by the mystical Lazarus Pit. In the second season, Sara becomes the leader of the Legends and captain of the Waverider.', 'img/characters/whitecanary.png', 'img/characters-closeup/whitecanary.png', 'img/backgrounds/whitecanary.png', 1),
(2, 'Atom', 'Dr. Raymond \"Ray\" Palmer is a scientist, inventor, businessman, and CEO of Palmer Technologies. After losing his fiancée Anna to the Starling City Siege, Ray developed a power-suit to protect the people of Starling City and became a member of Team Arrow. After a lab accident that saw him captive for 6 months and the world believing him dead, he is now capable of shrinking and growing to immense sizes whilst wearing the suit. During the first season, he develops a relationship with Kendra Saunders, but this ends when Hawkman is reincarnated as Scythian Torvil.', 'img/characters/atom.png', 'img/characters-closeup/atom.png', 'img/backgrounds/atom.png', 1),
(3, 'Firestorm', 'Graeme McComb portrays a young Stein. Following Stein\'s death, his younger self is accidentally displaced in the Viking era with a Beebo toy, reveals details of Stein\'s change to his past during Hanukkah after his last encounter with his younger self in 1987 in the process. After taking his future self\'s advice, young Stein leads a fulfilling marriage with Clarissa following the couple\'s daughter Lily\'s birth, with him being a devoted father, therefore young Stein and his wife are living a much happier lives than what would have been without interfering Stein\'s destiny.', 'img/characters/firestorm.png', 'img/characters-closeup/firestorm.png', 'img/backgrounds/firestorm.png', 1),
(4, 'Heat Wave', 'Mick Rory is an arsonist, career criminal, and accomplice of Leonard Snart who, in contrast to his partner, uses a heat gun capable of burning almost anything. After being deserted in the past by Snart, he is recruited by the Time Masters and becomes the bounty hunter Chronos, who hunts the team for a brief period of time, eventually returning to the Legends team. Mitchell Kummen portrays a young Rory. Later, he is shown to have a talent in writing, and becomes a semi-popular romance novelist under the pen name \"Rebecca Silver\".', 'img/characters/heatwave.png', 'img/characters-closeup/heatwave.png', 'img/backgrounds/heatwave.png', 1),
(5, 'Steel', 'Dr. Nathaniel \"Nate\" Heywood is a historian whose grandfather was Henry Heywood, Sr. / Commander Steel, a member of the Justice Society of America. \r\nIn the season four finale, Nate and Constantine come up with a plan to get Neron out of Ray\'s body by tricking him into killing Nate, therefore breaking his earlier promise to Ray not to hurt Nate. In the afterlife, Nate interacts with his father, before the Legends, through their love for Nate, manage to revive him using Tabitha\'s magical staff.', 'img/characters/steel.png', 'img/characters-closeup/steel.png', 'img/backgrounds/steel.png', 1),
(6, 'Supergirl', 'A 24-year-old Kryptonian living in National City, who must embrace her powers after previously hiding them. She assists her adoptive sister Alex as part of the Department of Extra-Normal Operations (DEO) as she discovered the truth that her adoptive fathe', 'img/characters/supergirl.png', 'img/characters-closeup/supergirl.png', 'img/backgrounds/supergirl.png', 2),
(7, 'Martian Manhunter', 'J\'onn J\'onzz, commonly referred to as the \"Martian Manhunter\", is the one of the two last Green Martians. Born and raised on the planet Mars, J\'onn was thought to be the sole survivor of a \"Martian Holocaust\" instigated by the White Martians that also kil', 'img/characters/martianmanhunter.png', 'img/characters-closeup/martianmanhunter.png', 'img/backgrounds/martianmanhunter.png', 2),
(8, 'Lena Luthor', 'Lena Kieran Luthor is the billionaire CEO of L-Corp and the former owner of CatCo Worldwide Media. She is also the daughter of the late Lionel Luthor and his late lover, the estranged adoptive daughter/step-daughter of Lillian Luthor, the estranged younge', 'img/characters/lenaluthor.png', 'img/characters-closeup/lenaluthor.png', 'img/backgrounds/lenaluthor.png', 2),
(9, 'Brainiac 5', 'Querl Dox, also known as Brainiac 5, is a Coluan and a former member of the Legion. A 12th-level intellect, Brainiac 5 is an incredible scientist and combat strategist, affectionately nicknamed \"Brainy\" by the other legionnaires. He also goes by the alias', 'img/characters/brainiac5.png', 'img/characters-closeup/brainiac5.png', 'img/backgrounds/brainiac5.png', 2),
(10, 'Dreamer', 'Nia Nal is a human-Naltorian hybrid, a reporter of CatCo Worldwide Media, and former political speechwriter. She is also the daughter of Paul Nal and the late Isabel Nal, and the estranged younger sister of Maeve Nal. After her mother\'s death, Nia embrace', 'img/characters/dreamer.png', 'img/characters-closeup/dreamer.png', 'img/backgrounds/dreamer.png', 2),
(11, 'The Flash', 'Bartholomew Henry \"Barry\" Allen is a scientist in the Criminal and Forensic Science Division of the Central City Police Department. He is the son of the late Henry and Nora Allen, the foster son turned son-in-law of Joe West, t', 'img/characters/theflash.png', 'img/characters-closeup/theflash.png', 'img/backgrounds/theflash.png', 3),
(12, 'Killer Frost', 'Dr. Caitlin \"Cait\" Snow is a bio-engineer at S.T.A.R. Labs and a former scientist at Mercury Labs. She was working during the particle accelerator disaster and tended to Barry Allen during his coma with Cisco Ramon until he woke up. After he began his cru', 'img/characters/killerfrost.png', 'img/characters-closeup/killerfrost.png', 'img/backgrounds/killerfrost.png', 3),
(13, 'Vibe', 'Francisco Baracus \"Cisco\" Ramon, nicknamed Vibe. Is a former meta-human, and is a mechanical engineering genius at S.T.A.R. Labs, also formerly serving as the prison guard to their makeshift prison. He came from a Puerto Rican family and provides much-nee', 'img/characters/vibe.png', 'img/characters-closeup/vibe.png', 'img/backgrounds/vibe.png', 3),
(14, 'Kid Flash', 'Wallace F. \"Wally\" West aka Kid Flash is the son of Joe West and the late Francine West, and the younger brother of Iris West-Allen. He was born after Francine had separated with Joe, having left him and Iris, so he was brought up without a father or sist', 'img/characters/kidflash.png', 'img/characters-closeup/kidflash.png', 'img/backgrounds/kidflash.png', 3),
(15, 'Reverse-Flash', 'Professor Eobard Thawne is a metahuman speedster from a future and the archenemy of Barry Allen / Flash. Once obsessed with the 21st-century superhero, Eobard replicated Barry\'s powers so he could become the Flash, only to learn through time travel that he was destined to become his greatest enemy. With this revelation, Eobard grew bitter with resentment and sought to prove his superiority as a speedster by killing the Flash, and became Reverse-Flash.', 'img/characters/reverseflash.png', 'img/characters-closeup/reverseflash.png', 'img/backgrounds/reverseflash.png', 3),
(16, 'Green Arrow', 'In the series, Oliver, a billionaire playboy, who claimed to have spent five years shipwrecked on Lian Yu, a mysterious island in the North China Sea, returns home to Starling City (later renamed \"Star City\") to fight crime and corruption as a secret vigilante whose weapon of choice is a bow and arrow. During the first season, Oliver focuses on a list, written by his father, of targets that are taking advantage of the citizens. Subsequent seasons have him venturing into all criminal activity, and he shifts from being willing to kill to having a rule against all killing as a means of stopping assailants.', 'img/characters/greenarrow.png', 'img/characters-closeup/greenarrow.png', 'img/backgrounds/greenarrow.png', 4),
(17, 'Spartan', 'John Diggle, also known by his code name Spartan, is a fictional character in The CW\'s Arrowverse franchise, first introduced in the 2012 pilot episode of the television series Arrow. The character was created for the series by Greg Berlanti, Marc Guggenheim, and Andrew Kreisberg. Diggle has been continually portrayed by David Ramsey. In the series, Diggle is introduced as a military veteran and Oliver Queen\'s new bodyguard. Over time his relationship with Oliver evolves and he becomes his best friend and confidante in his crusade as the Green Arrow.\r\n\r\n', 'img/characters/spartan.png', 'img/characters-closeup/spartan.png', 'img/backgrounds/spartan.png', 4),
(18, 'Overwatch', 'Felicity Megan Smoak is the daughter of Noah Kuttler and Donna Smoak, the wife of the late Oliver Queen, the step-mother of William Clayton, and the mother of Mia Smoak. Technologically gifted, especially in the field of computer science, Felicity is a fo', 'img/characters/overwatch.png', 'img/characters-closeup/overwatch.png', 'img/backgrounds/overwatch.png', 4),
(19, 'Roy Harper', 'Roy William Harper, Jr. is a street-savvy young man from the Glades. He is the son of the late Roy Harper, Sr. and Mrs. Harper, the fiancé of Thea Queen, and the former sidekick/good friend of Oliver Queen. Roy was injected with the Mirakuru, becoming a h', 'img/characters/royharper.png', 'img/characters-closeup/royharper.png', 'img/backgrounds/royharper.png', 4),
(20, 'Dark Archer', 'Malcolm Merlyn  was the husband of the late Rebecca Merlyn and the father of Tommy Merlyn, Thea Queen, and Saracon. He was a formerly wealthy and successful businessman, the founder and CEO of Merlyn Global Group, and a prominent figure ', 'img/characters/darkarcher.png', 'img/characters-closeup/darkarcher.png', 'img/backgrounds/darkarcher.png', 4),
(21, 'Rachel Roth', 'Rachel Roth is a powerful empath who can sense emotions and control her \"soul-self\", which can fight physically, as well as act as Rachel\'s eyes and ears away from her physical body; more recently, she\'s been shown as being adept with various types of mag', 'img/characters/rachelroth.png', 'img/characters-closeup/rachelroth.png', 'img/backgrounds/rachelroth.png', 5),
(22, 'Starfire', 'Starfire (Princess Koriand\'r) is a fictional superhero appearing in books published by DC Comics. She debuted in a preview story inserted within DC Comics Presents #26 (October 1980) and was created by Marv Wolfman and George Pérez. The name \"Starfire\" fi', 'img/characters/starfire.png', 'img/characters-closeup/starfire.png', 'img/backgrounds/starfire.png', 5),
(23, 'Nightwing', 'Richard John Grayson is a fictional superhero appearing in American comic books published by DC Comics, commonly in association with Batman. Created by writer Bill Finger and artist Bob Kane, he first appeared in Detective Comics #38 in April 1940 as the ', 'img/characters/nightwing.png', 'img/characters-closeup/nightwing.png', 'img/backgrounds/nightwing.png', 5),
(24, 'Garfield Logan', 'Garfield \"Gar\" Logan is a fictional superhero. he is a shapeshifter who possesses the ability to metamorph into any animal he chooses and is usually depicted as a member of the Doom Patrol and the Teen Titans.', 'img/characters/garfield.png', 'img/characters-closeup/garfield.png', 'img/backgrounds/garfield.png', 5),
(25, 'Robin', 'Jason Peter Todd is a fictional character appearing in American comic books published by DC Comics, commonly in association with Batman. He is the second character to assume the role of Robin and the second character to take up the Red Hood alias. First a', 'img/characters/robin.png', 'img/characters-closeup/robin.png', 'img/backgrounds/robin.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `propertyId` int(5) NOT NULL,
  `propertyText` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`propertyId`, `propertyText`) VALUES
(1, 'Is a born leader'),
(2, 'Is an assassin'),
(3, 'Has a sister'),
(4, 'Is an billionaire'),
(5, 'Can shrink'),
(6, 'Can fly'),
(7, 'Can shoot flames'),
(8, 'Can fly'),
(9, 'Two people can form into one'),
(10, 'Is a thief'),
(11, 'Can turn into steel'),
(12, 'Son of a millionaire'),
(13, ''),
(14, 'Can reflect bullets'),
(15, 'Can shoot lasers'),
(16, 'Can shape shift'),
(17, 'Can mind-control'),
(18, 'Is from mars'),
(19, 'Is a billionaire'),
(20, 'Owner of LexCorp'),
(21, 'Friends with Supergirl'),
(22, 'Is from the future'),
(23, 'Is an AI'),
(24, 'Is super smart'),
(25, 'Can shoot beams'),
(26, 'Can predict events'),
(27, 'Has astral projections'),
(28, 'Can run really fast'),
(29, 'Can time travel'),
(30, 'Can go to the speed force'),
(31, 'Can shoot ice'),
(32, 'Can turn anything into ice'),
(33, 'Can reduce body temperatures'),
(34, 'Can recall flashbacks'),
(35, 'Can make portals'),
(36, 'Can shoot arrows'),
(37, 'Is a millionaire'),
(38, 'Got stranded on a island'),
(39, 'Served in the military'),
(40, 'Loves firearms'),
(41, 'Master hacker'),
(42, 'CEO of Smoak Technologies'),
(43, 'Loyal to Green Arrow'),
(44, 'Is a thief'),
(45, 'Green Arrow\'s sidekick'),
(46, 'Enemy of Green Arrow'),
(47, 'Father of Green Arrow\'s ex '),
(48, 'Is a demon'),
(49, 'Has empathy'),
(50, 'Can steal emotions'),
(51, 'Can absorb energy'),
(52, 'Can shoot star bolts'),
(53, 'Is an acrobat'),
(54, 'Is super strong'),
(55, 'Has a lot of stamina'),
(56, 'Can turn into any animal'),
(57, 'Can turn into multiple animals at once'),
(58, 'Can keep his human intelligence'),
(59, 'Is a partner of Batman'),
(60, 'Leader of the Titans'),
(61, 'Is a billionaire');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(10) NOT NULL,
  `ratingReview` text NOT NULL,
  `rating` int(2) NOT NULL,
  `ratingDate` datetime NOT NULL,
  `characterId` int(5) NOT NULL,
  `userId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewId` int(5) NOT NULL,
  `characterId` int(5) NOT NULL,
  `reviewText` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teamId` int(3) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `teamImage` varchar(255) NOT NULL,
  `teamDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teamId`, `teamName`, `teamImage`, `teamDescription`) VALUES
(1, 'Legends of Tomorrow', 'img/teams/legendsoftomorrow.png', 'Rip Hunter travels back in time to the present day where he brings together a team of heroes and villains in an attempt to prevent Vandal Savage from destroying the world and time itself.'),
(2, 'Supergirl', 'img/teams/supergirl.png', 'Kara Zor-El, who was sent to Earth from Krypton as a 13-year-old and taken in by the Danvers family, must learn to embrace her powers after previously hiding them. After an unexpected disaster, Kara is forced to reveal her powers, and becomes National City\'s protector.'),
(3, 'The Flash', 'img/teams/flash.png', 'Crime-scene investigator Barry Allen awakens from a nine-month coma after being struck by lightning due to the S.T.A.R. Labs\' particle accelerator explosion and finds himself with superhuman speed. Barry vows to use his new powers to protect Central City as the Flash, a masked superhero, while he pursues his mother\'s murderer, the Reverse-Flash.'),
(4, 'Arrow', 'img/teams/arrow.png', 'Billionaire playboy Oliver Queen returns home after being stranded on a deserted island for five years. Upon his return to Starling City, Oliver rekindles his relationships and spends his nights hunting down wealthy criminals as a hooded vigilante.'),
(5, 'Teen Titans', 'img/teams/Titans.png', 'Titans is an American web television series based on the DC Comics team Teen Titans, the series depicts a group of young heroes who join forces in their fight against evil. Featured as members of the eponymous Titans are Dick Grayson, Kory Anders, Rachel Roth, Gar Logan , Jason Todd, Donna Troy, Dawn Granger, Hank Hall, Rose Wilson and Conner.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(10) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userPass`, `firstName`, `lastName`) VALUES
(41, 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Devan', 'a'),
(42, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(43, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(44, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(45, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(46, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(47, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(48, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(49, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(50, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characterproperties`
--
ALTER TABLE `characterproperties`
  ADD PRIMARY KEY (`characterPropertyId`),
  ADD KEY `propertyId` (`propertyId`),
  ADD KEY `characterId2` (`characterId`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`characterId`),
  ADD KEY `teamId` (`teamId`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`propertyId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`),
  ADD KEY `characterId` (`characterId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `characterId` (`characterId`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characterproperties`
--
ALTER TABLE `characterproperties`
  MODIFY `characterPropertyId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11143;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `characterId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `propertyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `characterproperties`
--
ALTER TABLE `characterproperties`
  ADD CONSTRAINT `characterId2` FOREIGN KEY (`characterId`) REFERENCES `characters` (`characterId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `propertyId` FOREIGN KEY (`propertyId`) REFERENCES `properties` (`propertyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `teamId` FOREIGN KEY (`teamId`) REFERENCES `teams` (`teamId`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `characterId` FOREIGN KEY (`characterId`) REFERENCES `characters` (`characterId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`characterId`) REFERENCES `characters` (`characterId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
