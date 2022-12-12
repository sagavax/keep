-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Hostiteľ: localhost
-- Vygenerované: Po 23.Sep 2013, 13:42
-- Verzia serveru: 5.5.24-log
-- Verzia PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `mydiary`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `diary`
--

CREATE TABLE IF NOT EXISTS `diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diary_text` text NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=458 ;

--
-- Sťahujem dáta pre tabuľku `diary`
--

INSERT INTO `diary` (`id`, `diary_text`, `date_updated`) VALUES
(1, 'xXZXxzczxczxczxczxczxczxczx', '2013-04-09 08:17:17'),
(2, 'slfjsfjs dlfjsldfjlsdfjlsdj flsdj lfjsdlfjlsdkfjlskdfjklsdf', '2013-04-09 08:17:28'),
(3, 'Czczxczxczxczxczxczxczxczxczxczxczxczxczxczxczx', '2013-04-09 08:45:17'),
(4, 'afsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsd', '2013-04-09 09:07:08'),
(5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum ', '2013-04-09 09:18:22'),
(6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum', '2013-04-09 11:12:49'),
(7, 'slovenskoooooooooooooooooooooooooooooooooooooo', '2013-04-09 12:13:02'),
(8, 'som skeptiiiiiiiiiiiiiiiiiiik', '2013-04-09 13:15:05'),
(9, 'si enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in ', '2013-04-09 13:29:14'),
(10, 'prave som sa vratil z ranajok a napil som sa vody', '2013-04-10 06:10:59'),
(11, 'mal som telefonat', '2013-04-10 07:08:10'),
(12, 'je vcelku nuda, ale keby na to prislo tam mam roboty dost', '2013-04-10 09:13:50'),
(13, 'vecerna kava za mnou a teraz bude vecera', '2013-04-10 15:57:31'),
(14, 'dnesne vstavanie  bolo dost narocne. bol som dlho hore ', '2013-04-11 06:24:56'),
(15, 'kecam s kolegom', '2013-04-10 16:19:22'),
(16, 'hram sa', '2013-04-10 16:34:13'),
(17, 'diskutujem na fore', '2013-04-10 17:50:06'),
(18, 'stale diskutujeme na fore', '2013-04-10 19:28:35'),
(19, 'trapim sa stale s kalendarom', '2013-04-10 20:09:23'),
(20, 'preprabam dashboard ale nedari sa mi vycentrovat menu', '2013-04-10 20:28:27'),
(21, 'zeby som uz dnes koncil?', '2013-04-10 21:13:05'),
(22, 'ranne vstavanie bolo dost tazke', '2013-04-11 06:26:02'),
(23, 'idem na obed', '2013-04-11 10:06:24'),
(24, 'prisiel som z obeda', '2013-04-11 11:01:13'),
(25, 'diskutujem na fore', '2013-04-11 12:12:54'),
(26, 'no to si rozbis srandu ja som hladny', '2013-04-11 12:34:00'),
(27, 'dostal som pozvanku na pohovor ', '2013-04-11 15:27:18'),
(28, 'cakam na spustenie servra aby som si mohol zahrat startrek online', '2013-04-11 15:56:25'),
(29, 'ale najskor si pozriem film', '2013-04-11 15:57:24'),
(30, 'hram Star Trek', '2013-04-11 20:34:06'),
(31, 'premyslam, ze pojdem spat', '2013-04-11 21:19:35'),
(32, 'co sa to deje s mydiary?', '2013-04-11 22:25:35'),
(33, 'a konecna spaaaaaanok vypiname', '2013-04-11 23:20:42'),
(34, 'dalsi den zacina', '2013-04-12 06:17:46'),
(35, 'ze by este jedna kava?', '2013-04-12 07:55:24'),
(36, 'obeeeeeeeeeeed', '2013-04-12 10:13:26'),
(37, 'a uz som z obeda prec', '2013-04-12 10:57:35'),
(38, 'takze prvy prvy problem je v aplikacii vyrieseny teraz ten druhy ', '2013-04-12 13:41:11'),
(39, 'pracovna doba uz skoncila ale kedze ma lame tak budem pokracovat na projekte. Uvazujem, ze si spravim caj', '2013-04-12 15:21:16'),
(40, 'tazke viem si vypisat v ktorych hodinach mam zaznamy', '2013-04-12 15:28:52'),
(41, 'zacal som si varit caj a medzi tym sdom dostal napad, ze to bude fungovat na AJAXi.', '2013-04-12 15:32:19'),
(42, 'napad - budem ukladat cas do samostantneho stlpca aby som to vedel sortovat na urovni databazy', '2013-04-12 15:34:59'),
(43, 'teraz ten caj', '2013-04-12 15:35:20'),
(44, 'caj vypity ale namiesto kodovania diskutujem na fore', '2013-04-12 16:02:18'),
(45, 'zmenil som cinnost a vramci oddychu montujem zvysok dvierok', '2013-04-12 16:26:29'),
(46, 'no ta moj "oddych" dopadol tak, som utahany ako pes', '2013-04-12 17:17:24'),
(47, 'stale som dost unaveny, asi to dnes s programovanim zabalim.', '2013-04-12 18:14:06'),
(48, 'star trek online ma evidentne problemy sam so sebou', '2013-04-12 18:26:09'),
(49, 'uz je to lespie', '2013-04-12 19:57:10'),
(50, 'dohral som a idem spatq', '2013-04-12 22:19:06'),
(51, 'tazke novy den zacina, este kavu a pracovat', '2013-04-13 07:26:52'),
(52, 'snazim sa nainstalova aplikaciu ale nejde to', '2013-04-13 08:48:57'),
(53, 'premyslam o obede', '2013-04-13 10:25:25'),
(54, 'a vratil som sa z obeda, trvalo to trocha dlhsie ale nevadi', '2013-04-13 14:40:27'),
(55, 'trapim sa, trapim sa', '2013-04-13 15:05:07'),
(56, 'ako sortovat spravne datum?', '2013-04-13 16:07:39'),
(57, 'pomaly ale iste som pokrocil. Ale uz mam hlad', '2013-04-13 17:06:01'),
(58, 'som najedeny, pijem cas a pozeram Iron Mana kvoli inspiracii', '2013-04-13 17:32:36'),
(59, 'skoda ze nie som genius lebo by mi to usetrilo cas na omyly', '2013-04-13 17:36:04'),
(60, 'po chvilke oddychu idem opet na to', '2013-04-13 18:15:34'),
(61, 'mam toho za dnesny den dost', '2013-04-13 20:45:11'),
(62, 'no tak este spat nejdem dam si Star Trek online', '2013-04-13 21:01:11'),
(63, 'dnes je velmi pekny den, napustam si vanu. ', '2013-04-14 08:31:20'),
(64, 'a som z vane prec', '2013-04-14 11:14:09'),
(65, 'dnes nikam nejdem  tak som si nechal objednat jedlo', '2013-04-14 13:44:15'),
(66, 'idem uz spat', '2013-04-15 00:11:27'),
(67, 'novy pracovny tyzden zacal', '2013-04-15 08:15:38'),
(68, 'co s nacatym dnom', '2013-04-15 10:00:54'),
(69, 'idem sa trocha inspirovat peknymi formularmi', '2013-04-15 10:27:01'),
(70, 'no nieco som nasiel, idem sa trocha pohrat s tym co mam', '2013-04-15 10:44:02'),
(71, 'upravujem trocha kod v formularoch, aby to malo nejaku formu', '2013-04-15 11:02:41'),
(72, 'kod je upraveny (aspon trocha) a aj som stihol obed', '2013-04-15 12:07:00'),
(73, 'mydiary ma chybu. ale to sa da vyriesit', '2013-04-15 12:09:36'),
(74, 'poobedna kava je za mnou', '2013-04-15 13:36:54'),
(75, 'pomaham kolegovi s SQLkom', '2013-04-15 13:37:03'),
(76, 'no podlhom hladani som nasiel ako vyextrahovat data co potrebujem ohladne SQLka. Ale este zostava napisat algoritmus ze ked najde ten datum tak aby to zobrzilo', '2013-04-15 15:31:56'),
(77, 'mame zaujimavy meeting', '2013-04-16 10:17:44'),
(78, 'Peto dohovoril na meeting ide hovorit Lubica', '2013-04-16 10:25:54'),
(79, 'Novela o zakonika prace', '2013-04-16 10:27:11'),
(80, 'lokalne prave je vzdy nadradene globalneym pravidlam', '2013-04-16 10:29:51'),
(81, 'hovorime o monitorovany posty', '2013-04-16 10:32:24'),
(82, 'vypovedna doba je minimalne 1 mesiac', '2013-04-16 10:34:01'),
(83, 'maximalne 2 mesiace', '2013-04-16 10:34:36'),
(84, 'v pripade inej zarobkovej cinnosti v pripade zhody s podnikanim firym treba povolenie od zemstnavatela.', '2013-04-16 10:43:37'),
(85, 'Dovolenka - v pripade nevycerpania - a ak ju nevycerpam do 6.2013 a zamestnavatel neumozni tak nemusim ziadat ale rovno mozem ist a len oznamim', '2013-04-16 10:50:06'),
(86, 'Luvata - documentation', '2013-04-16 13:25:07'),
(87, 'preco musia niktori kecat len aby kecali', '2013-04-16 13:27:42'),
(88, 'nejak nemam energiu na nic', '2013-04-16 14:48:40'),
(89, 'krizu rozhanam dalsim kofeinom', '2013-04-16 15:10:03'),
(90, 'nieeeeeeeee ja sa asi picnem, budem musiet robit', '2013-04-17 11:27:44'),
(91, 'nestastne DR, musim predsa len restorovat tie debilne DBs', '2013-04-17 13:24:06'),
(92, 'ja sapicnem trva to trocha dlhsie :)', '2013-04-17 14:01:29'),
(93, 'mam pocit,ze backupisti ten DP snad programuju odznova', '2013-04-17 14:35:45'),
(94, 'takze som poziadal o zmenu regstratora', '2013-04-17 15:49:31'),
(95, 'milion formularov ufff', '2013-04-17 15:49:42'),
(96, 'uzivatelske DBs sa restoruju, dufam, ze to nebude dlho trvatq', '2013-04-17 15:56:55'),
(97, 'kedze to bolo zhruba 3 TB dat tak som isiel domov, ale najprv som sa zastavil  kupit topanky, ostrihat a potom az domov', '2013-04-17 21:13:04'),
(98, 'teraz som opat doma a pozeram Socialna Siet', '2013-04-17 21:13:21'),
(99, 'dalsi   napas RSS reader', '2013-04-17 21:13:44'),
(100, 'ok necham toho, idem hrat STO, aspon nachvilu', '2013-04-17 22:35:18'),
(101, 'a idem spat', '2013-04-18 00:49:54'),
(102, 'a je tu dalsie rano', '2013-04-18 07:58:15'),
(103, 'a opat je tu dalsie pekne rano, zacal som prat, mozno uz do obeda budem cisty sveter', '2013-04-18 08:32:02'),
(104, 'idem sa naranajkokvat, a pripojim sa do DR environmenut', '2013-04-18 08:32:28'),
(105, 'takze vcerajsi restore este nedobehol, nevadi', '2013-04-18 09:41:04'),
(106, 'prva varka prania sa susi, druha bude pomaly koncit. pripravim tretiu', '2013-04-18 10:14:11'),
(107, 'idem si napustit vanu', '2013-04-18 10:38:38'),
(108, 'takze som sa vratil z obeda a hned tisic emailov ma caka', '2013-04-18 13:29:56'),
(109, 'no tomuto sa hovori DRko - kopec vystresovanych ludi', '2013-04-18 14:40:29'),
(110, 'a kedze su problemy s networkom tak je restore dost ohrozeny', '2013-04-18 15:00:26'),
(111, 'no medzi tym som dalsiu changu spravil, pradlo pomaly schne,', '2013-04-18 15:36:21'),
(112, 'mam pocit ze sa to este velmi dlho dnes povlecie', '2013-04-18 15:45:43'),
(113, 'DR dnes pre mna skoncil, som utahany', '2013-04-18 18:56:44'),
(114, 'skusam neustale ten algoritmus a stale to nejde', '2013-04-18 21:14:18'),
(115, 'snazim sa spustit STO ale je to zaseknute nejako', '2013-04-18 21:45:14'),
(116, 'skusamresartovat komp', '2013-04-18 21:54:26'),
(117, 'uz funguje STO', '2013-04-18 22:11:47'),
(118, 'zeby uz spat?', '2013-04-19 00:39:25'),
(119, 'ano spat', '2013-04-19 01:19:40'),
(120, 'no tak som si dal 2 kavy a pomaly pojdem na ten obed', '2013-04-19 12:14:13'),
(121, 'uz som aj z obeda naspat, dnes tych zaznamov bude asi poriedko', '2013-04-19 13:07:45'),
(122, 'na zachod alebo nie, to je o tazka', '2013-04-19 13:33:09'),
(123, 'akosi uz dnes nevladzem', '2013-04-19 14:28:18'),
(124, 'otravuju ma s hovadinami', '2013-04-19 15:30:42'),
(125, 'este 15 minut a end of week', '2013-04-19 15:44:35'),
(126, 'a opat ideme na STO...', '2013-04-19 20:07:22'),
(127, 'treba trochu pauzu od STO', '2013-04-19 21:03:07'),
(128, 'pozeram opet film', '2013-04-19 23:05:32'),
(129, 'a je tu dalsie pekne rano...snad pekne', '2013-04-20 08:34:56'),
(130, 'spadol som do plazmy - hehe ', '2013-04-20 10:49:06'),
(131, 'tak uz som respawnuty ale som za stenou ', '2013-04-20 10:54:53'),
(132, 'kedze sa vsetsia vykaslali na tu misiu tak som to vzdal aj ja :)', '2013-04-20 11:20:58'),
(133, 'som na obede u danovaka', '2013-04-20 13:36:18'),
(134, 'objednany obed - rebra', '2013-04-20 13:46:16'),
(135, 'no ako to len spravit', '2013-04-20 13:57:35'),
(136, 'obed mam zabaleny, kava vypita, uz len zaplatiti', '2013-04-20 14:39:12'),
(137, 'no tak som sa pustil to upgradovania softwaru na notebooku a kompe', '2013-04-20 19:46:58'),
(138, 'mam preinstalovany Wampserver na notebooku', '2013-04-20 19:49:20'),
(139, 'ale takmer ma zamrazilo, ze som prisiel o vsetky data. Nastastie nie', '2013-04-20 19:52:22'),
(140, 'a uz je tu rano', '2013-04-21 08:23:15'),
(141, 'vratil som sa z obeda', '2013-04-21 15:00:32'),
(142, 'a idem uz hadam spat', '2013-04-22 01:06:55'),
(143, 'som v praci, kolega ma prijemne prekvapil, ze mi dal darcek ale boli ma priserne chrbat', '2013-04-22 08:48:50'),
(144, 'chrbat uz neboli tak trochu koduje, respektive iba upravujem design. Poobede zaznem pracovat na ESLku', '2013-04-22 11:24:52'),
(145, 'obed?', '2013-04-22 11:40:33'),
(146, 'poobede pokracoujem na koedovani', '2013-04-22 13:29:22'),
(147, 'kodovanie sa dari, vela chyb je poopravovanych', '2013-04-22 14:14:56'),
(148, 'dalsi pekny den pred nami, len keby tak chrbat nebolel', '2013-04-23 09:15:27'),
(149, 'za pol hodinu by som mal mat Otava/Luvata meeting ', '2013-04-23 09:30:02'),
(150, 'miting za 3 MINUTY', '2013-04-23 09:57:53'),
(151, 'dalsi miting za pol hodinu', '2013-04-23 10:56:34'),
(152, 'miting s milom sa este nekonal tak som isiel na obed a cakam kyn sa opat ozve', '2013-04-23 12:46:09'),
(153, 'miting s Milom absolvovany, HO navyse povoleny', '2013-04-23 14:14:15'),
(154, 'a som opat doma. Nastava obdobie ked mozem is robit co potrebujem. ale ako sa poznam take lahke to zaze nebude :)q', '2013-04-23 18:23:08'),
(155, 'dalsi pekny den pred nami, len keby tak chrbat nebolel', '2013-04-24 11:13:50'),
(156, 'horuca kupel trochu zabrala a idem na o bed', '2013-04-24 12:15:44'),
(157, 'po obede ma caka dalsi restore', '2013-04-24 12:15:56'),
(158, 'tak snad netreba restore ... podarilo sa mi fixnut to nestastnu databazu', '2013-04-24 14:56:00'),
(159, 'dnes v office je pomerne prazdno - co sa deje?', '2013-04-30 08:35:29'),
(160, 'a uz prichadzaju', '2013-04-30 08:51:04'),
(161, 'CATW dotrackovana', '2013-04-30 09:26:05'),
(162, 'prisiel poitivny feedback z REXAM a AST komunity za DR10', '2013-04-30 10:18:06'),
(163, 'spatne som si precital ake hovadiny som si popisal do dennika, niekto nezavisly by sa chytil za hlavu', '2013-04-30 13:12:57'),
(164, 'mal som ist na meeting ale kaslem na to, nemam co povedat', '2013-04-30 13:14:25'),
(165, 'kopec hodin, co robit?', '2013-04-30 14:14:16'),
(166, 'skusim sa potrapit s tym kalendarom', '2013-04-30 14:14:43'),
(167, 'nejako sa mi nechce nic robit, este ze za chvilku je koniec', '2013-04-30 15:37:30'),
(168, 'zaujimava diskusia na fore :)q', '2013-04-30 22:41:47'),
(169, 'dnes je vcelku pekny den, ale je pomerne chladno', '2013-05-01 11:26:04'),
(170, 'tak som sa konecne rozhybal a isiel na obed. Objednal som si ako tradicne kridelka. Su predsa najlepsie :)q', '2013-05-01 14:24:52'),
(171, 'ako sa mi nechce vstavt, kurnik ;)', '2013-05-02 08:16:36'),
(172, 'takze dnes som sa pekne porozpraval s Vladou, dostal som od nej fotku - je to naozaj kocka!!!!`', '2013-05-02 14:31:51'),
(173, 'nesmiem jej zabudnut zavolat pred stvrtou. ', '2013-05-02 14:32:22'),
(174, 'takze Vlada nema dnes cas tak dnes z randde nic nebude.', '2013-05-02 16:09:42'),
(175, 'chce sa mi spat. Kavu?', '2013-05-02 18:28:37'),
(176, 'takze v ramci my diary je implementovane presne co som chcel :)', '2013-05-02 18:58:47'),
(177, 'trocha som kalendar farebne vylepsil ale uricite budem na tom pracovat ', '2013-05-02 20:33:36'),
(178, 'dalsie pekne rano', '2013-05-06 09:34:29'),
(179, 'vikendovy kalendar znacne pokrocil, zobrazuje aktulany tyzden a este aby zobrazoval dni kde je nejaky zaznam', '2013-05-06 12:58:21'),
(180, 'dalsi hnusny den pred nami', '2013-05-07 08:33:12'),
(181, 'este hodinu a domov', '2013-05-07 14:58:10'),
(182, 'este 10 minut a mozeme ist na sviatky', '2013-05-07 15:50:38'),
(183, 'veru tazke vstavanie dnes', '2013-05-09 06:16:04'),
(184, 'som spat z kostola, organista neprisiel tak to sme skoncili velmi rychlo :)', '2013-05-09 07:26:03'),
(185, 'dnes som mal uz dve kavy', '2013-05-09 09:45:41'),
(186, 'no zadal som pracu CCLovi , mozem zahajit pripravu na obed', '2013-05-09 11:37:01'),
(187, 'to som si zase dal - kopirovat tolko mrnavych suborov...', '2013-05-09 11:47:28'),
(188, 'dnesny den je velmi pekny', '2013-05-10 13:33:35'),
(189, 'nechcelo sa mi vobec stavat ani pri predstave velkeho mnzostva kofeinu', '2013-05-11 09:11:02'),
(190, 'novy projekt modlitba.sk zacina', '2013-05-11 09:54:53'),
(191, 'som na obede', '2013-05-12 13:33:19'),
(192, 'idem si spravit kavu', '2013-05-12 16:10:47'),
(193, 'dalsie pekne ale chladne rano', '2013-05-13 08:35:15'),
(194, 'kava dopita, mozeme zacat nieco robit', '2013-05-13 09:28:15'),
(195, 'zacal som robit na modltiba.sk', '2013-05-13 11:05:02'),
(196, 'zaujimava diskusia na fore :)', '2013-05-13 13:33:05'),
(197, 'dam si trocha pauzu ...', '2013-05-13 14:56:20'),
(198, 'zmenil som trochu design mydiary, vyzere to zatial cool', '2013-05-13 14:56:45'),
(199, 'mam po ranajkach, posta skontrolovana, mitingy su az poobede', '2013-05-14 08:00:17'),
(200, 'idem pokracovat v modlitba.sk', '2013-05-14 08:16:13'),
(201, 'dal som si dobru kavu, mozeme ist pracovat', '2013-05-14 09:12:58'),
(202, 'funguje autocomplete? Vyzera, ze ano', '2013-05-14 09:15:49'),
(203, 'budujem zakladnu kostru noveho portalu', '2013-05-14 09:45:24'),
(204, 'Markitup alebo TyniMCE? to je pekna dilema', '2013-05-14 10:01:20'),
(205, 'vratil som sa z obeda, ale stale nemam nervy pozerat hokej. idem radsej kodovat', '2013-05-14 12:11:18'),
(206, 'nasi vyhravaju uz 3:0 to su snad erupcie na Slnku', '2013-05-14 12:25:21'),
(207, '3:1 :-(', '2013-05-14 12:30:31'),
(208, 'nechce sa mi ten hokej ani pozerat ale sledujem reakcie kolegov, radsej sa venujem uzitocnym veciam', '2013-05-14 13:07:38'),
(209, 'hokej skoncil, vyhrali sme 4:1, idem si po kavu', '2013-05-14 13:52:02'),
(210, 'nechce mi fungovat markitup, neviem kde robim chybu ale evidentne ju robim', '2013-05-14 14:42:51'),
(211, 'konecne mi to funguje, samozrejme chyba medzi stolickou a pocitacom,', '2013-05-14 15:21:56'),
(212, 'pomaly uz koncim', '2013-05-14 15:51:42'),
(213, 'prisiel som domov a dal som prat svetre', '2013-05-14 17:13:09'),
(214, 'svetre su oprane, navecerany idem si trocha oddychnut pri hrach', '2013-05-14 19:49:10'),
(215, 'zacina ma nejako premahat unava', '2013-05-14 20:39:03'),
(216, 'idem si namontovat svoju uzasnu novu BR vypalovcku :)', '2013-05-14 20:43:20'),
(217, 'cakam kym sa nainstaluju aktualizacie, trva to nekonecne dlho', '2013-05-14 21:30:40'),
(218, 'dalsie pekne rano', '2013-05-15 08:19:14'),
(219, 'dostal som napad a to vytvorit nieco ako Google Keep', '2013-05-15 11:53:38'),
(298, 'konecne domov', '2013-05-15 16:06:13'),
(299, 'stale sa nemozem prinutiti k praci ', '2013-05-15 22:06:35'),
(300, 'kriza chce sa mi spat', '2013-05-15 23:10:11'),
(301, 'novy projekt - simple forum', '2013-05-15 23:11:12'),
(302, 'idem uz spat', '2013-05-16 00:24:08'),
(303, 'dnes bolo opat tazke vstavanie', '2013-05-16 09:38:18'),
(304, 'kava, rychle ranajky a sup sup do prace', '2013-05-16 09:38:33'),
(305, 'uvidim aky bude dnes den, jedenimy kto ma otravuje je Theodora', '2013-05-17 10:25:15'),
(306, 'premyslam, ze pri mydiary vyhodim pri zaznamoch datum a bude tam iba cas', '2013-05-17 10:26:00'),
(307, 'vylepsil som v keepe formatovanie', '2013-05-17 11:23:49'),
(308, 'napad - zrusit kalendar na boku - a vsetky zaznamy zobrazovat v jednom feede - rozlisovat iba podla datumu', '2013-05-17 11:24:45'),
(309, 'vyhladavanie', '2013-05-17 11:24:50'),
(310, 'Keep - vymazavanie', '2013-05-17 11:29:30'),
(311, 'takze theodora nakoniec nic nechcela - vdaka ti Boze!', '2013-05-17 16:45:56'),
(312, 'som akosi bez energie', '2013-05-17 18:47:09'),
(313, 'pozeram film', '2013-05-17 19:51:23'),
(314, 'vonku je pekna burka', '2013-05-17 21:33:36'),
(315, 'stahol som Iron Mana 3 akle zase je to iba natocene z kina', '2013-05-17 21:34:05'),
(316, 'Plan na vikend - portal, kino, knizka', '2013-05-17 21:34:35'),
(317, 'v planoch som samozrejme zabudol hokej :)', '2013-05-17 21:34:58'),
(318, 'idem pomaly spat', '2013-05-17 23:45:15'),
(319, 'dnes rano je dost chladno, email precitane, mozem sa pustit do kodovania', '2013-05-20 08:32:43'),
(320, 'skusil som zmeni vzhlad na my diary, uvidim ci si na to zvyknem :)', '2013-05-20 09:22:18'),
(321, 'novy zakaznik ? Zda sa,ze ano', '2013-05-20 10:04:36'),
(322, 'dalsia zmena v designe mydiary...', '2013-05-20 10:43:40'),
(323, 'a este jedna zmena...', '2013-05-20 10:53:20'),
(324, 'rozhodol som sa,ze zakomponujem do keepu aj mydiary RSS, ', '2013-05-20 11:19:05'),
(325, 'feed nefunguje. teda asi nie', '2013-05-20 12:59:12'),
(326, 'vyskusam teraz', '2013-05-20 13:02:26'),
(327, 'a uz to funguje... :)', '2013-05-20 13:19:12'),
(328, 'skusam naistalovat MongoDB', '2013-05-20 13:50:25'),
(329, 'nainstalovane a uz funguje, teraz uz len naimplementovat do PHPcka ako extensnu', '2013-05-20 14:18:19'),
(330, 'mongo ako PHP exensna nainstalovana', '2013-05-20 14:42:43'),
(331, 'uloha dna - naimplementovat feeds pre EIS - minimalne pre blog/note cast', '2013-05-20 14:45:22'),
(332, 'a mozeme zacat pracovat ', '2013-05-21 09:16:03'),
(333, 'este rychly call s mamou..', '2013-05-21 09:38:42'),
(334, 'zachvilu mam meeting, ale este sa pokusam co to spravit', '2013-05-21 10:26:52'),
(335, 'takze je po mitingu', '2013-05-21 11:29:24'),
(336, 'prisiel som z obeda, Dave este neodpovedal', '2013-05-21 12:30:58'),
(337, 'Takze Dave odpovedal, s obsahom som spokojny...', '2013-05-21 15:52:44'),
(338, 'vyriesil som zatuhnutie Chromu, kore som mal rano tak ,ze som odinstaloval RSS feedy z Chromu. A je pokoj', '2013-05-21 15:58:49'),
(339, 'takze zaznam v mydiary treba spravit este spodny padding a bude to dobre', '2013-05-21 15:59:38'),
(340, 'pripravit "prezentaciu" na zajtra.', '2013-05-21 15:59:51'),
(341, 'na policii som nevybavil zhola nic ale aspon si budem moct is t pre postu a hadam do bankyu', '2013-05-22 10:50:02'),
(342, 'zachvilu je obed...', '2013-05-22 11:29:09'),
(343, 'na obed boli francuzske zemiaky', '2013-05-22 12:08:01'),
(344, 'chce to kavu', '2013-05-22 12:35:42'),
(345, 'nechce sa mi vobec, ale bobec nic robit', '2013-05-22 14:49:15'),
(346, 'ani dnes vecer nebudem programovat ', '2013-05-22 21:05:43'),
(347, 'v mojom druhom designe som trocha natiahol stredny stlpec aby to tak nebolo hnusne', '2013-05-22 21:17:39'),
(348, 'chce sa mi strasne spatq', '2013-05-22 23:55:25'),
(349, 'dobru noc', '2013-05-23 00:42:25'),
(350, 'mame tu opat nove rano, kava za mnou a snad sa nejako pomaly prepracujeme k obedu', '2013-05-23 09:01:09'),
(351, 'som po dobrej kupeli', '2013-05-23 11:26:14'),
(352, 'takze mame to dalsi den, poslal som SMSku Katke, ktora chvalabohu zareagovala, kava vypita. Mozem zacas robit', '2013-05-24 09:18:43'),
(353, 'idem pomaly spat', '2013-05-24 23:33:55'),
(354, 'mame pekne rano', '2013-05-25 10:38:21'),
(355, 'novy design vyzera celkom schopne', '2013-05-25 11:07:10'),
(356, 'o pol jedenastej si napustim vanu', '2013-05-25 11:07:25'),
(357, 'zaregistroval som sa na tymblr kvoli inspiraciam na design', '2013-05-25 11:08:07'),
(358, 'idem si napustit vanu', '2013-05-25 11:30:55'),
(359, 'vana sa pomaly napusta', '2013-05-25 11:42:47'),
(360, 'som von z vane, celkom osviezeny :)', '2013-05-25 12:21:23'),
(361, 'prisiel som z obeda pekne utahany, bolia ma nohy a potrebujem kofein. mame som kupil knizky, snad bude s nimi spokojna', '2013-05-25 15:12:39'),
(362, 'konecne oddychnuty, nacerpal som nejaku inspiraciu ohladne HTML5', '2013-05-25 16:41:53'),
(363, 'idem sa pustit do hrania', '2013-05-25 16:42:42'),
(364, 'popri hrani budem premyslat nad informacnym systemom', '2013-05-25 16:43:02'),
(365, 'padol server na STO tak sa idem najest a idem pozriet dalsie linky ohladne HTML5', '2013-05-25 19:26:12'),
(366, 'snad mozem konecne pokracovat hre, server vyzera, ze je up', '2013-05-25 20:22:46'),
(367, 'xZXzXZXKZ XJZ XgzjhCGzjhxcg jzxgc jzxgcjzxgcjzxg jhczx cbnzx mcb nzxm bcmzxbcxcxbnmcbzxnm cbzxnmbcnzxm bczxmbcnzxm bczxmbczxcnmzx bcnmzx bcnmzxbcnmbzxnmc bzxcbzxnm bcnmzxbcnmzx bcnmzxbcnmzxbcnmzx', '2013-05-25 20:23:44'),
(368, 'popri hre sledujem futbal', '2013-05-25 21:26:21'),
(369, 'vynikajuci futbal', '2013-05-25 22:21:11'),
(370, 'podla ocakavania vyhral Bayern, ja som drzal Dortmundu a idem spat', '2013-05-26 00:07:49'),
(371, 'v noci som nemohol poriadne zaspat asi od tej koly. Ale nastastie som vstal aby som mohol ist rano do kostola', '2013-05-26 10:12:38'),
(372, 'neuveritlne, po dlhej dobe v kine', '2013-05-26 16:39:50'),
(373, 'na forum sa pripojili nejaky fanusikovia Svedkov Jehovovych. To bude zase "zabava"', '2013-05-26 19:55:06'),
(374, 'este pozriem kusok zo STAR WARS a pojdem hadam spatq', '2013-05-26 23:18:24'),
(375, 'pozeram film a videl som tam velmi vela peknych ba dokonca krasnych zien, mnohe krajsie ako samotne hlavne postavy. Dal by som cokolvek mat nejaky vztah aspon s jednou z nich', '2013-05-26 23:42:43'),
(376, 'idem radsej spat', '2013-05-27 00:16:38'),
(377, 'nemozem spatq', '2013-05-27 01:01:11'),
(378, 'som v praci a po ranajkach', '2013-05-27 08:00:46'),
(379, 'prisiel kolega a debatujem o hrach', '2013-05-27 08:09:21'),
(380, 'som doma', '2013-05-27 17:03:24'),
(381, 'zaujimave, zacala nova managerska hra, uvidim, ci sa mi bude darit a bude mat chut hrat', '2013-05-27 17:37:30'),
(382, 'hram STO, presiel som tu otravnu misiu a teraz sa snazim hrat tu misiu kde chcem ziskat tu nestasne Torpedo spread III', '2013-05-27 20:31:57'),
(383, 'mensi problem s loadingom', '2013-05-27 20:32:14'),
(384, 'idem spat', '2013-05-28 00:09:14'),
(385, 'som v praci a po ranajkach', '2013-05-28 07:51:34'),
(386, 'dnes je pekny den, kolega mi zabalil knizky', '2013-05-28 13:48:44'),
(387, 'rano som pricestoval domov, vybavovat pojdem poobede.', '2013-05-29 11:20:39'),
(388, 'trampoty s obcianskym, dufam, zeje to vsetko vyriesene', '2013-05-29 20:24:54'),
(389, 'opat nove rano, mozeme zacat', '2013-05-30 09:20:03'),
(390, 'mam dalsich 15 GB externeho uloziska na https://www.copy.com/browse/copy/', '2013-05-30 12:19:00'),
(391, 'idem konnce pre tie papriere', '2013-05-30 13:25:32'),
(392, 'vikend moze zacat', '2013-05-31 16:18:24'),
(393, 'opravil som keep, uz tam ide zadavat lubovolny test', '2013-05-31 18:43:35'),
(394, 'samozrejme som myslel text', '2013-05-31 18:43:51'),
(395, 'tak a vyhrnem si rukavy :)', '2013-06-03 09:20:05'),
(396, 'zapletka na KPMG pokracuje', '2013-06-03 10:09:12'),
(397, 'je pekne mat velku obrazovku', '2013-06-03 10:36:12'),
(398, 'som po obede, skutocne dobrom obede. chce to este kavu', '2013-06-03 12:43:07'),
(399, 'trapim sa s PORTIGONom', '2013-06-03 15:14:33'),
(400, 'konecne doma', '2013-06-03 17:40:29'),
(401, 'este sa navecerat a mozem sa pustit do druhej sichty', '2013-06-03 17:40:46'),
(402, 'prisiel asom ako prvy do prace a a ni po polhodine to nie je inac :)', '2013-06-04 08:21:53'),
(403, 'idem si pre kavu', '2013-06-04 08:22:04'),
(404, 'kava je na stole, necham ju trocha vychladnut', '2013-06-04 08:26:06'),
(405, 'tusim si musim odskocit', '2013-06-04 09:01:08'),
(406, 'zachvilu je meeting', '2013-06-04 09:11:59'),
(407, 'meeting bol rychly, strucny , informativny - presne ako ma byt spravny miting', '2013-06-04 10:13:19'),
(408, 'zacianm pomaly mysliet na obed. len keby ta hlava prestala boliet', '2013-06-04 11:38:46'),
(409, 'neuveritelne ma lame, nechapem', '2013-06-04 14:19:10'),
(410, 'kriza zazehnana energetakom', '2013-06-04 14:50:12'),
(411, 'neustale sledujem vyvoj povodni', '2013-06-04 15:00:07'),
(412, 'opat nove rano, kvoli povodni som zostal doma', '2013-06-05 07:52:29'),
(413, 'doranajkoval som a idem skotrolovat pracku', '2013-06-05 08:46:27'),
(414, 'druhe pradlo, oprate  napustam vanu', '2013-06-05 11:09:23'),
(415, 'skusam HTML5 geoloacation', '2013-06-05 11:22:12'),
(416, 'okupany', '2013-06-05 12:04:50'),
(417, 'obeeeed', '2013-06-05 12:04:56'),
(418, 'pas vybaveny, len dufam, ze minimalne mesiac nepojdem na ziadnu sluzobku', '2013-06-05 13:17:59'),
(419, 'HTML5 geolokacia funguje', '2013-06-05 14:08:32'),
(420, 'je koniec smeny', '2013-06-05 16:38:38'),
(421, 'pozeram Transformers 1', '2013-06-05 19:04:32'),
(422, 'myslienka - mydiary by mohle detekovat linky alebo klucove slova ...', '2013-06-05 19:05:10'),
(423, 'idem hadam spat', '2013-06-06 00:11:31'),
(424, 'opat je tu pekne rano, ale dnes som spal tvrdsie ako obycajne, co sa to deje so mnou', '2013-06-06 08:49:12'),
(425, 'zaplavova situacia vyzera dost zaujimavo', '2013-06-06 11:41:20'),
(426, 'jupiiii,trening zruseny', '2013-06-06 12:18:16'),
(427, 'poziadal som o dovolenku a cakam na schvalenie', '2013-06-06 14:13:54'),
(428, 'dovolenka este nie je schvalena', '2013-06-06 16:37:56'),
(429, 'co s dovolenkou?', '2013-06-06 22:24:13'),
(430, 'trocha som pokrocil s kniha_modlitieb, ale stale je tak kvantum prace na tom', '2013-06-06 22:24:43'),
(431, 'skusim si pozrier transformerov 2', '2013-06-06 22:33:32'),
(432, 'dnes je velmi pekne rano', '2013-06-07 08:56:01'),
(433, 'a mame tu peknu sobotu', '2013-06-08 09:06:57'),
(434, 'idem na obed', '2013-06-08 12:47:05'),
(435, 'som spat, neplanovane ale bol som aj v kine', '2013-06-08 16:31:54'),
(436, 'dnes v noci som nemoho zaspat,ale rano som vstal v poriadku a bol som aj v kostole. Dnes je opat krasny den', '2013-06-09 11:10:38'),
(437, 'zhruba o jednej pojdem na obed', '2013-06-09 12:29:08'),
(438, 'dnes som sa rozhodol, ze budem cisto Star Trekovsky', '2013-06-09 17:27:20'),
(439, 'novy pracovny tyzden zacal', '2013-06-10 07:57:29'),
(440, 'idem na kavu', '2013-06-10 08:31:04'),
(441, 'problem s nedoplatkom vyrieseny, platby nastavene, inkasny limit taktiez nastaveny', '2013-06-10 10:33:40'),
(442, 'skusam HPckovu socialnu siet', '2013-06-10 12:15:14'),
(443, 'one.hp.com nie je to uplne zla, ale chce to zopar vylepseni', '2013-06-10 14:19:51'),
(444, 'vypadol v praci outlook', '2013-06-10 14:48:34'),
(445, 'domooooov !!!', '2013-06-10 15:54:18'),
(446, 'dnes sa tazko vztavalo, emaily stale nefunguju ako maju, chce to kavu', '2013-06-11 08:36:34'),
(447, 'meeting dopadol dobre', '2013-06-11 10:43:58'),
(448, 'dalsi task pre TRADEKA', '2013-06-11 10:44:11'),
(449, 'upravil som serveris cast tasks aby informacie napriklad relations tahal z trocha tabuliek a pouzil som HTML tag datalist', '2013-06-11 15:10:04'),
(450, 'v keepe som upravil tlacikto pridat ', '2013-06-11 15:10:29'),
(451, 'pekne a horuce rano, povinny telefonat s maminou absolvovany', '2013-06-13 09:35:04'),
(452, 'dnes som mal ist na teambuilding, ale pre nedostatok zaujmu sa nekonal', '2013-06-15 13:59:00'),
(453, 'novy tyzden zacina', '2013-06-17 08:02:18'),
(454, 'a vyhrnem si rukavy', '2013-06-17 09:29:48'),
(455, 'a mame tu opat rano', '2013-06-24 08:59:47'),
(456, 'poziadal som si o dovolenku', '2013-06-24 09:56:42'),
(457, 'dovolenka este nie je schvalena :(', '2013-06-24 14:13:58');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `keep`
--

CREATE TABLE IF NOT EXISTS `keep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keep_group` varchar(50) DEFAULT NULL,
  `diary_text` text NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Sťahujem dáta pre tabuľku `keep`
--

INSERT INTO `keep` (`id`, `keep_group`, `diary_text`, `date_updated`) VALUES
(5, 'Personal', '·   Nepočítá se s psychickou slepotou, před kterou Ježíš důrazně varuje. Bojuje se s hříchem, ale ne s příčinami hříchu, přičemž hřích je symptomem nekvalitního postoje vůči realitě (Jn 9,41: „Tvrdíte, že vidíte a proto váš hřích trvá“; Ř 1,28-32: „Nestáli o správné poznání Boha a proto Bůh je vydal“.\r\n\r\n·   Svázanost teologie s filosofií. Ježíšova katecheze nepotřebuje k výkladu filosofii, ale podobenství z běžného života, nebo z přírodních věd a hlavně doložená skutky. Přírodní vědy mohou být při nápravě Církve velkým pomocníkem, protože mají velké zkušenosti s prací s neviditelnou realitou a také v otázce Metanoia, kdy pokrok ve vědě je vždy nějakým způsobem spojený se změnou myšlení.\r\n\r\n·   Při řešení problémů se teologové neptají, jak by situaci řešil Ježíš, co je k dané věci napsáno v evangeliu. Nevznikaly by tak nesmysly typu limbus. Přitom problém, který k tomu vedl, je dle evangelia snadno řešitelný. Dovolím si tvrdit, že dnes by Ježíš k tomu poznamenal, že na řešení daného problému stačí zdravý rozum a není třeba ustanovení zvláštní komise.', '2013-05-15 14:56:00'),
(7, 'HP', 'E-INCSSP-L3-GDO-IMS-BTV-DBWEB\r\n', '2013-05-15 15:38:43'),
(8, 'HP', 'Attendance:\r\nW6YX1hm8\r\n', '2013-05-15 15:38:59'),
(9, 'HP', '42125 7525993\r\n42125 7525994\r\n\r\n+44-(0)-14525-55574', '2013-05-17 10:49:06'),
(12, 'HP', '4337033120365579\r\n02/13\r\n943\r\n\r\n\r\nTomas=Geniu$\r\n\r\nMS Office: D4HJW-P89FH-3DBJR-CKKH2-7FH9W\r\n\r\ntomas.misura@zoznam.sk\r\ntoma$.pa$$w0rd', '2013-05-17 10:56:29'),
(14, 'HP', 'Eeva Hägeström, TRADEKA, OTAVA \r\n\r\nFI3-HUSEU.10.10.40.05.12\r\nFI1-OK001.10.23\r\nFI1-TR002.10.16.01\r\n\r\n\r\n	21726466	8ik,(OL&gt;\r\n\r\n\r\nKaisa Kilpeläinen - HUS', '2013-05-17 11:17:55'),
(15, 'Personal', '2628740740/1100\r\n1165204101\r\n\r\n02/58821599\r\n\r\npohladavky.pev@telekom.sk', '2013-05-17 12:01:15'),
(16, 'Keep', 'treba dorobit vyhladavienie v Keepe\r\n', '2013-05-20 15:30:10'),
(17, 'webdesign', 'michroma\r\narchivo black\r\n\r\n\r\nUbuntu, Ubuntu condensed\r\nOswald', '2013-05-22 19:34:10'),
(19, 'PHP', '// Get the data from your database\r\n$tags = ''world, travel, turism, cities'';\r\n\r\n// Separate the values\r\n$tags = explode(", ", $tags);\r\n\r\n// Create a link for each one\r\nforeach($tags as $t)\r\n{\r\n    echo '' <a href="?tag='' . $t . ''">'' . ucfirst($t) . ''</a> '' . "\\r\\n"; \r\n}', '2013-05-31 18:20:55'),
(20, 'HP', '21726466 Gandalf91$', '2013-06-03 10:19:02'),
(21, 'Other', '1.) zisti udaje o session\r\nqwinsta /server:(servername>\r\n2.) pouzit z druhej otvorenej session:\r\nmoje ID current (novej) sessny =2\r\n"sessionname" kam sa chcem dostat=rdp-tcp#14\r\ntscon 2 /DEST:rdp-tcp#14\r\n', '2013-06-15 15:07:52'),
(22, 'MySQL', 'select DISTINCT server.primary_name,server.arpa_domain,DEL_INST_OWN.indiv_firstname||'' ''||DEL_INST_OWN.indiv_lastname,instance_on_server.ins_instance_name from esl.ind DEL_INST_OWN, esl.indiv_instance_role DEL_INST_OWN_ROLE,esl.instance_on_server,esl.business,esl.server_customer,esl.server where (esl.instance_on_server.instance_id=DEL_INST_OWN_ROLE.instance_id(+)) and (DEL_INST_OWN_ROLE.ind_cd=DEL_INST_OWN.ind_cd(+)) and (DEL_INST_OWN_ROLE.role(+)=''Delivery Instance Owner'') and (esl.server.system_id=esl.instance_on_server.system_id(+)) and (esl.business.business_id(+)=esl.server_customer.business_id) and (esl.server_customer.system_id(+)=esl.server.system_id) and ((business.business_name like ''Luvata'')) and ((server.primary_name like ''%'')) and business.secure_access_r <> 1 order by server.primary_name', '2013-06-17 09:32:57'),
(23, 'PHP', 'SELECT tbllinks.Url \r\n  FROM tbllinks\r\n   LEFT JOIN (tbllinks_tags)\r\n  ON  tbllinks.id = tbllinks_tags.link_id\r\n  WHERE tbllinks_tags.tag_name = ''php''\r\n\r\n\r\n\r\nSELECT tbllinks.Url FROM tbllinks JOIN tbllinks_tags ON tbllinks.id = tbllinks_tags.link_id WHERE tbllinks_tags.tag_name = ''php''', '2013-07-10 17:19:38'),
(24, 'Personal', 'Cirkev nezakazuje pohlavný styk za inym účelom, ako splodenie dieťaťa. Cirkev podporuje všetky prirodzené metódy kontroly plodnosti, ktoré nie sú antikoncepčné, ale vychádzajú z pozorovania prirodzeného striedania plodných a neplodných období počas ženského cyklu. Jedná sa o meranie bazálnej teploty, sledovanie hlienu, prípadne kontrolu krčka maternice. Kombináciou týchto metód vznikla symptotermálna metóda, ktorá sa dá používať buď na určenie najplodnejšieho obdobia, ak chce pár úspešne počať dieťa, ale aj na určenie neplodného obdobia, keď chce mať pár sex, ale bez počatia. Táto metóda je pri správnom a poctivom používaní prakticky najúčinnejšou metódou regulácie plodnosti, ak nerátame sterilizáciu, ktorá je však "riešením" konečným. Jedinou "nevýhodou" tejto metódy je to, že vyžaduje presnosť a poctivosť vo vedení záznamov a periodickú zdržanlivosť. Čiže nie je to riešenie pre diskotékové známosti na jednu noc, ale pre partnerov, ktorí svoj sexuálny život chcú rozvíjať, rešpektujúc prirodzenosť vlastného tela a zachovávajúc úctu k svojmu aj cudziemu životu. A odmenou za toto úsilie im je okrem iného aj kvalitný sex bez umelej ochrany, bez strachu z nechceného tehotenstva a bez rizika pohlavných chorôb. Podľa mňa ideálne riešenie a cirkev ho nezakazuje, ale podporuje, vydáva o tom publikácie, podporuje výskum týchto metód a šíri o nich osvetu.', '2013-07-13 00:12:55'),
(25, 'HP', '421257524517\r\n7524517\r\n16.13.141.202', '2013-07-18 14:34:17'),
(27, 'PHP', '<?php\n \nif (!preg_match(''^(\\+420)? ?[0-9]{3} ?[0-9]{3} ?[0-9]{3}$'', ''Tel'')) {\n        echo ''Špatný formát telefonního čísla.'';\n} else {\n    echo ''OK'';\n}\n \n?>', '2013-08-02 19:04:43'),
(29, 'PHP', 'if (empty($_POST[''jmeno'']) || empty($_POST[''text'']) || empty($_POST[''email'']) || !preg_match(''#^.+@.+\\..+$#U'', $_POST[''email''])) {', '2013-08-07 11:32:12'),
(30, 'MySQL', 'create table mytest (\r\nid int not null auto_increment primary key,\r\ncol1 varchar(10),\r\ncol2 varchar(10)\r\n) engine = myisam;\r\n\r\ndelimiter //\r\ncreate procedure populate (in num int)\r\nbegin\r\ndeclare i int default 0;\r\nwhile i < num do\r\ninsert into mytest (col1,col2) values (''col1_value'',''col2_value'');\r\nset i = i + 1;\r\nend while;\r\nend //\r\ndelimiter ;\r\n\r\ncall populate (1000);', '2013-08-07 13:53:53'),
(31, 'Personal', '4405778618116838    exp: 08/14 010', '2013-08-13 14:48:57'),
(32, 'Personal', '4337033121415266   exp: 08/16 536', '2013-08-13 14:50:04'),
(33, 'HP', 'meeting with Vlasto:\r\nlocal champion for Portigon - Roman Sindler, Nada Moresova\r\nreceived checklist, required consolidate documentation, required to gather all information from Cyprian as quickly as possible. \r\n', '2013-08-15 14:30:41'),
(34, 'HP', 'DE1-PT002.12.04\r\n', '2013-08-16 11:41:55'),
(35, 'HP', 'not too much database due to T-systems\r\n50% were come back to HP\r\na lot of task not realated to DL\r\n\r\nadditional scripts - montoring of Netbackup\r\nLadislav Boka - NetBackup - full control\r\n- specific scripts for log cleaning... this script must be started after installation\r\n- DB reorganisation - in Germany - cannt transfer in - michal kollarcik contact michal lonart, docu exists\r\n- cloning - "restore" - PAtrik have no problems - has scripts and informations - not standart procedure\r\n- password change - 1 monday in month automatically - patrik is aware about that\r\n- user management - ATIS - routine demands, requests, no access from BTV due to German language\r\n - Michael Leanart promised to transfer it to BTV, Michal Chron to monitor ,translato to English, and recreate in SM7, 9\r\nKPI reporting - generating monthly reports - done by Andreas  () - from databases. If found something suspiciou they asks us if there  \r\nDisaster recovery - twice (july, september).\r\nDisaster recovery test done by the customer 2x per year - not too much to do from HP - some failover tests\r\n           - veritas cluster - \r\nPerformance tuning - customer engaded external companies to make the performace tests. Good results.\r\nsecurity patches - Patrik - \r\n\r\nMichal and Patrik are working on DP implemenation - more inform from michal\r\n\r\nmajor upgrades - Patrik, Michal\r\nHA - \r\nBTV - Veritas cluster - DataGuard - on unix level -  transfered to T-Systems\r\n\r\n\r\nnot too much database due to T-systems\r\n50% were come back to HP\r\na lot of task not realated to DL\r\n\r\nadditional scripts - montoring of Netbackup\r\nLadislav Boka - NetBackup - full control\r\n- specific scripts for log cleaning... this script must be started after installation\r\n- DB reorganisation - in Germany - cannt transfer in - michal kollarcik contact michal lonart, docu exists\r\n- cloning - "restore" - PAtrik have no problems - has scripts and informations - not standart procedure\r\n- password change - 1 monday in month automatically - patrik is aware about that\r\n- user management - ATIS - routine demands, requests, no access from BTV due to German language\r\n - Michael Leanart promised to transfer it to BTV, Michal Chron to monitor ,translato to English, and recreate in SM7, 9\r\nKPI reporting - generating monthly reports - done by Andreas  () - from databases. If found something suspiciou they asks us if there  \r\nDisaster recovery - twice (july, september).\r\nDisaster recovery test done by the customer 2x per year - not too much to do from HP - some failover tests\r\n           - veritas cluster - \r\nPerformance tuning - customer engaded external companies to make the performace tests. Good results.\r\nsecurity patches - Patrik - \r\n\r\nMichal and Patrik are working on DP implemenation - more inform from michal\r\n\r\nmajor upgrades - Patrik, Michal\r\nHA - \r\nBTV - Veritas cluster - DataGuard - on unix level -  transfered to T-Systems\r\n\r\n\r\n\r\n                                                                  \r\n\r\n                                                                  ', '2013-08-16 16:12:13'),
(36, 'Megapolis', 'https://apps.facebook.com/megapolis_game/?action=share_wishlist&sender=1661823411&kt_track_psr=1&kt_u=19af84bac70a3c94&kt_st1=request&kt_st2=wish_list&kt_st3=share_wishlist', '2013-08-20 08:46:47'),
(37, 'PHP', '<?php\r\n    require_once(''config.php'');\r\n    $conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE) \r\n    or die (''Cannot connect to db'');\r\n    $result = $conn->query("SELECT quoteid, quote, cat.catid catid, cat.name cat, scat.catid catid, scat.name scat, author FROM quotes q\r\n                           INNER JOIN category cat ON q.catid = cat.catid LEFT OUTER JOIN category scat ON q.subcatid = scat.catid order by quoteid");\r\n    echo "<table border=''1px solid black''>";\r\n    echo "<tr><td><b>Category</b></td><td><b>Sub-Category</b></td><td><b>Quote</b></td><td><b>Author</b></td></tr>";\r\n    while ($row = $result->fetch_assoc()) {\r\n        echo "<tr><td>$row[cat]</td><td>$row[scat]</td><td>$row[quote]</td><td>$row[author]</td>";\r\n        echo "<td><form action=''".$_SERVER[''PHP_SELF'']."'' method=''post''><input type=''hidden'' id=''quoteid'' name=''quoteid'' value=''$row[quoteid]'' /><input type=''submit'' name=''formDelete'' id=''formDelete'' value=''Delete'' /></form></td></tr>";\r\n    }\r\n    echo "</table>";\r\n?>', '2013-08-21 11:19:53'),
(38, 'Personal', 'Aby sme si boli na jasnom tak Zapadna cirkev ma(mala) 5 obradov:\r\n\r\n1, rimsky\r\n2, ambroziansky (milansky)\r\n3, galsky\r\n4, mozarabsky (hispansky alebo spanielsky)\r\n5, iro-skotsky (keltsky)\r\n\r\nVychodne cirkvi ich maju viac. Tu su hlavne skupiny.\r\n\r\n1, alexandrijska skupina (obrad koptsky a etiopsky)\r\n2, antiochijska skupina (obrady syrsky, maronitsky, malankarsky a byzantsky)\r\n3, chaldejska skupina (obrady chaldejsky, malabarsky, nestoriansky)\r\n4, armenska skupina (obrad armensky)\r\n5, byzantsky obrad \r\n\r\nByzantsky obrad je vseobecne najrozsirenejsi a ako sme videli vyvinul sa postupne a radime ho do antiochijskej skupiny. Aj z toho dovodu je uvedeny ako osobitna skupina. ', '2013-08-26 13:32:22'),
(39, 'Personal', 'Trombetta, Dickfors, Mostes, SRB, Pugh, Andick - lod\r\nMotor - VRP, GRM, RKM', '2013-08-27 15:58:12'),
(40, 'HP', 'https://www.rooms.hp.com/attend/default.aspx?key=EP2C2T5UAG ', '2013-09-04 20:09:08'),
(41, 'PHP', 'USE master;\r\nGO\r\nALTER DATABASE AdventureWorks2012\r\nSET SINGLE_USER\r\nWITH ROLLBACK IMMEDIATE;\r\nGO\r\nALTER DATABASE AdventureWorks2012\r\nSET READ_ONLY;\r\nGO\r\nALTER DATABASE AdventureWorks2012\r\nSET MULTI_USER;\r\nGO', '2013-09-08 15:35:15'),
(42, 'Personal', 'Niektorí protestanti, hlavne luteráni a anglikáni veria v konsubstanciáciu, teda v to, že po premenení je v Eucharistii prítomná substancia tela a krvi Krista spoločne so substanciou chleba a vína. Telo a krv sú spolu &quot;so substanciou&quot; (con-substantia) chleba a vína, mohli by sme obrazne povedať, že sedia jedna vedľa druhej. Transubstanciácia je ale niečo celkom iné. Je to viera, že celá substancia chleba a vína je doslovne premenená na substanciu tela a krvi Krista a ostáva iba vzhľad (ako teológovia hovoria akcident), inými slovami zmyslová kvalita pôvodného. Konsubstanciácia znamená, že sa Eucharistia skladá z tela a krvi Krista plus z chleba a vína. Transubstanciácia znamená, že je prítomné iba telo a krv, hoci ostáva vzhľad chleba a vína ako sviatostný symbol pozemského pokrmu. Pojem transubstanciácia bol na štvrtom ekumenickom koncile v Lateráne (1215) označený ako jediný pojem, ktorý úplne a správne popisuje tajomstvo reálnej prítomnosti. Ostatné pojmy sú buď neúplné, alebo jednoducho chybné. Hoci konsubstanciácia potvrdzuje skutočnú prítomnosť Ježiša, jedine transubstanciácia napĺňa biblické učenie o Kristovej prítomnosti ako aj tradíciu a prax prvotnej Cirkvi ohľadom Eucharistie. \r\n\r\nToto učenie pochádza z Biblie (Mt 26,26-28; Mk 14,22-24; Lk 22,19-20; Jn 6,32-71; 1Kor 10,16-17; 1Kor 11,23-29) a z prác prvých kresťanských autorov. Cyril z Jeruzalema vo svojich Katechetických hovoroch, ktoré napísal okolo roku 350 n.l. hovorí, že prijímajúci by mal byť &quot;plne presvedčený, že zdanlivý chlieb, nie je chlebom, hoci ho tak chuťou vníma, ale že to je telo Krista a že zdanlivé víno, nie je vínom, hoci sa tak zmyslom javí.&quot; Nemohol by tomu takto veriť, keby po premenení ostával nejaký chlieb či víno.', '2013-09-12 16:38:20'),
(43, 'HP', 'raisnute EMO pre mailbox check\r\nbude nasetupovany rule pre nechekovanie emailoxu, miso nebude musiet kontrolovat meilbox, matus bude logovat cases na L1\r\nmusime akceptovat sucasny model ludi\r\nmatus bude ownerom ATIS casu\r\nmailbox - vycistit a ked bude vyzcisteny tak poslat info Matusovi. revievnut emaily do konca EOBD. Kadzy novy bude handlovat Matus.Vyklarifikovat s L1 a s L2 proces.\r\ntreba vsetky informacie do ESLka\r\n\r\n\r\n\r\n\r\n', '2013-09-16 15:50:11'),
(44, 'Personal', 'Prijde takhle chlapek do nebe. Svaty Petr nakoukne do knih a povida: ”Vite, ja tu na vas vubec nic nemam. Ani spatnyho, ani dobryho. Vite, my posledni dobou mame narvano, takze byste potreboval alespon jeden opravdu dobrej skutek, abych vas mohl pustit dovnitr. Zkuste si na neco vzpomenout, my v tech knihach nemame vsechno.” ”No, jednou jsem udelal jeden dobrej skutek. To jsem takhle jel po meste a najednou vidim, jak u jedny garaze banda motorkaru obtezuje nejakou slecnu. Obtezuje je slaby slovo. Oni ji primo mucili a znasilnovali, a mne tak vzkypela krev v zilach, ze jsem okamzite zastavil, vytahl z kufru francouzak a sel primo k nim. Byl tam jeden takovej velkej, urcite sef, kolem krku retez, jizvy v obliceji, a ja mu jednu ubalil, ze lehnul, a povidam: Koukejte tu slecnu nechat na pokoji! ” ”To je zajimave,” rika Svaty Petr, ”to bychom to meli mit... Kdy se to asi tak stalo?” ”No, je to tak dve minuty.”\r\n', '2013-09-17 12:50:44'),
(45, 'MySQL', 'SQL dotaz pro zjištění duplicitních hodnot v rámci jednoho sloupce:\r\nSELECT sloupec, COUNT(sloupec) AS pocet_vyskytu FROM tabulka GROUP BY sloupec HAVING pocet_vyskytu &gt; 1', '2013-09-17 13:52:00'),
(46, 'MySQL', 'SELECT sloupec, COUNT(sloupec) AS pocet_vyskytu FROM tabulka GROUP BY sloupec ORDER BY pocet_vyskytu DESC', '2013-09-17 13:55:30'),
(47, 'Megapolis', 'http://tinyurl.com/k97vhr9', '2013-09-20 06:15:39'),
(48, 'HP', '21726466 Gandalf92$', '2013-09-20 09:17:37');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `keep_groups`
--

CREATE TABLE IF NOT EXISTS `keep_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Sťahujem dáta pre tabuľku `keep_groups`
--

INSERT INTO `keep_groups` (`id`, `group_name`) VALUES
(2, 'HP'),
(3, 'Keep'),
(4, 'Megapolis'),
(5, 'MySQL'),
(6, 'Other'),
(8, 'Personal'),
(9, 'PHP'),
(10, 'webdesign');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `meetings`
--

CREATE TABLE IF NOT EXISTS `meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_meeting` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `atendees` text,
  `meeting_type` varchar(10) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `meeting_log` text,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Sťahujem dáta pre tabuľku `meetings`
--

INSERT INTO `meetings` (`id`, `date_of_meeting`, `start_time`, `end_time`, `atendees`, `meeting_type`, `location`, `meeting_log`, `created_date`) VALUES
(2, '2003-04-20', '15:00:00', '16:00:00', 'Tomas Misura, Milo Kral', 'call', 'Bratislava', 'not too much database due to T-systems\n50% were come back to HP\na lot of task not realated to DL\n\nadditional scripts - montoring of Netbackup\nLadislav Boka - NetBackup - full control\n- specific scripts for log cleaning... this script must be started after installation\n- DB reorganisation - in Germany - cannt transfer in - michal kollarcik contact michal lonart, docu exists\n- cloning - &quot;restore&quot; - PAtrik have no problems - has scripts and informations - not standart procedure\n- password change - 1 monday in month automatically - patrik is aware about that\n- user management - ATIS - routine demands, requests, no access from BTV due to German language\n- Michael Leanart promised to transfer it to BTV, Michal Chron to monitor ,translato to English, and recreate in SM7, 9\nKPI reporting - generating monthly reports - done by Andreas () - from databases. If found something suspiciou they asks us if there \nDisaster recovery - twice (july, september).\nDisaster recovery test done by the customer 2x per year - not too much to do from HP - some failover tests\n- veritas cluster - \nPerformance tuning - customer engaded external companies to make the performace tests. Good results.\nsecurity patches - Patrik - \n\nMichal and Patrik are working on DP implemenation - more inform from michal\n\nmajor upgrades - Patrik, Michal\nHA - \nBTV - Veritas cluster - DataGuard - on unix level - transfered to T-Systems', '2013-08-17 19:42:42'),
(3, '2013-08-20', '13:30:00', '14:30:00', 'Arto Lappalainen, Tomas Misura, Theodore Djevizova, Alexander Szerencses, Peter Siandor', 'call', 'Bratislava', '', '2013-08-20 13:42:44'),
(4, '2003-04-21', '14:30:00', '15:00:00', 'Djevizova, Theodora; PORTIGON_BestShoreTeam; Belov, Nikolay (ASO); Bloeckl, Bernhard; Clarke, Stephen; Clement, Matthew; Kaczmarczik, Frank; Koppe, Holger; Lewis, Alan; Lichtenberg, Stefan; Mehmet, Dj', 'call', 'CAB', '', '2013-08-21 06:08:02');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `quick_info`
--

CREATE TABLE IF NOT EXISTS `quick_info` (
  `id` int(11) NOT NULL,
  `relation_to` varchar(100) DEFAULT NULL,
  `customer` varchar(20) NOT NULL,
  `information_type` varchar(20) NOT NULL,
  `information` text,
  `my_comment` text,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `nick` int(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
