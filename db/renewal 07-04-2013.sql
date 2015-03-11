-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 07 2013 г., 08:47
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `renewal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about_jesus`
--

CREATE TABLE IF NOT EXISTS `about_jesus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `about_jesus`
--

INSERT INTO `about_jesus` (`id`, `txt`, `title`, `img1`, `img2`) VALUES
(1, '<p><strong>Бог любит Вас. У Него есть удивительный, прекрасный замысел относительно вашей жизни.</strong></p>\n\n<p>(Цитаты, содержащиеся в этом тексте, желательно читать в библейском контексте.)</p>\n<p>\n<strong>Божья любовь</strong><br/>\n"Ибо так возлюбил Бог мир, что отдал Сына Своего единородного, дабы всякий, верующий в Него, не погиб, но имел жизнь вечную"<br/>\n(Иоанна 3:16). \n</p>\n<p>\n<strong>Божий замысел</strong><br/>\nХристос сказал: "Я пришел для того, чтоб имели жизнь, и имели c избытком", т.е. полноценную жизнь, наполненную глубоким духовным смыслом. (Иоанна 10:10).<br/>\n</p>\n<p>Почему же у большинства людей нет этой жизни «с избытком»?</p>\n\n<p class="georgia">Потому что ...</p>', 'spiritual_low', 'spiritual_low1.gif', ''),
(2, '<p><strong>Человек грешен и отделен от Бога. Поэтому человек не в состоянии ни познать, ни испытать любовь Бога и Его замысел.</strong></p>\n\n<p><strong>Человек грешен</strong><br/>\n"Потому что все согрешили и лишены славы Божией" (Рuмлянам 3:23). Человек был сотворен для того, чтобы иметь общение с Богом, но из-за упрямого своеволия человек избрал свой собственный путь. В результате этого общение с Богом было нарушено. Это своеволие, которое выражается в активном неповиновении Богу или просто в равнодушном отношении к Нему, Библия называет грехом. \n</p>\n<p><strong>Человек отлучен от Бога</strong><br/> \n«Ибо возмездие за грех - смерть» (духовное отлучение от Бога) (Рuмлянам 6:23). \n</p>\n\n<p>Этот рисунок показывает, что Бог свят, а человек грешен. Огромная пропасть разделяет их. Стрелки показывают, что человек постоянно пытается достичь Бога и жизни с избытком своими собственными силами, например, добрыми делами, философией или религией.</p>\n\n<p class="georgia">На единственный выход из этого тупика нам указывает третий закон.</p>', 'spiritual_low', 'spiritual_low2.gif', ''),
(3, '<p><strong>Иисус Христос - единственный, данный Богом путь избавления от человеческого греха. Через Него Вы можете познать и испытать любовь Бога и Его замысел.</strong>\n<p><strong>Он умер зa нас.</strong><br/>\n"Но Бог Свою любовь к нам доказывает тем, что Христос умер за нас, когда мы были еще грешниками." (Рuмлянам 5:8). \n</p>\n<p><strong>Он воскрес из мертвых.</strong><br/>\n"Христос умер за грехи наши... Он погребен был... и воскрес в третий день, по Писанию, и... явился Кифе, потом двенадцати; потом явился более нежели пятистам..."<br/>\n(1 Коринфянам 15:3-6).\n</p>\n<p><strong>Христос - единственный путь к Богу.</strong><br/>\n"Иисус сказал ему: Я есмь путь и истина и жизнь; никто не приходит к Отцу, как только чрез Меня" (Иоанна 14:6). \n</p>\n<p>\nИз рисунка видно, что Бог перебросил мост через пропасть, разделившую Его и человека, послав Своего Сына, Иисуса Христа, умереть на кресте вместо нас, чтобы понести наказание за наши грехи. \n</p>\n<p class="georgia">Недостаточно просто знать эти три закона...</p>', 'spiritual_low', 'spiritual_low3.jpg', ''),
(4, '<p><strong>Нам нужно лично принять Иисуса Христа как спасителя и Господа. Только после этого мы сможем познать любовь Бога и Его замысел.</strong></p>\n\n<p><strong>Нам нужно принять Христа</strong><br/>\n"А тем, которые приняли Его, верующим во имя Его, дал власть быть чадами Божиими" (Иоанна 1:12) \n</p>\n<p><strong>Мы принимаем Христа - верой</strong><br/>\n"Ибо благодатию вы спасены чрез веру, и сие не от вас, Божий дар; не от дел, чтобы никто не хвалился" (Ефесянам 2:8-9).<br/>\nПриняв Христа, мы рождаемся заново (Иоанна 3:1-8) \n</p>\n<p><strong>Мы принимаем Христа посредством личного приглашения</strong><br/>\nХристос сказал: &laquo;Се, стою у двери и стучу: если кто услышит голос Мой и отворит дверь, войду к нему...&raquo;<br/>\n(Откровение 3:20).\n</p>\n<p>\nПринятие Христа заключается в обращении к Богу от самого себя (покаянии) и решении позволить Христу войти в нашу жизнь, простить наши грехи и сделать из нас таких людей, какими Он желает нас видеть. Недостаточно просто осознать разумом, что Иисус Христос есть Сын Божий и что Он умер на кресте за наши грехи. Также недостаточно иметь эмоциональные переживания. Главное - принять Христа верой. Принятие Иисуса Христа верой - это действие нашей воли.\n</p> \n<p><strong>Вы можете принять Христа верой прямо сейчас, обратившись к нему в молитве</strong><br/>\n(Молитва - это разговор с Богом.) \n</p>\n<p>Бог хорошо знает человеческое сердце. Поэтому Ему важны не столько слова, сколько состояние вашего сердца.</p>\n\n<p>Молитва может звучать примерно так:</p>\n\n<p class="georgia" style="font-size: 16px;line-height: 24px;">Гocпoдь Ииcyc, я нуждаюсь в Тебе. Благодарю Тебя за смерть на кресте за мои грехи. Я открываю дверь моей жизни и принимаю Тебя как моего Спасителя и Господа. Благодарю Тебя за прощение моих грехов и за дар вечной жизни. Возьми мою жизнь в Свои руки. Сделай из меня такого человека, каким Ты хочешь меня видеть. Благодарю Тебя, Великого Бога: Отца, Сына и Святого Духа. Аминь</p>\n\n<p>Выражает ли эта молитва желание вашего сердца?<br/> \nЕсли да, то помолитесь этой молитвой прямо сейчас, и Христос войдет в вашу жизнь, как Он обещал.</p>', 'spiritual_low', 'spiritual_low4.gif', ''),
(5, '<p><strong>Иисус Христос</strong> — Сын Божий, Бог, явившийся во плоти, взявший на Себя грех человека, Своей жертвенной смертью сделавший возможным его спасение. В Новом Завете Иисус Христос именуется Христом, или Мессией, Сыном, Сыном Божиим, Сыном Человеческим, Агнцем, Господом, Отроком Божиим, Сыном Давидовым, Спасителем и др.</p>\n\n<p>По воле Бога Отца и из сожаления к нам, грешным людям, Иисус Христос пришел в мир и стал человеком. Своим словом и примером Иисус Христос учил людей, как надо верить и жить, чтобы стать праведными и быть достойными звания детей Божиих, участниками Его бессмертной и блаженной жизни. Чтобы очистить наши грехи и победить смерть, Иисус Христос умер на кресте и воскрес в третий день. Теперь как Богочеловек Он пребывает на небе со Своим Отцом. Иисус Христос является главой основанного Им Царства Божия, называемого Церковью, в которой верующие спасаются, руководимые и укрепляемые Духом Святым. Перед концом мира Иисус Христос снова придет на землю, чтобы судить живых и мертвых. После этого наступит Его Царство Славы, рай, в котором спасенные будут вечно радоваться. Так предсказано, и мы верим, что так будет.</p>\n\n<p><strong>Свидетельства о жизни Иисуса Христа</strong><br/>\nКанонические Евангелия (Евангелие от Матфея, Евангелие от Марка, Евангелие от Луки,Евангелие от Иоанна). Первые три Евангелиста, Матфей, Марк и Лука, описывают события Его жизни, происходившие, главным образом, в Галилее — в северной части Св. Земли. Евангелист же Иоанн дополняет их повествования, описывая события и беседы Христа, происходившие преимущественно в Иерусалиме. Отдельные изречения Иисуса Христа, не вошедшие в канонические Евангелия, сохранились в других новозаветных книгах (Деяния и послания апостолов), а также  в сочинениях древнехристианских писателей.\n</p>', 'about_jesus', '17131621.jpg', 'Jesus_on_Cross.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `about_us`
--

CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` text NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `about_us`
--

INSERT INTO `about_us` (`id`, `txt`, `title`) VALUES
(1, '<p><strong>Церковь &laquo;Обновление&raquo;</strong> состоит из обычных людей, которые осознают свою потребность в Боге. Мы несовершенны, но мы стремимся подражать Христу. Мы стремимся к единству, чтобы приближаться к Богу и провозглашать Его дела.</p>\n\n<p><strong>Церковь &laquo;Обновление&raquo;</strong> - это  семья.<br/>\nМы верим, что каждому человеку, если он стремится найти Бога, нужна семья Бога - Церковь. Именно в Церкви - учась у Иисуса любить друг друга, помогая друг другу любить Бога - мы растем, становясь все больше и больше похожими на нашего Господа - Христа. Наша вечная жизнь вместе уже началась!</p>\n\n<p><strong>Церковь &laquo;Обновление&raquo;</strong> - это община последователей Иисуса Христа. Мы верим, что Библия - это единственный источник богодухновенного Слова Бога и стремимся во всем подчиняться воле Бога, выраженной в Новом Завете. Мы благодарны за прощение грехов, которое приходит через Иисуса Христа.\n    \n<p><strong>Наша Миссия:</strong> Жизнь, наполненная поклонением Богу и проповедь Его Слова - краеугольный камень нашего Христианства. Мы знаем, что Сын Человеческий пришел, чтобы искать и спасать погибающих (Евангелие от Луки 19:10). Следуя за Христом, вступив в спасительные отношения с Богом, мы стремимся разделять желание нашего Небесного Отца, Который хочет, чтобы все люди спаслись и достигли познания истины (1 Тимофею 2:4). Понимая, что значит бояться Бога, мы убеждаем всякого примириться с Ним.</p>\n\n<p><strong>Церковь &laquo;Обновление&raquo;</strong> была начата в 1991 году христианами Мариуполя, чтобы донести послание Иисуса до каждого жителя Мариуполя, а также в другие города Украины.  Теперь более 250 человек встречается каждое воскресенье. Наша группа - много-национальная, церковь объединяет людей различных культур и социальных слоев. В церкви ведутся различные СЛУЖЕНИЯ в зависимости от нужд на разных этапах жизни христианина: дети, подростки, молодежь, люди среднего и преклонного возраста. На сегодняшний день мы являемся частью Объединения Церквей &laquo;Обновление&raquo;, Епископ <a class="underline" target="_blank" name="sync" href="http://vk.com/andreybondorenko">Андрей Бондаренко</a>.</p>\n\n<p>Мы поддерживаем работу <a class="underline" target="_blank" name="sync" href="http://obnovlenie.dn.ua/">Детского Центра социальной опеки ребенка «Обновление»</a>, а также христианскую миссию в Кении и других городах Украины.\n\n<p>Мы благодарны за возможность быть учениками Иисуса, мы любим нашу церковь и ценим общение друг с другом. Мы стремимся узнать Бога и сделать Его известным.</p>\n\n<p>Приходите, чтобы узнать Бога. Думайте об этом, как о чем-то неотъемлемом от жизни, но при этом удивительном событии - о вашей встрече с Богом для поклонения Ему.</p>\n\n<p><strong>Еженедельные воскресные Богослужения всей семьей:</strong><br/>\nПодражая христианам ранней церкви, мы встречаемся в день Господа, в воскресенье, чтобы поклоняться Богу и Иисусу Христу. Наши воскресные Богослужения - это важная часть нашей жизни в Боге. Мы любим собираться всей семьей.\n</p>\n<p>Воскресные Богослужения - это прекрасная возможность услышать проповедь из Слова Бога, поклоняться Богу в совместной молитве, принимать причащение и прославлять Его в песнях, псалмах и гимнах. Воскресенье - это день, когда мы отдаем наши пожертвования.</p>\n\n<p>Приходите на Богослужение, чтобы узнать больше о Христе, чтобы поклоняться Богу вместе с нами.</p>\n\n<p><strong>Детское служение во время служб:</strong><br/>\nВо время наших воскресных Богослужений для детей-школьников проводятся занятия Воскресной школы, для детей дошкольного возраста есть специальная детская христианская программа.\n</p>\n<p>Мы будем рады видеть Вас на наших Богослуженияx каждое воскресенье по адресу: г.Мариуполь, ул. Московская, 59/12.</p>', 'about_us'),
(2, '<p>Многие люди сегодня рассматривают церковь только как здание. Но это не соответствует библейскому пониманию церкви. Слово «церковь» происходит от греческого слова «экклесиа», определяемого как «собрание» или «созванные». Основное значение церкви – это не здание, а люди.</p>\n<p>Евангелие от Матфея 16:18-19: " и Я говорю тебе: ты - Петр, и на сем камне Я создам Церковь Мою, и врата ада не одолеют ее; и дам тебе ключи Царства Небесного: и что свяжешь на земле, то будет связано на небесах, и что разрешишь на земле, то будет разрешено на небесах."</p>\n<p>Слово "<strong>церковь</strong>" встречается в Новом Завете более 60 раз. Оно означает просто "созванные". Считается, что корни этого понятия - в форме правления в древней Греции. Каждое поселение или город имело своих представителей в общегосударственном правлении. Когда намечалась общая встреча, эти представители созывались для совместного решения вопросов и называлось это собрание "екклезия", оно  не имело религиозного значения. Как, впрочем, и другие религиозные термины: пресвитер - старейшина, епископ - наблюдатель.</p>\n<p>1. <strong>Всемирная церковь</strong> состоит из людей, которые имеют личные отношения с Иисусом Христом. Текст в 1 Коринфянам 12:13 гласит: "Ибо все мы одним Духом крестились в одно тело, Иудеи или Еллины, рабы или свободные, и все напоены одним Духом. Тело же не из одного члена, но из многих". Мы видим, что каждый верующий является частью Тела Христа. Истинная церковь Бога – не конкретное церковное сооружение или деноминация; всемирная церковь Божья – это все те, кто получил спасение через веру в Иисуса Христа.</p>\n<p>2. <strong>Поместная церковь</strong>, описанная в Послании Галатам 1:1-2: "Павел Апостол… и все находящиеся со мною братия – церквам Галатийским". Тут мы видим, что в провинции Галатии было много церквей – это мы и называем поместными церквями. Баптистская, лютеранская, католическая церковь и др. не являются церквями во всемирном значении, а скорее поместными церквями. Всемирная церковь состоит из тех, кто поверил во Христа как своего Спасителя. Этим членам всемирной церкви следует искать братские отношения и наставление в поместных церквях.\nИтак, церковь не является зданием или деноминацией. Согласно Библии, церковь – это Тело Христа, т.е. все те, кто поверил в Иисуса Христа как Спасителя (Иоанн 3:16; 1 Коринфянам 12:13). Члены всемирной церкви (Тела Христа) находятся в поместных церквях.</p>', 'about_us');

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `vk_comments_id` varchar(255) NOT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `img` text NOT NULL,
  `txt` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `url`, `vk_comments_id`, `top`, `img`, `txt`, `title`, `date`, `author`, `author_url`) VALUES
(2, 'plod_duha_vozderzhanie', '3467889', 1, 'plodi_duha.jpg', '<p><strong>Воздержание</strong> - способность сдерживать потребности плоти, быть умеренным в пище, в одежде, стремится сообветствовать Богу в привычках и стилях жизни. Это способность подавлять плотские желания, могущие завладеть человеком и стать похотью, ведущей к зависимости, греху.</p>\n<p>Галатам 5:22 &laquo;<span class="georgia">Плод же духа: любовь, радость, мир, долготерпение, благость, милосердие, вера, кротость, воздержание</span>&raquo;</p>\n<p>2-ое Петра 1:5-6 &laquo;<span class="georgia">то Вы, прилагая к сему все старание, покажите в вере вашей добродетель, в добродетели рассудительность, в рассудительности воздержание, в воздержании терпение, в терпении благочестие, в благочестие братолюбие, в братолюбии любовь.</span>&raquo;</p>', 'Плод Духа - воздержание', '2013-03-03', 'Скоробогач С.П.', 'skorobogach-sergey-petrovich');

--
-- Триггеры `articles`
--
DROP TRIGGER IF EXISTS `delete_filter_articles`;
DELIMITER //
CREATE TRIGGER `delete_filter_articles` AFTER DELETE ON `articles`
 FOR EACH ROW DELETE FROM `filter_articles` WHERE `elem_id` = OLD.id
//
DELIMITER ;
DROP TRIGGER IF EXISTS `update_articles`;
DELIMITER //
CREATE TRIGGER `update_articles` AFTER UPDATE ON `articles`
 FOR EACH ROW IF(NEW.top = 1) THEN
SET @article_id = (SELECT article_id FROM `top` WHERE (`article_id`=OLD.id) AND (`upload_dir`='articles'));
IF(@article_id <> 0) THEN
UPDATE `top` SET `url`=NEW.url,
`title`=NEW.title,`img`=NEW.img,
`upload_dir`='articles',
`txt`=NEW.txt,`article_id`=NEW.id
WHERE article_id=@article_id AND (`upload_dir`='articles');
ELSE
INSERT INTO `top` (`url`,`title`,`upload_dir`,`img`,`txt`,`article_id`)
VALUES (NEW.url,NEW.title,'articles',NEW.img,NEW.txt,NEW.id);
END IF;
ELSE
DELETE FROM `top` WHERE (`article_id`=NEW.id) AND (`upload_dir`='articles');
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `audio`
--

CREATE TABLE IF NOT EXISTS `audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `band` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `audio`
--

INSERT INTO `audio` (`id`, `title`, `url`, `band`, `time`) VALUES
(1, '40 градусов', '40_gradusov.mp3', 'Renewal Youth Worship Team', '4:00'),
(2, 'Бруно Марс', 'Bruno_Mars.mp3', 'Renewal Youth Worship Team', '4:00'),
(3, 'Я скажу тебе нет', 'DASH.mp3', 'Renewal Youth Worship Team', '4:00'),
(4, 'Друзья', 'Friends.mp3', 'Renewal Youth Worship Team', '4:00'),
(5, 'Стыцеман', 'Ivan_Dorn.mp3', 'Renewal Youth Worship Team', '4:00'),
(6, 'Валуев Николай', 'Valuev_Kolya.mp3', 'Renewal Youth Worship Team', '4:00'),
(7, 'Whistle', 'Whistle.mp3', 'Renewal Youth Worship Team', '4:00'),
(8, 'Я с тобою как в раю', 'YA_S_Toboyu_Kak_V_Rayu.mp3', 'Renewal Youth Worship Team', '4:00'),
(9, 'I could be the one', 'avicii_vs_nicky_romero_-_i_could_be_the_one_radio_edit.mp3', 'Renewal Youth Worship Team', '4:00');

-- --------------------------------------------------------

--
-- Структура таблицы `bible_quotes`
--

CREATE TABLE IF NOT EXISTS `bible_quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` text NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `bible_quotes`
--

INSERT INTO `bible_quotes` (`id`, `txt`, `location`) VALUES
(1, 'Ибо так возлюбил Бог мир, что отдал Сына Своего Единородного, дабы всякий верующий в Него не погиб, но имел жизнь вечную', 'Ин. 3:16'),
(2, 'Итак во всем, как хотите, чтобы с вами поступали люди, так поступайте и вы с ними, ибо в этом закон и пророки.', 'Матф. 7:12'),
(3, 'Ибо младенец родился нам - Сын дан нам...', 'Ис. 9:6'),
(4, 'где Дух Господень, там свобода', '2 Кор. 3:17');

-- --------------------------------------------------------

--
-- Структура таблицы `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) NOT NULL,
  `captcha` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `is_online` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session` (`session`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

--
-- Дамп данных таблицы `captcha`
--

INSERT INTO `captcha` (`id`, `session`, `captcha`, `hash`, `is_online`) VALUES
(168, '85cc48ecf086600a9e21e315548f1569', '86f6', 'b9b26f52674e28206594ab6d7c6b7988e97d25fa', '2013-03-15 14:10:51'),
(166, 'a74cebdcbd6cd4c5c89f9bb5f0d1e0cf', '05f1', '08dffa40a385ce350479031955f153da9157ed90', '2013-03-13 18:24:06'),
(167, '67db32420fa584b5840a45d8eb0ca485', '26c3', '7917b70a131288a38987a14e25432569cc78cc3b', '2013-03-13 18:34:04'),
(175, 'ea1e0e28575a5fa1b1bd0b29ac6ccb9c', '60cd', 'fa22d6e3fcd707357d884d8e05f1e115b4cfc32b', '2013-03-31 16:12:50'),
(174, 'e186a98c44e8c314d25d44f92aa86db2', '9f40', '151bf7b503da69a14de713bf972c23f0995f7e86', '2013-03-30 13:22:31'),
(173, '90905fccb6711b45fb0e53f2c3b261ec', '50a8', 'd2aa792f90517ed739ac982885a13d06fbfcff88', '2013-03-25 20:42:26'),
(169, 'e5597fb91e63750f6d7bd2037331c26f', 'a03a', 'a2fe5041b54cb0a94df4b097a47d833a506acfa8', '2013-03-15 21:01:21'),
(170, '1c4d69d79528e81fb5500e455891feba', '75e0', '6ffb2c8ed8397827ac47bc1050b52ef308509714', '2013-03-16 08:31:26'),
(171, '1c4d69d79528e81fb5500e455891feba', '75e0', '6ffb2c8ed8397827ac47bc1050b52ef308509714', '2013-03-16 13:46:30'),
(172, '980fc6e66b4ce53bdffa0ed1c39ac366', 'a625', 'a39558238bac5eea89745451f72bde6237852182', '2013-03-16 13:49:52');

-- --------------------------------------------------------

--
-- Структура таблицы `cash`
--

CREATE TABLE IF NOT EXISTS `cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `pathway` text NOT NULL,
  `menu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `cash`
--

INSERT INTO `cash` (`id`, `url`, `pathway`, `menu`) VALUES
(1, 'a:74:{i:1;s:5:"/main";i:2;s:5:"/news";i:3;s:9:"/about_us";i:4;s:9:"/activity";i:5;s:19:"/about_us/structure";i:6;s:14:"/media/gallery";i:7;s:12:"/media/video";i:8;s:9:"/contacts";i:10;s:12:"/about_jesus";i:31;s:17:"/about_us/history";i:32;s:15:"/about_us/creed";i:33;s:20:"/about_us/who_are_we";i:41;s:19:"/activity/orphanage";i:42;s:23:"/activity/salvation_way";i:51;s:37:"/about_us/structure/general_structure";i:52;s:20:"/about_us/ministries";i:53;s:21:"/about_us/home_groups";i:61;s:14:"/media/gallery";i:62;s:14:"/media/gallery";i:63;s:14:"/media/gallery";i:64;s:14:"/media/gallery";i:65;s:14:"/media/gallery";i:66;s:14:"/media/gallery";i:71;s:21:"/media/video/pritches";i:72;s:28:"/media/video/ministry_record";i:73;s:21:"/media/video/seminars";i:521;s:20:"/about_us/ministries";i:522;s:20:"/about_us/ministries";i:523;s:20:"/about_us/ministries";i:524;s:20:"/about_us/ministries";i:525;s:20:"/about_us/ministries";i:531;s:21:"/about_us/home_groups";i:532;s:21:"/about_us/home_groups";i:533;s:21:"/about_us/home_groups";i:534;s:21:"/about_us/home_groups";i:535;s:21:"/about_us/home_groups";i:536;s:21:"/about_us/home_groups";i:711;s:21:"/media/video/pritches";i:712;s:21:"/media/video/pritches";i:713;s:21:"/media/video/pritches";i:714;s:21:"/media/video/pritches";i:715;s:21:"/media/video/pritches";i:721;s:33:"/media/video/ministry_record/news";i:722;s:28:"/media/video/ministry_record";i:731;s:33:"/media/video/seminars/about_faith";i:732;s:21:"/media/video/seminars";i:733;s:21:"/media/video/seminars";i:734;s:21:"/media/video/seminars";i:7211;s:39:"/media/video/ministry_record/news/video";i:7212;s:33:"/media/video/ministry_record/news";i:7221;s:28:"/media/video/ministry_record";i:7222;s:28:"/media/video/ministry_record";i:7223;s:28:"/media/video/ministry_record";i:7224;s:28:"/media/video/ministry_record";i:7225;s:6:"/media";i:7226;s:5:"/show";i:7227;s:11:"/video_show";i:7228;s:10:"/news_show";i:7229;s:16:"/ministries_show";i:7230;s:17:"/home_groups_show";i:7231;s:15:"/structure_show";i:7232;s:12:"/about_jesus";i:7233;s:9:"/load_map";i:7234;s:14:"/form_contacts";i:7235;s:9:"/messeges";i:7236;s:7:"/filter";i:7237;s:12:"/media/audio";i:7238;s:9:"/articles";i:7239;s:16:"/media/newspaper";i:7240;s:9:"/error404";i:7241;s:21:"/about_us/testemonies";i:7242;s:14:"/articles_show";i:7243;s:17:"/testemonies_show";i:7244;s:4:"/faq";}', 'a:74:{i:1;a:1:{i:0;a:5:{s:2:"id";s:1:"1";s:11:"subordinate";s:1:"0";s:4:"name";s:14:"Главная";s:3:"url";s:5:"/main";s:4:"page";s:4:"main";}}i:2;a:1:{i:0;a:5:{s:2:"id";s:1:"2";s:11:"subordinate";s:1:"0";s:4:"name";s:14:"Новости";s:3:"url";s:5:"/news";s:4:"page";s:4:"news";}}i:3;a:1:{i:0;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:4;a:1:{i:0;a:5:{s:2:"id";s:1:"4";s:11:"subordinate";s:1:"0";s:4:"name";s:24:"Деятельность";s:3:"url";s:18:"/about_us/activity";s:4:"page";s:8:"activity";}}i:5;a:2:{i:0;a:5:{s:2:"id";s:1:"5";s:11:"subordinate";s:1:"3";s:4:"name";s:18:"Структура";s:3:"url";s:19:"/about_us/structure";s:4:"page";s:9:"structure";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:6;a:2:{i:0;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:1;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7;a:2:{i:0;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:1;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:8;a:1:{i:0;a:5:{s:2:"id";s:1:"8";s:11:"subordinate";s:1:"0";s:4:"name";s:16:"Контакты";s:3:"url";s:9:"/contacts";s:4:"page";s:8:"contacts";}}i:10;a:1:{i:0;a:5:{s:2:"id";s:2:"10";s:11:"subordinate";s:1:"0";s:4:"name";s:30:"Узнать об Иисусе";s:3:"url";s:12:"/about_jesus";s:4:"page";s:11:"about_jesus";}}i:31;a:2:{i:0;a:5:{s:2:"id";s:2:"31";s:11:"subordinate";s:1:"3";s:4:"name";s:14:"История";s:3:"url";s:17:"/about_us/history";s:4:"page";s:7:"history";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:32;a:2:{i:0;a:5:{s:2:"id";s:2:"32";s:11:"subordinate";s:1:"3";s:4:"name";s:27:"Во что мы верим";s:3:"url";s:15:"/about_us/creed";s:4:"page";s:5:"creed";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:33;a:2:{i:0;a:5:{s:2:"id";s:2:"33";s:11:"subordinate";s:1:"3";s:4:"name";s:11:"Кто мы";s:3:"url";s:0:"";s:4:"page";s:10:"who_are_we";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:41;a:2:{i:0;a:5:{s:2:"id";s:2:"41";s:11:"subordinate";s:1:"4";s:4:"name";s:21:"Детский дом";s:3:"url";s:0:"";s:4:"page";s:9:"orphanage";}i:1;a:5:{s:2:"id";s:1:"4";s:11:"subordinate";s:1:"0";s:4:"name";s:24:"Деятельность";s:3:"url";s:18:"/about_us/activity";s:4:"page";s:8:"activity";}}i:42;a:2:{i:0;a:5:{s:2:"id";s:2:"42";s:11:"subordinate";s:1:"4";s:4:"name";s:25:"Путь Спасения";s:3:"url";s:0:"";s:4:"page";s:13:"salvation_way";}i:1;a:5:{s:2:"id";s:1:"4";s:11:"subordinate";s:1:"0";s:4:"name";s:24:"Деятельность";s:3:"url";s:18:"/about_us/activity";s:4:"page";s:8:"activity";}}i:51;a:3:{i:0;a:5:{s:2:"id";s:2:"51";s:11:"subordinate";s:1:"5";s:4:"name";s:29:"Общая структура";s:3:"url";s:0:"";s:4:"page";s:17:"general_structure";}i:1;a:5:{s:2:"id";s:1:"5";s:11:"subordinate";s:1:"3";s:4:"name";s:18:"Структура";s:3:"url";s:19:"/about_us/structure";s:4:"page";s:9:"structure";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:52;a:2:{i:0;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:53;a:2:{i:0;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:61;a:3:{i:0;a:5:{s:2:"id";s:2:"61";s:11:"subordinate";s:1:"6";s:4:"name";s:24:"Прославление";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:62;a:3:{i:0;a:5:{s:2:"id";s:2:"62";s:11:"subordinate";s:1:"6";s:4:"name";s:26:"Евангелизация";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:63;a:3:{i:0;a:5:{s:2:"id";s:2:"63";s:11:"subordinate";s:1:"6";s:4:"name";s:20:"Молодежное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:64;a:3:{i:0;a:5:{s:2:"id";s:2:"64";s:11:"subordinate";s:1:"6";s:4:"name";s:18:"Федоровка";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:65;a:3:{i:0;a:5:{s:2:"id";s:2:"65";s:11:"subordinate";s:1:"6";s:4:"name";s:24:"Танцевальное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:66;a:3:{i:0;a:5:{s:2:"id";s:2:"66";s:11:"subordinate";s:1:"6";s:4:"name";s:25:"Путь Спасения";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:71;a:3:{i:0;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:1;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:72;a:3:{i:0;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:1;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:73;a:3:{i:0;a:5:{s:2:"id";s:2:"73";s:11:"subordinate";s:1:"7";s:4:"name";s:16:"Семинары";s:3:"url";s:0:"";s:4:"page";s:8:"seminars";}i:1;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:2;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:521;a:3:{i:0;a:5:{s:2:"id";s:3:"521";s:11:"subordinate";s:2:"52";s:4:"name";s:24:"Прославление";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:522;a:3:{i:0;a:5:{s:2:"id";s:3:"522";s:11:"subordinate";s:2:"52";s:4:"name";s:26:"Евангелизация";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:523;a:3:{i:0;a:5:{s:2:"id";s:3:"523";s:11:"subordinate";s:2:"52";s:4:"name";s:20:"Молодежное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:524;a:3:{i:0;a:5:{s:2:"id";s:3:"524";s:11:"subordinate";s:2:"52";s:4:"name";s:21:"ЛОБ Сарепта";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:525;a:3:{i:0;a:5:{s:2:"id";s:3:"525";s:11:"subordinate";s:2:"52";s:4:"name";s:24:"Танцевальное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:531;a:3:{i:0;a:5:{s:2:"id";s:3:"531";s:11:"subordinate";s:2:"53";s:4:"name";s:20:"Молодежная";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:532;a:3:{i:0;a:5:{s:2:"id";s:3:"532";s:11:"subordinate";s:2:"53";s:4:"name";s:19:"Жени Собко";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:533;a:3:{i:0;a:5:{s:2:"id";s:3:"533";s:11:"subordinate";s:2:"53";s:4:"name";s:28:"Новообращенных";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:534;a:3:{i:0;a:5:{s:2:"id";s:3:"534";s:11:"subordinate";s:2:"53";s:4:"name";s:16:"Асланово";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:535;a:3:{i:0;a:5:{s:2:"id";s:3:"535";s:11:"subordinate";s:2:"53";s:4:"name";s:18:"Федоровка";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:536;a:3:{i:0;a:5:{s:2:"id";s:3:"536";s:11:"subordinate";s:2:"53";s:4:"name";s:20:"Пасторская";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:711;a:4:{i:0;a:5:{s:2:"id";s:3:"711";s:11:"subordinate";s:2:"71";s:4:"name";s:27:"Скоробогач С.П.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:712;a:4:{i:0;a:5:{s:2:"id";s:3:"712";s:11:"subordinate";s:2:"71";s:4:"name";s:27:"Скоробогач И.Ю.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:713;a:4:{i:0;a:5:{s:2:"id";s:3:"713";s:11:"subordinate";s:2:"71";s:4:"name";s:27:"Николаенко И.Н.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:714;a:4:{i:0;a:5:{s:2:"id";s:3:"714";s:11:"subordinate";s:2:"71";s:4:"name";s:21:"Паталах А.И.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:715;a:4:{i:0;a:5:{s:2:"id";s:3:"715";s:11:"subordinate";s:2:"71";s:4:"name";s:19:"Красий И.И.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:721;a:4:{i:0;a:5:{s:2:"id";s:3:"721";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2011";s:3:"url";s:0:"";s:4:"page";s:4:"news";}i:1;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:722;a:4:{i:0;a:5:{s:2:"id";s:3:"722";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2012";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:731;a:4:{i:0;a:5:{s:2:"id";s:3:"731";s:11:"subordinate";s:2:"73";s:4:"name";s:11:"О вере";s:3:"url";s:0:"";s:4:"page";s:11:"about_faith";}i:1;a:5:{s:2:"id";s:2:"73";s:11:"subordinate";s:1:"7";s:4:"name";s:16:"Семинары";s:3:"url";s:0:"";s:4:"page";s:8:"seminars";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:732;a:4:{i:0;a:5:{s:2:"id";s:3:"732";s:11:"subordinate";s:2:"73";s:4:"name";s:13:"О семье";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"73";s:11:"subordinate";s:1:"7";s:4:"name";s:16:"Семинары";s:3:"url";s:0:"";s:4:"page";s:8:"seminars";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:733;a:4:{i:0;a:5:{s:2:"id";s:3:"733";s:11:"subordinate";s:2:"73";s:4:"name";s:19:"О финансах";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"73";s:11:"subordinate";s:1:"7";s:4:"name";s:16:"Семинары";s:3:"url";s:0:"";s:4:"page";s:8:"seminars";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:734;a:4:{i:0;a:5:{s:2:"id";s:3:"734";s:11:"subordinate";s:2:"73";s:4:"name";s:19:"О служении";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:2:"73";s:11:"subordinate";s:1:"7";s:4:"name";s:16:"Семинары";s:3:"url";s:0:"";s:4:"page";s:8:"seminars";}i:2;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:3;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7211;a:5:{i:0;a:5:{s:2:"id";s:4:"7211";s:11:"subordinate";s:3:"721";s:4:"name";s:21:"3 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:5:"video";}i:1;a:5:{s:2:"id";s:3:"721";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2011";s:3:"url";s:0:"";s:4:"page";s:4:"news";}i:2;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:3;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:4;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7212;a:5:{i:0;a:5:{s:2:"id";s:4:"7212";s:11:"subordinate";s:3:"721";s:4:"name";s:21:"4 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:3:"721";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2011";s:3:"url";s:0:"";s:4:"page";s:4:"news";}i:2;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:3;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:4;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7221;a:5:{i:0;a:5:{s:2:"id";s:4:"7221";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"1 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:3:"722";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2012";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:2;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:3;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:4;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7222;a:5:{i:0;a:5:{s:2:"id";s:4:"7222";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"2 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:3:"722";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2012";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:2;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:3;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:4;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7223;a:5:{i:0;a:5:{s:2:"id";s:4:"7223";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"3 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:3:"722";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2012";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:2;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:3;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:4;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7224;a:5:{i:0;a:5:{s:2:"id";s:4:"7224";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"4 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:1;a:5:{s:2:"id";s:3:"722";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2012";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:2;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:3;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:4;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7225;a:1:{i:0;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7226;a:1:{i:0;a:5:{s:2:"id";s:4:"7226";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:4:"show";}}i:7227;a:1:{i:0;a:5:{s:2:"id";s:4:"7227";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:10:"video_show";}}i:7228;a:1:{i:0;a:5:{s:2:"id";s:4:"7228";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:9:"news_show";}}i:7229;a:1:{i:0;a:5:{s:2:"id";s:4:"7229";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:15:"ministries_show";}}i:7230;a:1:{i:0;a:5:{s:2:"id";s:4:"7230";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:16:"home_groups_show";}}i:7231;a:1:{i:0;a:5:{s:2:"id";s:4:"7231";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:14:"structure_show";}}i:7232;a:1:{i:0;a:5:{s:2:"id";s:4:"7232";s:11:"subordinate";s:1:"0";s:4:"name";s:17:"об Иисусе";s:3:"url";s:12:"/about_jesus";s:4:"page";s:11:"about_jesus";}}i:7233;a:1:{i:0;a:5:{s:2:"id";s:4:"7233";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:9:"/load_map";s:4:"page";s:8:"load_map";}}i:7234;a:1:{i:0;a:5:{s:2:"id";s:4:"7234";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:14:"/form_contacts";s:4:"page";s:13:"form_contacts";}}i:7235;a:1:{i:0;a:5:{s:2:"id";s:4:"7235";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:9:"/messeges";s:4:"page";s:8:"messeges";}}i:7236;a:1:{i:0;a:5:{s:2:"id";s:4:"7236";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:7:"/filter";s:4:"page";s:6:"filter";}}i:7237;a:2:{i:0;a:5:{s:2:"id";s:4:"7237";s:11:"subordinate";s:4:"7225";s:4:"name";s:0:"";s:3:"url";s:12:"/media/audio";s:4:"page";s:5:"audio";}i:1;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7238;a:1:{i:0;a:5:{s:2:"id";s:4:"7238";s:11:"subordinate";s:1:"0";s:4:"name";s:8:"Блог";s:3:"url";s:9:"/articles";s:4:"page";s:8:"articles";}}i:7239;a:2:{i:0;a:5:{s:2:"id";s:4:"7239";s:11:"subordinate";s:4:"7225";s:4:"name";s:39:"Газета &quot;Рассвет&quot;";s:3:"url";s:16:"/media/newspaper";s:4:"page";s:9:"newspaper";}i:1;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}}i:7240;a:1:{i:0;a:5:{s:2:"id";s:4:"7240";s:11:"subordinate";s:1:"0";s:4:"name";s:20:"Страница 404";s:3:"url";s:9:"/error404";s:4:"page";s:8:"error404";}}i:7241;a:2:{i:0;a:5:{s:2:"id";s:4:"7241";s:11:"subordinate";s:1:"3";s:4:"name";s:26:"Свидетельства";s:3:"url";s:21:"/about_us/testemonies";s:4:"page";s:11:"testemonies";}i:1;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}}i:7242;a:1:{i:0;a:5:{s:2:"id";s:4:"7242";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:13:"articles_show";}}i:7243;a:1:{i:0;a:5:{s:2:"id";s:4:"7243";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:16:"testemonies_show";}}i:7244;a:1:{i:0;a:5:{s:2:"id";s:4:"7244";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:4:"/faq";s:4:"page";s:3:"faq";}}}', 'a:74:{i:0;a:5:{s:2:"id";s:1:"1";s:11:"subordinate";s:1:"0";s:4:"name";s:14:"Главная";s:3:"url";s:5:"/main";s:4:"page";s:4:"main";}i:1;a:5:{s:2:"id";s:1:"2";s:11:"subordinate";s:1:"0";s:4:"name";s:14:"Новости";s:3:"url";s:5:"/news";s:4:"page";s:4:"news";}i:2;a:5:{s:2:"id";s:1:"3";s:11:"subordinate";s:1:"0";s:4:"name";s:9:"О нас";s:3:"url";s:9:"/about_us";s:4:"page";s:8:"about_us";}i:3;a:5:{s:2:"id";s:1:"4";s:11:"subordinate";s:1:"0";s:4:"name";s:24:"Деятельность";s:3:"url";s:18:"/about_us/activity";s:4:"page";s:8:"activity";}i:4;a:5:{s:2:"id";s:1:"5";s:11:"subordinate";s:1:"3";s:4:"name";s:18:"Структура";s:3:"url";s:19:"/about_us/structure";s:4:"page";s:9:"structure";}i:5;a:5:{s:2:"id";s:1:"6";s:11:"subordinate";s:4:"7225";s:4:"name";s:14:"Галерея";s:3:"url";s:17:"/about_us/gallery";s:4:"page";s:7:"gallery";}i:6;a:5:{s:2:"id";s:1:"7";s:11:"subordinate";s:4:"7225";s:4:"name";s:10:"Видео";s:3:"url";s:15:"/about_us/video";s:4:"page";s:5:"video";}i:7;a:5:{s:2:"id";s:1:"8";s:11:"subordinate";s:1:"0";s:4:"name";s:16:"Контакты";s:3:"url";s:9:"/contacts";s:4:"page";s:8:"contacts";}i:8;a:5:{s:2:"id";s:2:"10";s:11:"subordinate";s:1:"0";s:4:"name";s:30:"Узнать об Иисусе";s:3:"url";s:12:"/about_jesus";s:4:"page";s:11:"about_jesus";}i:9;a:5:{s:2:"id";s:2:"31";s:11:"subordinate";s:1:"3";s:4:"name";s:14:"История";s:3:"url";s:17:"/about_us/history";s:4:"page";s:7:"history";}i:10;a:5:{s:2:"id";s:2:"32";s:11:"subordinate";s:1:"3";s:4:"name";s:27:"Во что мы верим";s:3:"url";s:15:"/about_us/creed";s:4:"page";s:5:"creed";}i:11;a:5:{s:2:"id";s:2:"33";s:11:"subordinate";s:1:"3";s:4:"name";s:11:"Кто мы";s:3:"url";s:0:"";s:4:"page";s:10:"who_are_we";}i:12;a:5:{s:2:"id";s:2:"41";s:11:"subordinate";s:1:"4";s:4:"name";s:21:"Детский дом";s:3:"url";s:0:"";s:4:"page";s:9:"orphanage";}i:13;a:5:{s:2:"id";s:2:"42";s:11:"subordinate";s:1:"4";s:4:"name";s:25:"Путь Спасения";s:3:"url";s:0:"";s:4:"page";s:13:"salvation_way";}i:14;a:5:{s:2:"id";s:2:"51";s:11:"subordinate";s:1:"5";s:4:"name";s:29:"Общая структура";s:3:"url";s:0:"";s:4:"page";s:17:"general_structure";}i:15;a:5:{s:2:"id";s:2:"52";s:11:"subordinate";s:1:"3";s:4:"name";s:16:"Служения";s:3:"url";s:20:"/about_us/ministries";s:4:"page";s:10:"ministries";}i:16;a:5:{s:2:"id";s:2:"53";s:11:"subordinate";s:1:"3";s:4:"name";s:29:"Домашние группы";s:3:"url";s:21:"/about_us/home_groups";s:4:"page";s:11:"home_groups";}i:17;a:5:{s:2:"id";s:2:"61";s:11:"subordinate";s:1:"6";s:4:"name";s:24:"Прославление";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:18;a:5:{s:2:"id";s:2:"62";s:11:"subordinate";s:1:"6";s:4:"name";s:26:"Евангелизация";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:19;a:5:{s:2:"id";s:2:"63";s:11:"subordinate";s:1:"6";s:4:"name";s:20:"Молодежное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:20;a:5:{s:2:"id";s:2:"64";s:11:"subordinate";s:1:"6";s:4:"name";s:18:"Федоровка";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:21;a:5:{s:2:"id";s:2:"65";s:11:"subordinate";s:1:"6";s:4:"name";s:24:"Танцевальное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:22;a:5:{s:2:"id";s:2:"66";s:11:"subordinate";s:1:"6";s:4:"name";s:25:"Путь Спасения";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:23;a:5:{s:2:"id";s:2:"71";s:11:"subordinate";s:1:"7";s:4:"name";s:18:"Проповеди";s:3:"url";s:0:"";s:4:"page";s:8:"pritches";}i:24;a:5:{s:2:"id";s:2:"72";s:11:"subordinate";s:1:"7";s:4:"name";s:47:"Видеозаписи Богослужений";s:3:"url";s:0:"";s:4:"page";s:15:"ministry_record";}i:25;a:5:{s:2:"id";s:2:"73";s:11:"subordinate";s:1:"7";s:4:"name";s:16:"Семинары";s:3:"url";s:0:"";s:4:"page";s:8:"seminars";}i:26;a:5:{s:2:"id";s:3:"521";s:11:"subordinate";s:2:"52";s:4:"name";s:24:"Прославление";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:27;a:5:{s:2:"id";s:3:"522";s:11:"subordinate";s:2:"52";s:4:"name";s:26:"Евангелизация";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:28;a:5:{s:2:"id";s:3:"523";s:11:"subordinate";s:2:"52";s:4:"name";s:20:"Молодежное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:29;a:5:{s:2:"id";s:3:"524";s:11:"subordinate";s:2:"52";s:4:"name";s:21:"ЛОБ Сарепта";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:30;a:5:{s:2:"id";s:3:"525";s:11:"subordinate";s:2:"52";s:4:"name";s:24:"Танцевальное";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:31;a:5:{s:2:"id";s:3:"531";s:11:"subordinate";s:2:"53";s:4:"name";s:20:"Молодежная";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:32;a:5:{s:2:"id";s:3:"532";s:11:"subordinate";s:2:"53";s:4:"name";s:19:"Жени Собко";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:33;a:5:{s:2:"id";s:3:"533";s:11:"subordinate";s:2:"53";s:4:"name";s:28:"Новообращенных";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:34;a:5:{s:2:"id";s:3:"534";s:11:"subordinate";s:2:"53";s:4:"name";s:16:"Асланово";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:35;a:5:{s:2:"id";s:3:"535";s:11:"subordinate";s:2:"53";s:4:"name";s:18:"Федоровка";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:36;a:5:{s:2:"id";s:3:"536";s:11:"subordinate";s:2:"53";s:4:"name";s:20:"Пасторская";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:37;a:5:{s:2:"id";s:3:"711";s:11:"subordinate";s:2:"71";s:4:"name";s:27:"Скоробогач С.П.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:38;a:5:{s:2:"id";s:3:"712";s:11:"subordinate";s:2:"71";s:4:"name";s:27:"Скоробогач И.Ю.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:39;a:5:{s:2:"id";s:3:"713";s:11:"subordinate";s:2:"71";s:4:"name";s:27:"Николаенко И.Н.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:40;a:5:{s:2:"id";s:3:"714";s:11:"subordinate";s:2:"71";s:4:"name";s:21:"Паталах А.И.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:41;a:5:{s:2:"id";s:3:"715";s:11:"subordinate";s:2:"71";s:4:"name";s:19:"Красий И.И.";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:42;a:5:{s:2:"id";s:3:"721";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2011";s:3:"url";s:0:"";s:4:"page";s:4:"news";}i:43;a:5:{s:2:"id";s:3:"722";s:11:"subordinate";s:2:"72";s:4:"name";s:4:"2012";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:44;a:5:{s:2:"id";s:3:"731";s:11:"subordinate";s:2:"73";s:4:"name";s:11:"О вере";s:3:"url";s:0:"";s:4:"page";s:11:"about_faith";}i:45;a:5:{s:2:"id";s:3:"732";s:11:"subordinate";s:2:"73";s:4:"name";s:13:"О семье";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:46;a:5:{s:2:"id";s:3:"733";s:11:"subordinate";s:2:"73";s:4:"name";s:19:"О финансах";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:47;a:5:{s:2:"id";s:3:"734";s:11:"subordinate";s:2:"73";s:4:"name";s:19:"О служении";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:48;a:5:{s:2:"id";s:4:"7211";s:11:"subordinate";s:3:"721";s:4:"name";s:21:"3 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:5:"video";}i:49;a:5:{s:2:"id";s:4:"7212";s:11:"subordinate";s:3:"721";s:4:"name";s:21:"4 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:50;a:5:{s:2:"id";s:4:"7221";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"1 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:51;a:5:{s:2:"id";s:4:"7222";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"2 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:52;a:5:{s:2:"id";s:4:"7223";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"3 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:53;a:5:{s:2:"id";s:4:"7224";s:11:"subordinate";s:3:"722";s:4:"name";s:21:"4 квартал 2011";s:3:"url";s:0:"";s:4:"page";s:0:"";}i:54;a:5:{s:2:"id";s:4:"7225";s:11:"subordinate";s:1:"0";s:4:"name";s:10:"Медиа";s:3:"url";s:6:"/media";s:4:"page";s:5:"media";}i:55;a:5:{s:2:"id";s:4:"7226";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:4:"show";}i:56;a:5:{s:2:"id";s:4:"7227";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:10:"video_show";}i:57;a:5:{s:2:"id";s:4:"7228";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:9:"news_show";}i:58;a:5:{s:2:"id";s:4:"7229";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:15:"ministries_show";}i:59;a:5:{s:2:"id";s:4:"7230";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:16:"home_groups_show";}i:60;a:5:{s:2:"id";s:4:"7231";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:14:"structure_show";}i:61;a:5:{s:2:"id";s:4:"7232";s:11:"subordinate";s:1:"0";s:4:"name";s:17:"об Иисусе";s:3:"url";s:12:"/about_jesus";s:4:"page";s:11:"about_jesus";}i:62;a:5:{s:2:"id";s:4:"7233";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:9:"/load_map";s:4:"page";s:8:"load_map";}i:63;a:5:{s:2:"id";s:4:"7234";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:14:"/form_contacts";s:4:"page";s:13:"form_contacts";}i:64;a:5:{s:2:"id";s:4:"7235";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:9:"/messeges";s:4:"page";s:8:"messeges";}i:65;a:5:{s:2:"id";s:4:"7236";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:7:"/filter";s:4:"page";s:6:"filter";}i:66;a:5:{s:2:"id";s:4:"7237";s:11:"subordinate";s:4:"7225";s:4:"name";s:0:"";s:3:"url";s:12:"/media/audio";s:4:"page";s:5:"audio";}i:67;a:5:{s:2:"id";s:4:"7238";s:11:"subordinate";s:1:"0";s:4:"name";s:8:"Блог";s:3:"url";s:9:"/articles";s:4:"page";s:8:"articles";}i:68;a:5:{s:2:"id";s:4:"7239";s:11:"subordinate";s:4:"7225";s:4:"name";s:39:"Газета &quot;Рассвет&quot;";s:3:"url";s:16:"/media/newspaper";s:4:"page";s:9:"newspaper";}i:69;a:5:{s:2:"id";s:4:"7240";s:11:"subordinate";s:1:"0";s:4:"name";s:20:"Страница 404";s:3:"url";s:9:"/error404";s:4:"page";s:8:"error404";}i:70;a:5:{s:2:"id";s:4:"7241";s:11:"subordinate";s:1:"3";s:4:"name";s:26:"Свидетельства";s:3:"url";s:21:"/about_us/testemonies";s:4:"page";s:11:"testemonies";}i:71;a:5:{s:2:"id";s:4:"7242";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:13:"articles_show";}i:72;a:5:{s:2:"id";s:4:"7243";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:0:"";s:4:"page";s:16:"testemonies_show";}i:73;a:5:{s:2:"id";s:4:"7244";s:11:"subordinate";s:1:"0";s:4:"name";s:0:"";s:3:"url";s:4:"/faq";s:4:"page";s:3:"faq";}}');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL,
  `adress` text NOT NULL,
  `phones` text NOT NULL,
  `location_map` text NOT NULL,
  `e-mail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `adress`, `phones`, `location_map`, `e-mail`) VALUES
(1, '87529, г.Мариуполь<br/> ул. Московская, 59/12', '<p>факс:+38 (0629) 00-00-00<br>\r\nтел: +38 (067) 000-00-00<br></p>', '<li><p>Троллейбусом №15<p></li>\r\n                <li><p>Маршрутными такси №25, №100,</br>\r\n                       №112, №124, №153, №201<p></li>', '<p>электронный адрес:<br>\n        AndVakhJur@mail.ru<br></p>');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_messeges`
--

CREATE TABLE IF NOT EXISTS `contacts_messeges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Дамп данных таблицы `contacts_messeges`
--

INSERT INTO `contacts_messeges` (`id`, `name`, `phone`, `email`, `txt`, `date`) VALUES
(48, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'aaa', '2013-02-05 22:46:33'),
(77, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'kkkkkkkkkkkk', '2013-03-16 08:44:13'),
(76, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'pppppppppppppppppppp', '2013-03-12 18:04:51'),
(75, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', 'pppppppppppp', '2013-03-02 09:30:52'),
(74, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'lllllllllll', '2013-03-02 09:30:17'),
(73, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', 'kjlkjhkujk', '2013-03-02 09:25:54'),
(72, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', 'mmmmmmmmmmmmmmmmm', '2013-03-02 08:59:39'),
(71, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', 'bbbbbbbbbbbbbbbbbb', '2013-03-02 08:58:37'),
(70, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '2013-03-02 08:58:09'),
(69, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', 'qklxqwxjnqwojnwkj', '2013-03-02 08:53:31'),
(68, 'aaaaaaaaa', '88-88-88', 'andvakhjur@mail.ru', 'jbniubibiyby', '2013-03-02 08:34:08'),
(67, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'kkkkkkkkkkkk', '2013-03-02 08:18:51');

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `answer` text NOT NULL,
  `answered` int(11) NOT NULL DEFAULT '1',
  `show` tinyint(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `answer_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `faq`
--

INSERT INTO `faq` (`id`, `name`, `phone`, `email`, `txt`, `answer`, `answered`, `show`, `date`, `answer_date`) VALUES
(1, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'aaa', 'ssss', 1, 0, '2013-02-15 17:28:33', '2013-02-15 17:25:34'),
(2, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'почему крокодилы не летают?', 'потому что гладиолуc', 1, 1, '2013-02-15 17:33:56', '2013-02-15 17:33:06'),
(3, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'aaaaaaaaaaaa', 'ololoj', 1, 0, '2013-02-15 17:28:36', '2013-02-15 17:26:17'),
(4, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'aaaaaaaaaaaaaaaaaaa', 'ssssssknnnssss', 2, 0, '2013-02-15 17:28:42', '2013-02-15 17:26:23'),
(6, 'ololo', '88-88-88', 'AndVakhJur@mail.ru', 'ololo', 'xxxxxxxxxxmnknk', 3, 0, '2013-02-15 17:26:27', '2013-02-15 17:26:27'),
(7, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'aaaaaaaaaaaaaaaaa', '', 1, 0, '2013-02-16 08:07:22', '0000-00-00 00:00:00'),
(8, 'andry', '88-88-88', 'andvakhjur@mail.ru', 'sjvnkjvnksdfjvndkjcvndjvnkjdvkjvnkjv njcvnrj nrvj njvnerjnvrje n', '', 1, 0, '2013-02-19 20:56:35', '0000-00-00 00:00:00'),
(9, 'andry', '88-88-88', 'AndVakhJur@mail.ru', 'askcmaskcaic', '', 1, 0, '2013-03-02 09:26:23', '0000-00-00 00:00:00'),
(10, 'aaaa', '88-88-88', 'andvakhjur@mail.ru', ']]]]]]]]]]]]]]]]]]]', '', 1, 0, '2013-03-02 09:31:37', '0000-00-00 00:00:00');

--
-- Триггеры `faq`
--
DROP TRIGGER IF EXISTS `answer`;
DELIMITER //
CREATE TRIGGER `answer` BEFORE UPDATE ON `faq`
 FOR EACH ROW IF(NEW.answer <> OLD.answer) THEN
SET NEW.answer_date = NOW();
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_articles`
--

CREATE TABLE IF NOT EXISTS `filter_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elem_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `section` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `category` (`category`),
  KEY `subcategory` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Дамп данных таблицы `filter_articles`
--

INSERT INTO `filter_articles` (`id`, `elem_id`, `date`, `section`, `category`, `subcategory`) VALUES
(2, 2, '2013-03-03', 'themes', 'character', '');

-- --------------------------------------------------------

--
-- Структура таблицы `filter_audio`
--

CREATE TABLE IF NOT EXISTS `filter_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elem_id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `category` (`category`),
  KEY `subcategory` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `filter_audio`
--

INSERT INTO `filter_audio` (`id`, `elem_id`, `section`, `category`, `subcategory`) VALUES
(1, 1, 'music', '', ''),
(2, 2, 'music', '', ''),
(3, 3, 'music', '', ''),
(4, 4, 'music', '', ''),
(5, 5, 'music', '', ''),
(6, 6, 'music', '', ''),
(7, 7, 'pritches', '', ''),
(8, 8, 'pritches', '', ''),
(9, 9, 'pritches', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `filter_categories`
--

CREATE TABLE IF NOT EXISTS `filter_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `news` tinyint(1) NOT NULL DEFAULT '1',
  `video` tinyint(1) NOT NULL DEFAULT '1',
  `articles` tinyint(1) NOT NULL DEFAULT '1',
  `gallery` tinyint(1) NOT NULL DEFAULT '1',
  `subordinate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subordinate` (`subordinate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `filter_categories`
--

INSERT INTO `filter_categories` (`id`, `title`, `value`, `news`, `video`, `articles`, `gallery`, `subordinate`) VALUES
(1, 'Гости', 'guests', 1, 1, 1, 1, 'seminars'),
(2, 'Темы', 'themes', 1, 1, 1, 1, 'seminars'),
(3, 'Служителя', 'structure', 1, 1, 1, 1, 'seminars'),
(4, 'Служителя', 'structure', 1, 1, 1, 1, 'pritches'),
(5, 'Гости', 'guests', 1, 1, 1, 1, 'pritches'),
(6, 'Темы', 'themes', 1, 1, 1, 1, 'pritches'),
(7, 'Любовь', 'love', 1, 1, 1, 1, 'themes'),
(8, 'Вера', 'faith', 1, 1, 1, 1, 'themes'),
(9, 'Надежда', 'hope', 1, 1, 1, 1, 'themes'),
(10, 'Исцеление', 'healing', 1, 1, 1, 1, 'themes'),
(11, 'Дух Святой', 'holy_spirit', 1, 1, 1, 1, 'themes'),
(12, 'Евангелие', 'gospel', 1, 1, 1, 1, 'themes'),
(13, 'Прощение', 'forgiveness', 1, 1, 1, 1, 'themes'),
(14, 'Грех', 'sin', 1, 1, 1, 1, 'themes'),
(15, 'Спасение', 'salvation', 1, 1, 1, 1, 'themes'),
(16, 'Процветание', 'prosperity', 1, 1, 1, 1, 'themes'),
(17, 'Все', 'all', 1, 1, 1, 1, 'all'),
(18, 'Молодежная', 'youth_home_group', 1, 1, 1, 1, 'home_groups'),
(19, 'Виктора Педана', 'viktor_pedan_home_group', 1, 1, 1, 1, 'home_groups'),
(20, 'Жени Собко', 'jenya_sobko_home_group', 1, 1, 1, 1, 'home_groups'),
(21, 'Евангелизационная', 'evangelisation_home_group', 1, 1, 1, 1, 'home_groups'),
(22, 'Подростковая', 'teen__home_group', 1, 1, 1, 1, 'home_groups'),
(23, 'на Федоровке', 'fedorovka_home_group', 1, 1, 1, 1, 'home_groups'),
(24, 'Прославление', 'worship', 1, 1, 1, 1, 'ministries'),
(25, 'Молодежное', 'youth', 1, 1, 1, 1, 'ministries'),
(26, 'Танцевальное', 'dance', 1, 1, 1, 1, 'ministries'),
(27, 'Евангелизация', 'evangelisation', 1, 1, 1, 1, 'ministries'),
(28, 'Детское', 'kids', 1, 1, 1, 1, 'ministries'),
(29, 'Подростковое', 'teen', 1, 1, 1, 1, 'ministries'),
(30, 'Путь спасения', 'salvation_way', 1, 1, 1, 1, 'ministries'),
(31, 'Молитвенное', 'praise', 1, 1, 1, 1, 'ministries'),
(32, 'ДОЦ Сарепта', 'sarepta', 1, 1, 1, 1, 'ministries'),
(33, 'Скоробогач С.П.', 'skorobogach-sergey-petrovich', 1, 1, 1, 1, 'structure'),
(34, 'Левитский М.Б.', 'levitskiy-mihail', 1, 1, 1, 1, 'structure'),
(35, 'Перканюк В.Б.', 'perkanuk-vladimir', 1, 1, 1, 1, 'structure'),
(36, 'Скоробогач И.Ю.', 'skorobogach-inga-julievna', 1, 1, 1, 1, 'structure'),
(37, 'на Федоровке', 'na_fedorovke', 0, 0, 0, 1, 'jenya_sobko_home_group'),
(38, 'Шашлыки на Федоровке', 'shashliki_na_fedorovke', 0, 0, 0, 1, 'youth_home_group'),
(39, 'на Служении', 'na_slujenii', 0, 0, 0, 1, 'jenya_sobko_home_group'),
(40, 'В поездке', 'v_poezdke', 0, 0, 0, 1, 'youth_home_group'),
(41, 'Свадьба', 'svadba', 0, 0, 0, 1, 'youth'),
(42, 'Характер', 'character', 1, 1, 1, 1, 'themes');

-- --------------------------------------------------------

--
-- Структура таблицы `filter_gallery`
--

CREATE TABLE IF NOT EXISTS `filter_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elem_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `section` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `category` (`category`),
  KEY `subcategory` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Дамп данных таблицы `filter_gallery`
--

INSERT INTO `filter_gallery` (`id`, `elem_id`, `date`, `section`, `category`, `subcategory`) VALUES
(1, 1, '2012-12-13', 'bratiya_sestri', '', ''),
(2, 2, '2012-12-14', 'bratiya_sestri', '', ''),
(3, 3, '2012-12-21', 'bratiya_sestri', '', ''),
(4, 4, '2012-12-21', 'bratiya_sestri', '', ''),
(5, 5, '2012-12-26', 'bratiya_sestri', '', ''),
(6, 6, '2012-12-21', 'bratiya_sestri', '', ''),
(7, 7, '2012-12-21', 'bratiya_sestri', '', ''),
(8, 8, '2012-12-21', 'bratiya_sestri', '', ''),
(9, 9, '2012-12-21', 'bratiya_sestri', '', ''),
(10, 10, '2012-12-21', 'bratiya_sestri', '', ''),
(11, 11, '2012-12-21', 'bratiya_sestri', '', ''),
(12, 12, '2012-12-21', 'bratiya_sestri', '', ''),
(13, 13, '2012-12-21', 'bratiya_sestri', '', ''),
(14, 14, '2012-12-21', 'bratiya_sestri', '', ''),
(15, 15, '2012-12-21', 'bratiya_sestri', '', ''),
(16, 16, '2012-12-21', 'bratiya_sestri', '', ''),
(17, 17, '2012-12-21', 'bratiya_sestri', '', ''),
(32, 18, '2012-12-21', 'bratiya_sestri', '', ''),
(19, 19, '2012-12-21', 'bratiya_sestri', '', ''),
(20, 20, '2012-12-21', 'bratiya_sestri', '', ''),
(21, 21, '2012-12-21', 'bratiya_sestri', '', ''),
(22, 22, '2012-12-21', 'bratiya_sestri', '', ''),
(23, 23, '2012-12-21', 'bratiya_sestri', '', ''),
(24, 24, '2012-12-21', 'bratiya_sestri', '', ''),
(25, 25, '2012-12-21', 'bratiya_sestri', '', ''),
(26, 26, '2012-12-21', 'bratiya_sestri', '', ''),
(27, 27, '2012-12-21', 'bratiya_sestri', '', ''),
(28, 28, '2012-12-21', 'bratiya_sestri', '', ''),
(29, 29, '2012-12-21', 'bratiya_sestri', '', ''),
(30, 30, '2012-12-21', 'bratiya_sestri', '', ''),
(31, 31, '2012-12-21', 'bratiya_sestri', '', ''),
(33, 33, '2012-12-13', 'home_groups', '', ''),
(34, 34, '2012-12-14', 'home_groups', '', ''),
(35, 35, '2012-12-21', 'home_groups', '', ''),
(36, 36, '2012-12-21', 'home_groups', '', ''),
(37, 37, '2012-12-26', 'home_groups', '', ''),
(38, 38, '2012-12-21', 'home_groups', '', ''),
(39, 39, '2012-12-21', 'home_groups', '', ''),
(40, 40, '2012-12-21', 'home_groups', '', ''),
(41, 41, '2012-12-21', 'bratiya_sestri', '', ''),
(42, 42, '2012-12-21', 'bratiya_sestri', '', ''),
(43, 43, '2012-12-13', 'ministries', '', ''),
(44, 44, '2012-12-13', 'ministries', '', ''),
(45, 45, '2012-12-13', 'ministries', '', ''),
(46, 46, '2012-12-13', 'ministries', '', ''),
(47, 47, '2012-12-13', 'ministries', '', ''),
(48, 48, '2012-12-13', 'ministries', '', ''),
(49, 49, '2012-12-13', 'ministries', '', ''),
(50, 50, '2012-12-13', 'ministries', '', ''),
(51, 51, '2012-12-13', 'ministries', '', ''),
(52, 52, '2012-12-13', 'ministries', '', ''),
(53, 53, '2012-12-13', 'ministries', '', ''),
(54, 54, '2012-12-13', 'ministries', '', ''),
(55, 55, '2012-12-13', 'ministries', '', ''),
(56, 56, '2012-12-13', 'ministries', '', ''),
(57, 57, '2012-12-13', 'ministries', '', ''),
(58, 58, '2012-12-13', 'ministries', '', ''),
(59, 59, '2012-12-13', 'ministries', '', ''),
(60, 60, '2012-12-13', 'ministries', '', ''),
(61, 61, '2012-12-13', 'ministries', '', ''),
(62, 62, '2012-12-13', 'ministries', '', ''),
(63, 63, '2012-12-13', 'ministries', '', ''),
(64, 64, '2012-12-13', 'ministries', '', ''),
(65, 65, '2012-12-13', 'church_service', '', ''),
(66, 66, '2012-12-13', 'church_service', '', ''),
(67, 67, '2012-12-13', 'church_service', '', ''),
(68, 68, '2012-12-13', 'church_service', '', ''),
(69, 69, '2012-12-13', 'church_service', '', ''),
(70, 70, '2012-12-13', 'church_service', '', ''),
(71, 71, '2012-12-13', 'church_service', '', ''),
(72, 72, '2012-12-13', 'church_service', '', ''),
(73, 73, '2012-12-13', 'church_service', '', ''),
(74, 74, '2012-12-13', 'church_service', '', ''),
(75, 75, '2012-12-13', 'church_service', '', ''),
(76, 76, '2012-12-13', 'church_service', '', ''),
(77, 78, '2012-12-13', 'church_service', '', ''),
(78, 79, '2012-12-13', 'church_service', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `filter_news`
--

CREATE TABLE IF NOT EXISTS `filter_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elem_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `section` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `category` (`category`),
  KEY `subcategory` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Дамп данных таблицы `filter_news`
--

INSERT INTO `filter_news` (`id`, `elem_id`, `date`, `section`, `category`, `subcategory`) VALUES
(1, 1, '2012-12-13', 'ministries', 'youth', ''),
(22, 1, '2012-12-21', 'ministries', 'worship', ''),
(23, 1, '2012-12-21', 'ministries', 'youth', '');

-- --------------------------------------------------------

--
-- Структура таблицы `filter_sections`
--

CREATE TABLE IF NOT EXISTS `filter_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `audio` tinyint(1) NOT NULL DEFAULT '1',
  `video` tinyint(1) NOT NULL DEFAULT '1',
  `news` tinyint(1) NOT NULL DEFAULT '1',
  `articles` tinyint(1) NOT NULL DEFAULT '1',
  `gallery` tinyint(1) NOT NULL DEFAULT '1',
  `testemonies` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `filter_sections`
--

INSERT INTO `filter_sections` (`id`, `title`, `value`, `audio`, `video`, `news`, `articles`, `gallery`, `testemonies`) VALUES
(1, 'Служения', 'ministries', 0, 1, 1, 1, 1, 0),
(2, 'Домашние группы', 'home_groups', 0, 1, 1, 1, 1, 0),
(3, 'Богослужения', 'church_service', 0, 1, 0, 0, 1, 0),
(4, 'Новости', 'news', 0, 1, 0, 0, 0, 0),
(6, 'Семинары', 'seminars', 1, 0, 0, 0, 0, 0),
(7, 'Проповеди', 'pritches', 1, 0, 0, 0, 0, 0),
(8, 'Темы', 'themes', 0, 0, 1, 1, 0, 1),
(9, 'Служителя', 'structure', 1, 0, 0, 1, 0, 1),
(10, 'Музыка', 'music', 1, 1, 0, 0, 0, 0),
(11, 'История', 'history', 0, 1, 0, 0, 1, 0),
(12, 'Исполнители', 'performer', 1, 0, 0, 0, 0, 0),
(13, 'Братья и сестры', 'bratiya_sestri', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `filter_testemonies`
--

CREATE TABLE IF NOT EXISTS `filter_testemonies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elem_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `section` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `category` (`category`),
  KEY `subcategory` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Дамп данных таблицы `filter_testemonies`
--

INSERT INTO `filter_testemonies` (`id`, `elem_id`, `date`, `section`, `category`, `subcategory`) VALUES
(1, 1, '2012-12-13', 'themes', 'hope', ''),
(2, 2, '2012-12-14', 'themes', 'love', ''),
(3, 3, '2012-12-21', 'themes', 'love', ''),
(4, 4, '2012-12-21', 'themes', 'hope', ''),
(5, 5, '2012-12-26', 'themes', 'hope', ''),
(6, 6, '2012-12-21', 'themes', 'love', ''),
(7, 7, '2012-12-21', 'themes', 'love', ''),
(8, 8, '2012-12-21', 'themes', 'hope', ''),
(9, 9, '2012-12-21', 'themes', 'hope', ''),
(10, 10, '2012-12-21', 'themes', 'love', ''),
(11, 11, '2012-12-21', 'themes', 'hope', ''),
(12, 12, '2012-12-21', 'themes', 'love', ''),
(13, 13, '2012-12-21', 'themes', 'love', ''),
(14, 14, '2012-12-21', 'themes', 'love', ''),
(15, 15, '2012-12-21', 'themes', 'love', ''),
(16, 16, '2012-12-21', 'themes', 'love', ''),
(17, 17, '2012-12-21', 'themes', 'love', ''),
(18, 18, '2012-12-21', 'themes', 'love', ''),
(19, 19, '2012-12-21', 'themes', 'love', ''),
(20, 20, '2012-12-21', 'themes', 'love', ''),
(21, 21, '2012-12-21', 'themes', 'love', ''),
(22, 3, '2012-12-21', 'themes', 'love', ''),
(23, 4, '2012-12-21', 'themes', 'love', ''),
(24, 5, '2012-12-21', 'themes', 'love', ''),
(25, 6, '2012-12-21', 'themes', 'love', ''),
(26, 7, '2012-12-21', 'themes', 'love', ''),
(27, 8, '2012-12-21', 'themes', 'love', ''),
(28, 9, '2012-12-21', 'themes', 'love', ''),
(29, 10, '2012-12-21', 'themes', 'love', ''),
(30, 11, '2012-12-21', 'themes', 'love', ''),
(31, 3, '2012-12-21', 'themes', 'love', ''),
(32, 3, '2012-12-21', 'themes', 'love', ''),
(33, 3, '2012-12-21', 'themes', 'love', ''),
(34, 3, '2012-12-21', 'themes', 'love', ''),
(35, 3, '2012-12-21', 'themes', 'love', ''),
(36, 3, '2012-12-21', 'themes', 'love', ''),
(37, 3, '2012-12-21', 'themes', 'love', ''),
(38, 3, '2012-12-21', 'themes', 'love', ''),
(39, 3, '2012-12-21', 'themes', 'love', ''),
(40, 3, '2012-12-21', 'themes', 'love', ''),
(41, 3, '2012-12-21', 'themes', 'love', ''),
(42, 3, '2012-12-21', 'themes', 'love', ''),
(43, 3, '2012-12-21', 'themes', 'love', ''),
(44, 3, '2012-12-21', 'themes', 'love', ''),
(45, 3, '2012-12-21', 'themes', 'love', ''),
(46, 3, '2012-12-21', 'themes', 'love', ''),
(47, 3, '2012-12-21', 'themes', 'love', ''),
(48, 3, '2012-12-21', 'themes', 'love', ''),
(49, 3, '2012-12-21', 'themes', 'love', ''),
(50, 3, '2012-12-21', 'themes', 'love', ''),
(51, 3, '2012-12-21', 'themes', 'love', ''),
(52, 3, '2012-12-21', 'themes', 'love', ''),
(53, 3, '2012-12-21', 'themes', 'love', ''),
(54, 3, '2012-12-21', 'themes', 'love', ''),
(55, 3, '2012-12-21', 'themes', 'love', ''),
(56, 3, '2012-12-21', 'themes', 'love', ''),
(57, 3, '2012-12-21', 'themes', 'love', ''),
(58, 3, '2012-12-21', 'themes', 'love', ''),
(59, 3, '2012-12-21', 'themes', 'love', ''),
(60, 3, '2012-12-21', 'themes', 'love', ''),
(61, 3, '2012-12-21', 'themes', 'love', ''),
(62, 3, '2012-12-21', 'themes', 'love', ''),
(63, 3, '2012-12-21', 'themes', 'love', ''),
(64, 3, '2012-12-21', 'themes', 'love', ''),
(65, 3, '2012-12-21', 'themes', 'love', ''),
(66, 3, '2012-12-21', 'themes', 'love', ''),
(67, 3, '2012-12-21', 'themes', 'love', ''),
(68, 3, '2012-12-21', 'themes', 'love', ''),
(69, 3, '2012-12-21', 'themes', 'love', ''),
(70, 3, '2012-12-21', 'themes', 'love', ''),
(71, 3, '2012-12-21', 'themes', 'love', ''),
(72, 3, '2012-12-21', 'themes', 'love', '');

-- --------------------------------------------------------

--
-- Структура таблицы `filter_video`
--

CREATE TABLE IF NOT EXISTS `filter_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elem_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `section` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `category` (`category`),
  KEY `subcategory` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=267 ;

--
-- Дамп данных таблицы `filter_video`
--

INSERT INTO `filter_video` (`id`, `elem_id`, `date`, `section`, `category`, `subcategory`) VALUES
(1, 1, '2013-01-27', 'church_service', '', ''),
(2, 2, '2012-12-14', 'news', '', ''),
(3, 3, '2013-02-15', 'news', '', ''),
(4, 4, '2013-01-22', 'news', '', ''),
(5, 5, '2013-01-20', 'church_service', '', ''),
(6, 6, '2013-01-13', 'church_service', '', ''),
(7, 7, '2013-01-06', 'church_service', '', ''),
(8, 8, '2013-01-17', 'news', '', ''),
(9, 9, '2012-11-04', 'news', '', ''),
(10, 10, '2012-10-28', 'music', '', ''),
(11, 11, '2012-09-30', 'music', '', ''),
(12, 12, '2012-09-27', 'ministries', '', ''),
(13, 13, '2012-09-14', 'news', '', ''),
(14, 14, '2012-09-06', 'news', '', ''),
(15, 15, '2012-08-31', 'news', '', ''),
(16, 16, '2012-08-02', 'news', '', ''),
(17, 17, '2012-08-02', 'news', '', ''),
(18, 18, '2012-07-31', 'news', '', ''),
(19, 19, '2012-07-20', 'news', '', ''),
(20, 20, '2012-07-19', 'news', '', ''),
(21, 21, '2012-07-03', 'news', '', ''),
(219, 22, '2012-07-02', 'news', '', ''),
(220, 23, '2012-06-27', 'news', '', ''),
(221, 24, '2012-06-27', 'news', '', ''),
(222, 25, '2012-06-22', 'news', '', ''),
(223, 26, '2012-06-20', 'news', '', ''),
(224, 27, '2012-06-19', 'ministries', '', ''),
(225, 28, '2012-06-18', 'ministries', '', ''),
(226, 29, '2012-06-06', 'news', '', ''),
(227, 30, '2012-06-06', 'music', '', ''),
(228, 31, '2012-06-03', 'music', '', ''),
(229, 32, '2012-05-31', 'news', '', ''),
(230, 33, '2012-05-29', 'news', '', ''),
(231, 34, '2012-05-15', 'news', '', ''),
(232, 35, '2012-04-28', 'news', '', ''),
(233, 36, '2012-04-21', 'news', '', ''),
(234, 37, '2012-04-21', 'news', '', ''),
(235, 38, '2012-04-16', 'news', '', ''),
(236, 39, '2012-04-12', 'music', '', ''),
(237, 40, '2012-03-27', 'music', '', ''),
(238, 41, '2012-03-26', 'music', '', ''),
(239, 42, '2012-03-26', 'news', '', ''),
(240, 43, '2012-03-25', 'music', '', ''),
(241, 44, '2012-03-23', 'music', '', ''),
(242, 45, '2012-03-23', 'music', '', ''),
(243, 46, '2012-03-23', 'music', '', ''),
(244, 47, '2012-03-22', 'music', '', ''),
(245, 48, '2012-03-21', 'news', '', ''),
(246, 49, '2012-03-09', 'news', '', ''),
(247, 50, '2012-02-19', 'music', '', ''),
(248, 51, '2012-02-19', 'music', '', ''),
(249, 52, '2012-01-01', 'ministries', '', ''),
(250, 53, '2012-02-06', 'music', '', ''),
(251, 54, '2012-01-01', 'ministries', '', ''),
(252, 55, '2012-01-25', 'news', '', ''),
(253, 56, '2012-01-20', 'ministries', '', ''),
(254, 57, '2012-01-01', 'history', '', ''),
(255, 58, '2011-11-28', 'music', '', ''),
(256, 59, '2011-11-28', 'music', '', ''),
(257, 60, '2011-07-21', 'ministries', '', ''),
(258, 61, '2011-07-05', 'ministries', '', ''),
(259, 62, '2011-02-06', 'ministries', '', ''),
(260, 63, '2011-01-20', 'ministries', '', ''),
(261, 64, '2011-11-25', 'music', '', ''),
(262, 65, '2011-11-10', 'ministries', '', ''),
(263, 66, '2011-04-06', 'ministries', '', ''),
(264, 67, '2010-03-23', 'music', '', ''),
(265, 68, '2010-01-14', 'history', '', ''),
(266, 69, '2010-05-21', 'ministries', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL,
  `greeting` text NOT NULL,
  `adress` text NOT NULL,
  `author` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `footer`
--

INSERT INTO `footer` (`id`, `greeting`, `adress`, `author`) VALUES
(1, 'Дорогой друг! Благодарим Вас, посещение этого ресурса. Если Вы никогда не принимали Иисуса, искренне желаем Вам обрести Иисуса Христа в своем сердце, а также, чтобы Вы обрели духовную семью в лице Церкви. Приглашаем Вас на воскресное Богослужение, которое проходит каждое воскресенье в 10.00 по адресу: г.Мариуполь, ул.Московская, 59/12. Связаться с нами можно по телефонам +38 (096) 409-45-10,+38 (0629) 23-50-22. Мы молимся о Вас.', '', 'web development by Andreich &copy;');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`img`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `img`, `title`, `date`) VALUES
(1, 'bratiya_sestri_1.jpg', '', '2013-02-11'),
(2, 'bratiya_sestri_2.jpg', '', '2013-02-11'),
(3, 'bratiya_sestri_3.jpg', '', '2013-02-11'),
(4, 'bratiya_sestri_4.jpg', '', '2013-02-11'),
(5, 'bratiya_sestri_5.jpg', '', '2013-02-11'),
(6, 'bratiya_sestri_6.jpg', '', '2013-02-11'),
(7, 'bratiya_sestri_7.jpg', '', '2013-02-11'),
(8, 'bratiya_sestri_8.jpg', '', '2013-02-11'),
(9, 'bratiya_sestri_9.jpg', '', '2013-02-11'),
(10, 'bratiya_sestri_10.jpg', '', '2013-02-11'),
(11, 'bratiya_sestri_11.jpg', '', '2013-02-11'),
(12, 'bratiya_sestri_12.jpg', '', '2013-02-11'),
(13, 'bratiya_sestri_13.jpg', '', '2013-02-11'),
(14, 'bratiya_sestri_14.jpg', '', '2013-02-11'),
(15, 'bratiya_sestri_15.jpg', '', '2013-02-11'),
(16, 'bratiya_sestri_16.jpg', '', '2013-02-11'),
(17, 'bratiya_sestri_17.jpg', '', '2013-02-11'),
(18, 'bratiya_sestri_18.jpg', '', '2013-02-11'),
(24, 'bratiya_sestri_24.jpg', '', '2013-02-11'),
(23, 'bratiya_sestri_23.jpg', '', '2013-02-11'),
(22, 'bratiya_sestri_22.jpg', '', '2013-02-11'),
(21, 'bratiya_sestri_21.jpg', '', '2013-02-11'),
(20, 'bratiya_sestri_20.jpg', '', '2013-02-11'),
(19, 'bratiya_sestri_19.jpg', '', '2013-02-11'),
(25, 'bratiya_sestri_25.jpg', '', '2013-02-11'),
(26, 'bratiya_sestri_26.jpg', '', '2013-02-11'),
(27, 'bratiya_sestri_27.jpg', '', '2013-02-11'),
(28, 'bratiya_sestri_28.jpg', '', '2013-02-11'),
(29, 'bratiya_sestri_29.jpg', '', '2013-02-11'),
(30, 'bratiya_sestri_30.jpg', '', '2013-02-11'),
(33, 'home_groups_1.jpg', '', '2013-02-11'),
(31, 'bratiya_sestri_31.jpg', '', '2013-02-11'),
(34, 'home_groups_2.jpg', '', '2013-02-11'),
(35, 'home_groups_3.jpg', '', '2013-02-11'),
(36, 'home_groups_4.jpg', '', '2013-02-11'),
(77, 'home_groups_5.jpg', '', '2013-02-11'),
(38, 'home_groups_6.jpg', '', '2013-02-11'),
(39, 'home_groups_7.jpg', '', '2013-02-11'),
(40, 'home_groups_8.jpg', '', '2013-02-11'),
(41, 'bratiya_sestri_32.jpg', '', '2013-02-11'),
(42, 'bratiya_sestri_33.jpg', '', '2013-02-11'),
(43, 'ministries_1.jpg', '', '2013-02-11'),
(44, 'ministries_2.jpg', '', '2013-02-11'),
(45, 'ministries_3.jpg', '', '2013-02-11'),
(46, 'ministries_4.jpg', '', '2013-02-11'),
(47, 'ministries_5.jpg', '', '2013-02-11'),
(48, 'ministries_6.jpg', '', '2013-02-11'),
(49, 'ministries_7.jpg', '', '2013-02-11'),
(50, 'ministries_8.jpg', '', '2013-02-11'),
(51, 'ministries_9.jpg', '', '2013-02-11'),
(52, 'ministries_10.jpg', '', '2013-02-11'),
(53, 'ministries_11.jpg', '', '2013-02-11'),
(54, 'ministries_12.jpg', '', '2013-02-11'),
(55, 'ministries_13.jpg', '', '2013-02-11'),
(56, 'ministries_14.jpg', '', '2013-02-11'),
(57, 'ministries_15.jpg', '', '2013-02-11'),
(58, 'ministries_16.jpg', '', '2013-02-11'),
(59, 'ministries_17.jpg', '', '2013-02-11'),
(60, 'ministries_18.jpg', '', '2013-02-11'),
(61, 'ministries_19.jpg', '', '2013-02-11'),
(62, 'ministries_20.jpg', '', '2013-02-11'),
(63, 'ministries_21.jpg', '', '2013-02-11'),
(64, 'ministries_22.jpg', '', '2013-02-11'),
(65, 'church_service_1.jpg', '', '2013-02-11'),
(66, 'church_service_2.jpg', '', '2013-02-11'),
(67, 'church_service_3.jpg', '', '2013-02-11'),
(68, 'church_service_4.jpg', '', '2013-02-11'),
(69, 'church_service_5.jpg', '', '2013-02-11'),
(70, 'church_service_6.jpg', '', '2013-02-11'),
(71, 'church_service_7.jpg', '', '2013-02-11'),
(72, 'church_service_8.jpg', '', '2013-02-11'),
(73, 'church_service_9.jpg', '', '2013-02-11'),
(74, 'church_service_10.jpg', '', '2013-02-11'),
(75, 'church_service_11.jpg', '', '2013-02-11'),
(76, 'church_service_12.jpg', '', '2013-02-11'),
(78, 'church_service_13.jpg', '', '2013-02-11'),
(79, 'church_service_14.jpg', '', '2013-02-11');

--
-- Триггеры `gallery`
--
DROP TRIGGER IF EXISTS `delete_filter_gallery`;
DELIMITER //
CREATE TRIGGER `delete_filter_gallery` AFTER DELETE ON `gallery`
 FOR EACH ROW DELETE FROM `filter_gallery` WHERE `elem_id` = OLD.id
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `history` text NOT NULL,
  `history_img` text NOT NULL,
  `history_img_fool` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `history`, `history_img`, `history_img_fool`) VALUES
(1, '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>', '01.jpg', '01_fool.jpg'),
(2, '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>', '02.jpg', '02_fool.jpg'),
(25, '', '03.jpg', '03_fool.jpg'),
(26, '', '04.jpg', '04_fool.jpg'),
(3, '', '03.jpg', '03_fool.jpg'),
(4, '', '04.jpg', '04_fool.jpg'),
(5, '', '01.jpg', '01_fool.jpg'),
(6, '', '02.jpg', '02_fool.jpg'),
(7, '', '03.jpg', '03_fool.jpg'),
(8, '', '04.jpg', '04_fool.jpg'),
(9, '', '01.jpg', '01_fool.jpg'),
(10, '', '02.jpg', '02_fool.jpg'),
(11, '', '03.jpg', '03_fool.jpg'),
(12, '', '04.jpg', '04_fool.jpg'),
(13, '', '01.jpg', '01_fool.jpg'),
(14, '', '02.jpg', '02_fool.jpg'),
(15, '', '03.jpg', '03_fool.jpg'),
(16, '', '04.jpg', '04_fool.jpg'),
(17, '', '01.jpg', '01_fool.jpg'),
(18, '', '02.jpg', '02_fool.jpg'),
(19, '', '03.jpg', '03_fool.jpg'),
(20, '', '04.jpg', '04_fool.jpg'),
(21, '', '01.jpg', '01_fool.jpg'),
(22, '', '02.jpg', '02_fool.jpg'),
(23, '', '03.jpg', '03_fool.jpg'),
(24, '', '04.jpg', '04_fool.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `home_groups`
--

CREATE TABLE IF NOT EXISTS `home_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `title_show` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `leader` varchar(255) NOT NULL,
  `leader_name` varchar(255) NOT NULL,
  `when` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `map_location` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `home_groups`
--

INSERT INTO `home_groups` (`id`, `title`, `title_show`, `url`, `img`, `leader`, `leader_name`, `when`, `adress`, `map_location`, `description`) VALUES
(1, 'Молодежная', 'Молодежная домашняя группа', 'youth_home_group', '4a02127bb374e266a71788f9b7e0a176.jpg', '', 'Левитский Михаил Батькович', 'каждую пятницу в 18:00', 'г.Мариуполь, ул.Азовстальская, 158Б/14', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(2, 'Евгения Собко', 'домашняя группа Евгения Собко', 'jenya_sobko_home_group', '46604075.jpg', '', 'Евгений Собко', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Киевская, 78/132', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(5, 'Виктора Педана', 'Домашняя группа Виктора Педана', 'viktor_pedan_home_group', '643027_82179348.jpg', '', 'Виктор Педан', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Громовой, 62/36', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(6, 'Подростковая', 'Подростковая домашняя группа', 'teen__home_group', 'youth-group.jpg', '', 'Левицкая Татьяна Александровна', 'каждую субботу в 15:00', 'г.Мариуполь, бул. Хмельницкого, 16/32', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(10, 'Минкиной Любови Михайловны', 'Домашняя группа Минкиной Любови Михайловны', 'minkina_lubov_home_group', 'sarepta.jpg', '', 'Минкина Любовь Михайловна', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Киевская, 13/38', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(11, 'Акритовой Елены', 'Домашняя группа Акритовой Елены Георгиевны', 'akritova_eleni_home_group', 'sarepta.jpg', '', 'Акритова Елена Георгиевна', 'каждый вторник в 18:00', 'пос. Старый Крым, ул. Ленина, 33', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(12, 'Жарковой Людмилы Михайловны', 'Домашняя группа Жарковой Людмилы Михайловны', 'jharkova_ludmila_home_group', 'sarepta.jpg', '', 'Жаркова Людмила Михайловна', 'зимой - каждый четверг в 17:00 и летом - каждый четверг в 17:00', 'г.Мариуполь, ул. Терновая, 7', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(13, 'Наконечной Полины Николаевны', 'Домашняя группа Наконечной Полины Николаевны', 'nakonechnaya_polina_home_group', 'sarepta.jpg', '', 'Наконечная Полина Николаевна', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Азовстальская, 41/1', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(15, 'Пузь Галины Васильевны', 'Домашняя группа Пузь Галины Васильевны', 'puz_galina_home_group', 'sarepta.jpg', '', 'Пузь Галина Васильевна', 'каждый вторник в 9:00', 'г.Мариуполь, пр. Ленинградский, 100/126', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(16, 'Дудковской Натальи', 'Домашняя группа Дудковской Натальи', 'puz_galina_home_group', 'sarepta.jpg', '', 'Дудковская Наталья', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Челюскинцев, 2-3а', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(17, 'Митричевой Ларисы', 'Домашняя группа Митричевой Ларисы', 'mitricheva_larisa_home_group', 'sarepta.jpg', '', 'Митричева Лариса', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Лавицкого, 15/115', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(18, 'Дегтяренко Людмилы Григорьевны', 'Домашняя группа Дегтяренко Людмилы Григорьевны', 'degtyarenko_ludmili_home_group', 'sarepta.jpg', '', 'Дегтяренко Людмила Григорьевна', 'каждый понедельник в 9:00', 'г.Мариуполь, проезд Шопена, 4/7', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(19, 'Левицкой Татьяны Александровны', 'Домашняя группа Левицкой Татьяны Александровны', 'levitskaya_tatyana_home_group', 'sarepta.jpg', '', 'Левицкая Татьяна Александровна', 'каждый понедельник в 9:00', 'г.Мариуполь, бул. Хмельницкого, 16/32', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(20, 'Шевчук Александра Кузьмича', 'Домашняя группа Шевчук Александра Кузьмича', 'shevchuk_aleksandr_home_group', 'sarepta.jpg', '', 'Шевчук Александр Кузьмич', 'каждый понедельник в 18:00', 'г.Мариуполь, пр. Победы, 98/13', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(21, 'Шевчук Зинаиды Григорьевны', 'Домашняя группа Шевчук Зинаиды Григорьевны', 'shevchuk_zinaida_home_group', 'sarepta.jpg', '', 'Шевчук Зинаида Григорьевна', '- график проведения домашней группы плавающий (обращаться по телефону +38 (0629) 57-78-95),', 'г.Мариуполь, пр. Победы, 98/13', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(22, 'в пос. Асланово', 'Домашняя группа в пос. Асланово', 'aslanovo_home_group', 'sarepta.jpg', '', 'Чеботок Виталий', 'каждую пятницу в 18:00', 'пос.Асланово, Володарский район, ул. Привокзальная, 3/4', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>'),
(23, 'Сахарова Александра Владимировича', 'Домашняя группа Сахарова Александра Владимировича', 'saharov_aleksandr_home_group', 'sarepta.jpg', '', 'Сахаров Александр Владимирович', 'каждый четверг в 18:00', 'г.Мариуполь, ул. Гоголевская, 11а', 'https://maps.google.com.ua/maps?hl=ru&amp;q=%D0%BC%D0%B0%D1%80%D0%B8%D1%83%D0%BF%D0%BE%D0%BB%D1%8C+%D1%83%D0%BB.+60+%D0%BB%D0%B5%D1%82+%D0%A1%D0%A1%D0%A1%D0%A0+6&amp;ie=UTF8&amp;t=h&amp;ll=48.382803,31.17461&amp;spn=7.995795,18.07778&amp;output=embed', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. </p>');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subordinate` text NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `page` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7245 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `subordinate`, `name`, `url`, `page`) VALUES
(1, '0', 'Главная', '/main', 'main'),
(2, '0', 'Новости', '/news', 'news'),
(3, '0', 'О нас', '/about_us', 'about_us'),
(4, '0', 'Деятельность', '/about_us/activity', 'activity'),
(5, '3', 'Структура', '/about_us/structure', 'structure'),
(6, '7225', 'Галерея', '/about_us/gallery', 'gallery'),
(7, '7225', 'Видео', '/about_us/video', 'video'),
(8, '0', 'Контакты', '/contacts', 'contacts'),
(10, '0', 'Узнать об Иисусе', '/about_jesus', 'about_jesus'),
(31, '3', 'История', '/about_us/history', 'history'),
(32, '3', 'Во что мы верим', '/about_us/creed', 'creed'),
(33, '3', 'Кто мы', '', 'who_are_we'),
(41, '4', 'Детский дом', '', 'orphanage'),
(42, '4', 'Путь Спасения', '', 'salvation_way'),
(51, '5', 'Общая структура', '', 'general_structure'),
(52, '3', 'Служения', '/about_us/ministries', 'ministries'),
(53, '3', 'Домашние группы', '/about_us/home_groups', 'home_groups'),
(61, '6', 'Прославление', '', ''),
(62, '6', 'Евангелизация', '', ''),
(63, '6', 'Молодежное', '', ''),
(64, '6', 'Федоровка', '', ''),
(65, '6', 'Танцевальное', '', ''),
(66, '6', 'Путь Спасения', '', ''),
(71, '7', 'Проповеди', '', 'pritches'),
(72, '7', 'Видеозаписи Богослужений', '', 'ministry_record'),
(73, '7', 'Семинары', '', 'seminars'),
(521, '52', 'Прославление', '', ''),
(522, '52', 'Евангелизация', '', ''),
(523, '52', 'Молодежное', '', ''),
(524, '52', 'ЛОБ Сарепта', '', ''),
(525, '52', 'Танцевальное', '', ''),
(531, '53', 'Молодежная', '', ''),
(532, '53', 'Жени Собко', '', ''),
(533, '53', 'Новообращенных', '', ''),
(534, '53', 'Асланово', '', ''),
(535, '53', 'Федоровка', '', ''),
(536, '53', 'Пасторская', '', ''),
(711, '71', 'Скоробогач С.П.', '', ''),
(712, '71', 'Скоробогач И.Ю.', '', ''),
(713, '71', 'Николаенко И.Н.', '', ''),
(714, '71', 'Паталах А.И.', '', ''),
(715, '71', 'Красий И.И.', '', ''),
(721, '72', '2011', '', 'news'),
(722, '72', '2012', '', ''),
(731, '73', 'О вере', '', 'about_faith'),
(732, '73', 'О семье', '', ''),
(733, '73', 'О финансах', '', ''),
(734, '73', 'О служении', '', ''),
(7211, '721', '3 квартал 2011', '', 'video'),
(7212, '721', '4 квартал 2011', '', ''),
(7221, '722', '1 квартал 2011', '', ''),
(7222, '722', '2 квартал 2011', '', ''),
(7223, '722', '3 квартал 2011', '', ''),
(7224, '722', '4 квартал 2011', '', ''),
(7225, '0', 'Медиа', '/media', 'media'),
(7226, '0', '', '', 'show'),
(7227, '0', '', '', 'video_show'),
(7228, '0', '', '', 'news_show'),
(7229, '0', '', '', 'ministries_show'),
(7230, '0', '', '', 'home_groups_show'),
(7231, '0', '', '', 'structure_show'),
(7232, '0', 'об Иисусе', '/about_jesus', 'about_jesus'),
(7233, '0', '', '/load_map', 'load_map'),
(7234, '0', '', '/form_contacts', 'form_contacts'),
(7235, '0', '', '/messeges', 'messeges'),
(7236, '0', '', '/filter', 'filter'),
(7237, '7225', '', '/media/audio', 'audio'),
(7238, '0', 'Блог', '/articles', 'articles'),
(7239, '7225', 'Газета &quot;Рассвет&quot;', '/media/newspaper', 'newspaper'),
(7240, '0', 'Страница 404', '/error404', 'error404'),
(7241, '3', 'Свидетельства', '/about_us/testemonies', 'testemonies'),
(7242, '0', '', '', 'articles_show'),
(7243, '0', '', '', 'testemonies_show'),
(7244, '0', '', '/faq', 'faq');

-- --------------------------------------------------------

--
-- Структура таблицы `ministries`
--

CREATE TABLE IF NOT EXISTS `ministries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `title_show` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `leader` varchar(255) NOT NULL,
  `leader_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `ministries`
--

INSERT INTO `ministries` (`id`, `title`, `title_show`, `url`, `img`, `leader`, `leader_name`, `description`) VALUES
(1, 'Молодежное', 'Молодежное служение', 'youth', 'youth.jpg', '', 'Ниолаенко Иван', '<p>Мы молодежь церкви Обновление. Наше молодежное движение объединяет совершенно разных людей, но с одной целью - славить нашего Творца! Нам не все равно, что будет дальше с молодежью Церкви и Мариуполя. Наша мечта сделать сильным это служение. Мы хотим чтобы прославление, молитвы, Слово Божье было на реально достойном уровне, уровне который будет радовать Бога и нас, и чтобы каждый человек, который хоть однажды побывал на нашем собрании прикоснулся к Богу, получил мощный заряд энергии к деятельности, ответы на свои вопросы и массу новых друзей</p>'),
(2, 'Прославление', 'Служение прославления', 'worship', 'worship.jpg', '', 'Шкильнюк Артем', '<p>Служение прославления призвано объединить людей на совместных собраниях в поклонении Богу и стремиться сосредоточить на Нём их внимание; средствами музыки и слова, талантов и даров прославлять Бога, поклоняться Ему, выражать Бога (Его действия, мысли, волю, желания, чувства, характер), гармонично сочетаясь с молитвой, проповедью и раскрывая характер происходящего на служении. \n</p>'),
(3, 'Танцевальное', 'Танцевальное служение', 'dance', 'dance_1.jpg', '', 'Темиренко Оксана', '<p>Во все времена человек пытался выразить свое представление о мире, свои внутренние чувства, переживания, настроение, открыть (передать) информацию, сокрытую в его сердце и разуме, используя слово, звуки, краски, движения. Так возникли разные виды того, что мы называем искусством. Танец  есть такой же естественной формой отображения внутреннего мира  человека, как, к примеру, песня или рисунок.  По своей сути, танец - это искреннее  выражение глубочайших внутренних чувств, высвобождаемых через движения тела.  Танцевальное церковное служение призвано восхвалить и возвеличить Имя Творца, посредством сочетания музыки и движений, что может сопровождаться также и пением.   Языком танца мы выражаем наше поклонение Богу, восхищение Господом, нашу любовь к Творцу.\n </p>'),
(4, 'Группа порядка', 'Служение группы порядка', 'dance', 'order_groop.jpg', '', 'Зюба Анатолий', '<p>Группа порядка – это служение вспоможения, которое обеспечивает как охрану порядка, так и практические нужды церкви для проведения служения. Служение ашеров описано в Библии как служение левитов, которые служили при Святилище и помогали священникам в храме. В наше время служение группы порядка включает в себя не только организацию людей во время служения, но и умение видеть нужды людей как духовные, так и физические. Мы благодарны Богу за единство и понимание в служении, что позволяет нам слажено работать как одна команда.\r\n </p>'),
(5, 'Евангелизация', 'Служение евангелизации', 'evangelisation', 'evangelisation.jpg', '', 'Паталах Александр', '<p>Еще апостол Павел писал: «… я не стыжусь благовествования Христова, потому что оно есть сила Божия ко спасению всякому верующему, во-первых, Иудею, потом и Еллину» (Рим.1:16).\nСлово "Евангелие" в переводе с греческого значит "Благая (радостная) весть". Евангелизация - это мероприятие, направленное на то, чтобы донести до людей весть о том, что им нужно обратиться от своих злых дел к Спасителю и Богу Иисусу Христу для того, чтобы получить прощение грехов,   обрести новое сердце, новую и вечную жизнь с Богом на небесах. Дома, на улице, в общественном транспорте, на рабочем месте – где бы мы не находились, вокруг всегда есть люди, нуждающиеся в истине - те, чье спасение напрямую зависит от нас. Мы провозглашаем о том, что в последние времена каждому необходимо покаяться и примириться с Богом.</p>'),
(6, 'Детское', 'Детское служение', 'kids', 'kids.jpg', '', 'Матвеева Инна', '<p>Детское служение в нашей церкви многогранно. Оно включает в себя Воскресную школу  для детей возраста  с 3-х до 7-и лет,  так же детей в возрасте с 7-и до 12 лет, театральное служение. Детские сердца это самая плодородная почва и всё что мы заложим в них принесёт плод в жизнь вечную.  Воскресная  школа проходит по воскресным дням . Здесь вера, представление и обучение идут рука об руку. Здесь дети имеют прекрасную жизнь с прекрасным Богом. Ежегодно в летний период мы организовываем детский лагерь, где имеют возможность отдыхать, оздоравливаться и научаться в истине как дети воскресной школы, так и те, кто еще не познал Христа как Господа.  Счастливые лица, свидетельства самих детей и их ожидание  быть в лагере каждое лето ободряет команду служителей все больше вкладывать свои сердца в служение детям!</p>'),
(7, 'Подростковое', 'Подростковое служение', 'teen', 'teen.jpg', '', 'Левицкая Татьяна', '<p>В сложный период перехода из детства во взрослую жизнь подростки сталкиваются с множеством искушений. Очень важно, чтобы в этом возрасте рядом с ними были мудрые наставники, которые привили бы им нравственные ценности и помогли бы сделать правильный выбор, оказав влияние на все их будущее. Поэтому для ребят в церкви существует подростковое служение. Подростки – будущее нашей Церкви, поэтому мы стремится достигнуть их принимая и заботясь о них, преподавая им Слово Бога и помогая им Возвеличить Бога в их повседневной жизни.</p>'),
(8, 'Путь спасения', 'Путь спасения', 'salvation_way', 'salvation_way.jpg', '', 'Левицкая Татьяна', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). </p>'),
(20, 'Детский  Центр социальной опеки ребенка &laquo;Обновление&raquo;', 'Центр Опеки &laquo;Обновление&raquo;', 'orphanage', 'orphanage.jpg', '', 'Коноваленко Надежда Ивановна', '<p>Детский  Центр социальной опеки ребенка «Обновление» является негосударственной благотворительной организацией. Он был основан для помощи детям улицы и детям группы риска для того, чтобы дать им новый дом и восстановить их физическое, интеллектуальное и духовное здоровье. Основной целью работы Центра является то, чтобы каждый ребенок индивидуально достиг полноценной, независимой и наполненной радостью жизни.</p><p>Более подробную информацию о нас вы можете получить на нашем сайте <a name="sync" href="http://obnovlenie.dn.ua"target="_blank">obnovlenie.dn.ua</a>.</p>'),
(21, 'Милосердия', 'Служение милосердия', 'charity', 'charity.jpg', '', 'Зеленая Елена Владимировна', '<p>Можно ли научиться милосердию? На протяжении веков ответ на этот вопрос не был однозначным. Однако забота о больных и немощных всегда была присуща человеческому обществу. Христианская эра открыла миру светлую истину о том, что все люди родные друг другу и должны жить в любви. Поэтому попечение о больных и нуждающихся стало для христиан первоочередным долгом. Милосердие - это та добродетель, которую Бог ценит в нас превыше всего. Когда Иисус был на земле, он служил людям, спасал людей, помогал тем, кто лежал на обочине. Он был полон любви и сострадания. Свой характер Он вложил в сердце каждого дитя Божьего.  Мы с радостью служим тем, кому нужна наша помощь и рассказываем о любви Божьей.</p>'),
(9, 'Молитвенное', 'Молитвенное служение', 'praise', 'praise_1.jpg', '', 'Горюненко Валентина', '<p>Молитва – это главная опора церкви. Голос ходатаев очень важен. Никакая Церковь не сможет существовать, развиваться и приносить плоды без молитвенной поддержки. Молитвенное служение призвано изменять духовную атмосферу в жизнях людей, в церкви, в нашей стране и в мире, увидеть Пробуждение в нашей стране, и нашу землю наполняющейся ведением Господа. А также, помочь людям понять смысл, важность и силу молитвы и обрести необходимые навыки для построения близких и крепких молитвенных отношений с Господом, научить их вести духовную брань и ходатайствовать за других людей.</p>'),
(10, 'МОД Сарепта', 'МОД Сарепта', 'sarepta', 'sarepta.png', 'pisarev-rinat-nikolaevich', 'Писарев Ринат Николаевич', '<p>Молитвенно-оздоровительная База &quote;Сарепта&quote; - это компекс, который находится в живописном месте на берегу озера в поселке Федоровка. Компекс предназначен для выездных постов, молитв, проведения отдыха, организации детских лагерей отдыха и подобных мероприятий. Церковь регулярно проводит здесь выездные трех дневные посты, а каждое лето проводится летний лагерь отдыха для детей от 7 до 16 лет. Также может быть предоставлена во временное пользование дружественным Церквам нашей Церкви. По всем вопросам обращаться к директору МОБ Писареву Ринату Николаевичу.\n</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `vk_comments_id` varchar(255) NOT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `img` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `url`, `vk_comments_id`, `top`, `img`, `video`, `txt`, `title`, `date`) VALUES
(1, 'holiday_8_march_2013', '3406210', 1, 'happy-8-marth.jpg', '', '<p>Мы не будем спорить о происхождении праздника 8 Марта, но воспользуемся возможностью наполнить этот праздник новым содержанием - выразить Богу благодарность за прекрасную половину человечества и пожелать всем сестрам благоденствия, веры, надежды и бескочнечные, драгоценные богатства Неба, явленные нам во Христе!</p>\n<br/>\n<br/>\n<img style="float: right;" src="http://renewalold/upload/news/791718.jpg"/>\n<strong>\nПроходят годы чередою<br/>\nТы вновь стоишь на рубеже,<br/>\nА Бог и есть и ббыл с тобою<br/>\nИ Он помог во всем тебе.<br/>\nБог Сам хранил тебя рукою<br/>\nОн много благ тебе явил,<br/>\nИ в горе был всегда с тобою<br/>\nНигде тебя Он не забыл.<br/>\nОн нес тебя, а вместе бремя<br/>\nНести тебе Он помогал<br/>\nИ сильною рукой все время<br/>\nТебя не раз он избавлял.<br/>\nИди же к цели славной, чудной,<br/>\nНо не одна, а с Ним во всем<br/>\nИ никогда не будет трудно<br/>\nНигде тебе в пути земном!\n</strong>', 'Поздравляем дорогих сестер с праздником весны, обновления, тепла и красоты!', '2013-03-05');

--
-- Триггеры `news`
--
DROP TRIGGER IF EXISTS `delete_filter_news`;
DELIMITER //
CREATE TRIGGER `delete_filter_news` AFTER DELETE ON `news`
 FOR EACH ROW DELETE FROM `filter_news` WHERE `elem_id` = OLD.id
//
DELIMITER ;
DROP TRIGGER IF EXISTS `update_news`;
DELIMITER //
CREATE TRIGGER `update_news` AFTER UPDATE ON `news`
 FOR EACH ROW IF(NEW.top = 1) THEN
SET @article_id = (SELECT article_id FROM `top` WHERE (`article_id`=OLD.id) AND (`upload_dir`='news'));
IF(@article_id <> 0) THEN
UPDATE `top` SET `url`=NEW.url,
`title`=NEW.title,`img`=NEW.img,
`upload_dir`='news',
`txt`=NEW.txt,`article_id`=NEW.id
WHERE (article_id=@article_id) AND (`upload_dir`='news');
ELSE
INSERT INTO `top` (`url`,`title`,`upload_dir`,`img`,`txt`,`article_id`)
VALUES (NEW.url,NEW.title,'news',NEW.img,NEW.txt,NEW.id);
END IF;
ELSE
DELETE FROM `top` WHERE (`article_id`=NEW.id) AND (`upload_dir`='news');
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `static`
--

CREATE TABLE IF NOT EXISTS `static` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `value1` varchar(255) NOT NULL,
  `value2` varchar(255) NOT NULL,
  `value3` varchar(255) NOT NULL,
  `txt1` text NOT NULL,
  `txt2` text NOT NULL,
  `txt3` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `static`
--

INSERT INTO `static` (`id`, `title`, `url`, `value1`, `value2`, `value3`, `txt1`, `txt2`, `txt3`) VALUES
(1, 'phones', 'phones', '+38 (0629) 23-50-22 ', '+38 (0629) 58-27-14 ', '', '', '', ''),
(2, 'adress', 'adress', '87529, г.Мариуполь ул. Московская, 59/12', 'obnovlen@gmail.com', '', '', '', ''),
(3, 'email', 'email', 'obnovlen@gmail.com', '', '', '', '', ''),
(4, 'greeting', 'greeting', '', '', '', '<p>Дорогие друзья! \nЦерковь Обновление приветствует Вас!</p>\n\n<p>История нашей церкви насчитывает 22 года и за это время был проделан немалый путь от становления до выполнения церковью своего предназначения.</p>\n\n<p>Этот сайт предоставляет нам еще одну возможность распространения Евангелия – благой вести о Боге и божественном замысле в отношении человека, а также возможность ответить на интересующие вопросы о евангельском христианстве.</p>\n\n<p>Церковь «Обновление», являющаяся частью Церкви Иисуса Христа, продолжает свой путь, распространяя Божье слово. Мы постараемся и приложим все усилия, чтобы с радостью встречать и помогать людям, приходящим к нам.</p>\n<p style="float:right;text-align: right;">Благодать Вам и мир от Бога да умножится!<br/>\nПастор Сергей Петрович Скоробогач.</p>', 'Дорогие друзья!\n \nЦерковь Обновление приветствует Вас!\n \nИстория нашей церкви насчитывает 22 года и за это время был проделан немалый путь от становления до выполнения церковью своего предназначения.\n \nЭтот сайт предоставляет нам еще одну возможность распространения Евангелия – благой вести о Боге и божественном замысле в отношении человека, а также возможность ответить на интересующие вопросы о евангельском христианстве.\n \nДумаю, что многих интересует ответ на один вопрос: «Что есть истина?». Этот вопрос задавали Иисусу Христу во время его земной жизни. На эти вопросы Иисус отвечал:<br/>\n«Я есмь путь и истина и жизнь» (Ин 14:6);<br/>\n«Я есмь хлеб жизни, приходящий ко Мне не будет алкать, и верующий в Меня не будет жаждать никогда» (Ин 6:35);<br/>\n«Я есмь дверь: кто войдет Мною, тот спасется» (Ин. 10:9);<br/>\n«Я есмь Альфа и Омега, начало и конец, Первый и Последний» (Откр 22:13).<br/>\n \nЦерковь «Обновление», являющаяся частью Церкви Иисуса Христа, продолжает свой путь, распространяя Божье слово. Мы постараемся и приложим все усилия, чтобы с радостью встречать и помогать людям, приходящим к нам.\n \nБлагодать Вам и мир от Бога да умножится!\nПастор Сергей Петрович Скоробогач.', ''),
(5, 'author', 'author', 'Andreich &copy;', '', '', 'web development by Andreich &copy;', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `img` text NOT NULL,
  `position` text NOT NULL,
  `fio` varchar(255) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `age` date NOT NULL,
  `family_status` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(255) NOT NULL,
  `about_person` text NOT NULL,
  `description` text NOT NULL,
  `person` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `structure`
--

INSERT INTO `structure` (`id`, `url`, `rank`, `img`, `position`, `fio`, `sex`, `age`, `family_status`, `phone`, `about_person`, `description`, `person`) VALUES
(1, 'skorobogach-sergey-petrovich', 1, 'P1040875.jpg', 'Старший пастор', 'Скоробогач Сергей Петрович', 'm', '1964-12-18', 1, '', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>', 'Пастор (ивр. רועה‎, лат. pastor «пастух» или «пастырь») — библейский термин указывающий на обязанность пастыря заботиться о церкви, то есть пастве (аллегорически «стадо овец») - <a name="sync" href="http://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D1%81%D1%82%D0%BE%D1%80">источник</a>', ''),
(2, 'levitskiy-mihail-jurievich', 2, 'pastor.jpg', 'Старший диакон', 'Левицкий Михаил Юрьевич', 'm', '1988-11-21', 1, '', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>', 'Диакон - (греч.-служитель): во 2 – 3 вв. лицо, ведавшее хозяйственными делами христианской общины. Впоследствии и сейчас – низший духовный сан христианской церковной иерархии, помощник священника при совершении богослужений  - <a  name="sync" href="http://www.insai.ru/slovar/diakon-dyakon">источник</a>', ''),
(3, 'perkanuk-vladimir', 2, 'pastor.jpg', 'Диакон', 'Перканюк Владимир Николаевич', 'm', '1990-03-22', 1, '', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>', 'Диакон - (греч.-служитель): во 2 – 3 вв. лицо, ведавшее хозяйственными делами христианской общины. Впоследствии и сейчас – низший духовный сан христианской церковной иерархии, помощник священника при совершении богослужений  - <a name="sync" href="http://www.insai.ru/slovar/diakon-dyakon">источник</a>', ''),
(4, 'pisarev-rinat-nikolaevich', 2, 'pastor.jpg', 'Диакон', 'Писарев Ринат Николаевич', 'm', '1982-02-20', 1, '', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>', 'Диакон - (греч.-служитель): во 2 – 3 вв. лицо, ведавшее хозяйственными делами христианской общины. Впоследствии и сейчас – низший духовный сан христианской церковной иерархии, помощник священника при совершении богослужений  - <a name="sync" href="http://www.insai.ru/slovar/diakon-dyakon">источник</a>', '');

-- --------------------------------------------------------

--
-- Структура таблицы `testemonies`
--

CREATE TABLE IF NOT EXISTS `testemonies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `short_txt` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `testemonies`
--

INSERT INTO `testemonies` (`id`, `title`, `url`, `date`, `short_txt`, `txt`, `img`, `video`, `top`) VALUES
(1, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', 'i_001.jpg', 'http://www.youtube.com/embed/Uw1yk8gFQwI', 1),
(2, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '01_1-fr-nocolas-gurjanov.jpg', 'http://www.youtube.com/embed/Uw1yk8gFQwI', 1),
(3, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '1297792893_1243099113_vasiliy-savich-photo.jpg', 'http://www.youtube.com/embed/Uw1yk8gFQwI', 0),
(4, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '1306219263_selyukova.jpg', '', 0),
(5, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '1MA7uh6DCx.jpg', '', 0),
(6, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '23898.jpg', '', 0),
(7, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '37621.jpg', '', 0),
(8, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', '8431382.jpg', '', 0),
(9, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', 'Christian Lacroix-dr-1 (2).jpg', '', 0),
(11, 'Бог исцелил от рака', 'god-heals-cancer', '2012-12-21', 'Бог исцелил меня от рака, я благословлена им, он сделал чудо в моей жизни!!!', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', 'dscn0587.jpg', '', 0);

--
-- Триггеры `testemonies`
--
DROP TRIGGER IF EXISTS `delete_filter_testemonies`;
DELIMITER //
CREATE TRIGGER `delete_filter_testemonies` AFTER DELETE ON `testemonies`
 FOR EACH ROW DELETE FROM `filter_tetstemonies` WHERE `elem_id` = OLD.id
//
DELIMITER ;
DROP TRIGGER IF EXISTS `update_testemonies`;
DELIMITER //
CREATE TRIGGER `update_testemonies` AFTER UPDATE ON `testemonies`
 FOR EACH ROW IF(NEW.top = 1) THEN
SET @article_id = (SELECT article_id FROM `top` WHERE (`article_id`=OLD.id) AND (`upload_dir`='testemonies'));
IF(@article_id <> 0) THEN
UPDATE `top` SET `url`=NEW.url,
`title`=NEW.title,`img`=NEW.img,
`upload_dir`='testemonies',
`txt`=NEW.txt,`article_id`=NEW.id
WHERE article_id=@article_id AND (`upload_dir`='testemonies');
ELSE
INSERT INTO `top` (`url`,`title`,`upload_dir`,`img`,`txt`,`article_id`)
VALUES (NEW.url,NEW.title,'testemonies',NEW.img,NEW.txt,NEW.id);
END IF;
ELSE
DELETE FROM `top` WHERE (`article_id`=NEW.id) AND (`upload_dir`='testemonies');
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `timetable`
--

INSERT INTO `timetable` (`id`, `date`, `title`) VALUES
(1, '2013-03-02 08:00:00', 'Видеошкола - 2 уровень'),
(2, '2013-03-16 07:00:00', 'Видеошкола - 1 уровень'),
(3, '2013-03-10 11:30:00', 'Видеошкола - 2 уровень'),
(4, '2013-03-31 06:00:00', 'Видеошкола - 1 уровень'),
(5, '2013-03-30 22:00:00', 'Евангелизационное служение. Лидерское'),
(7, '2013-03-27 16:00:00', 'Причастие. Общецерковное молитвенное служение');

-- --------------------------------------------------------

--
-- Структура таблицы `timetable_total`
--

CREATE TABLE IF NOT EXISTS `timetable_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(255) NOT NULL,
  `date_from` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ministry` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `duty` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `timetable_total`
--

INSERT INTO `timetable_total` (`id`, `day_of_week`, `date_from`, `date_to`, `ministry`, `venue`, `duty`) VALUES
(1, 'Понедельник', '2013-03-16 16:00:00', '2013-03-16 17:00:00', 'Служение Евангелизации', 'Комната служителей', 'Паталах А.А.'),
(2, 'Понедельник', '2013-03-16 18:00:00', '2013-03-16 20:30:00', 'Репетиция прославления', 'Большой Зал', 'Петров А.В.'),
(3, 'Понедельник', '2013-03-16 17:00:00', '2013-03-16 19:00:00', 'Лидерское братское', 'Комната служителей', 'Скоробогач С.П.'),
(4, 'Вторник', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Репетиция танцевального коллектива &laquo;Слава в вышних&raquo;', 'Зал хореографии', 'Темиренко О.В.'),
(5, 'Вторник', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Репетиция прославления', 'Большой зал', 'Шкильнюк А.В.'),
(6, 'Среда', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Разбор Слова', 'Большой зал', 'Скоробогач С.П.'),
(7, 'Среда', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Последняя среда месяца – общецерковная молитва и причастие', 'Большой зал', 'Скоробогач С.П.'),
(8, 'Четверг - пасторский день', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Репетиция прославления', 'Большой зал', 'Шкильнюк А.В.'),
(9, 'Пятница', '2013-03-16 06:00:00', '2013-03-16 08:00:00', 'Молитва за служителей 9.00 - Причастие – 3-я Пятница месяца', 'Большой зал', 'Горюненко В.В.'),
(10, 'Пятница', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Молитвенное служение церкви', 'Большой зал', 'Горюненко В.В.'),
(11, 'Пятница', '2013-03-16 19:30:00', '2013-03-17 01:00:00', 'Ночная молитва церкви', 'Большой зал', 'Николаенко И.Н.'),
(12, 'Суббота', '2013-03-16 07:00:00', '2013-03-16 10:00:00', 'Служение &laquo;Мариупольской церкви&raquo;', 'Большой зал', 'Пастор Ивонин В.Э.'),
(13, 'Суббота', '2013-03-16 15:00:00', '2013-03-16 17:00:00', 'Видеослужение церкви, кинематография', 'Цокольный этаж  по согласованию', 'Красий А.С.'),
(14, 'Суббота', '2013-03-16 13:00:00', '2013-03-16 15:00:00', 'Подростковое служение', 'На дому у Левицких', 'Левицкая Т.А.'),
(15, 'Суббота', '2013-03-16 07:00:00', '2013-03-16 13:00:00', 'Видеошкола (см. Расписание на месяц)', 'Комната служителей', 'Сахаров А.В. Леонтьева Л.А.'),
(16, 'Воскресенье', '2013-03-16 08:00:00', '2013-03-16 10:00:00', 'Воскресное служение', 'Большой зал', 'Скоробогач С.П.'),
(17, 'Воскресенье', '2013-03-16 08:30:00', '2013-03-16 10:00:00', 'Младшая группа воскресной школы', 'Зал хореографии', 'Матвеева И.А.'),
(18, 'Воскресенье', '2013-03-16 10:30:00', '2013-03-16 12:00:00', 'Старшая группа воскресной школы', 'Класс воскресной школы', 'Матвеева И.А.'),
(19, 'Воскресенье', '2013-03-16 10:30:00', '2013-03-16 12:00:00', 'Воскресная школа-средняя и старшая группа', 'Класс воскресной школы', 'Матвеева И.А.'),
(20, 'Воскресенье', '2013-03-16 11:00:00', '2013-03-16 13:00:00', 'Репетиция танцевального коллектива &laquo;Слава в вышних&raquo;', 'Зал хореографии', 'Темиренко О.В.'),
(21, 'Воскресенье', '2013-03-16 10:30:00', '2013-03-16 12:30:00', 'Первое воскресенье месяца - лидерское дом.групп', 'Комната служителей', 'Красий И.И.'),
(22, 'Воскресенье', '2013-03-16 11:30:00', '2013-03-16 17:00:00', 'Видеошкола (см. Расписание на месяц)', 'Комната служителей', 'Леонтьева Л.А.'),
(23, 'Воскресенье', '2013-03-16 16:00:00', '2013-03-16 18:00:00', 'Лидерское ', 'Холл офиса<br/> Комната служителей', 'Скоробогач С.П.');

-- --------------------------------------------------------

--
-- Структура таблицы `top`
--

CREATE TABLE IF NOT EXISTS `top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `upload_dir` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `top`
--

INSERT INTO `top` (`id`, `url`, `title`, `upload_dir`, `img`, `txt`, `article_id`) VALUES
(28, 'holiday_8_march_2013', 'Поздравляем дорогих сестер с праздником весны, обновления, тепла и красоты!', 'news', 'happy-8-marth.jpg', '<p>Мы не будем спорить о происхождении праздника 8 Марта, но воспользуемся возможностью наполнить этот праздник новым содержанием - выразить Богу благодарность за прекрасную половину человечества и пожелать всем сестрам благоденствия, веры, надежды и бескочнечные, драгоценные богатства Неба, явленные нам во Христе!</p>\n<br/>\n<br/>\n<img style="float: right;" src="http://renewalold/upload/news/791718.jpg"/>\n<strong>\nПроходят годы чередою<br/>\nТы вновь стоишь на рубеже,<br/>\nА Бог и есть и ббыл с тобою<br/>\nИ Он помог во всем тебе.<br/>\nБог Сам хранил тебя рукою<br/>\nОн много благ тебе явил,<br/>\nИ в горе был всегда с тобою<br/>\nНигде тебя Он не забыл.<br/>\nОн нес тебя, а вместе бремя<br/>\nНести тебе Он помогал<br/>\nИ сильною рукой все время<br/>\nТебя не раз он избавлял.<br/>\nИди же к цели славной, чудной,<br/>\nНо не одна, а с Ним во всем<br/>\nИ никогда не будет трудно<br/>\nНигде тебе в пути земном!\n</strong>', 1),
(31, 'plod_duha_vozderzhanie', 'Плод Духа - воздержание', 'articles', 'plodi_duha.jpg', '<p><strong>Воздержание</strong> - способность сдерживать потребности плоти, быть умеренным в пище, в одежде, стремится сообветствовать Богу в привычках и стилях жизни. Это способность подавлять плотские желания, могущие завладеть человеком и стать похотью, ведущей к зависимости, греху.</p>\n<p>Галатам 5:22 &laquo;<span class="georgia">Плод же духа: любовь, радость, мир, долготерпение, благость, милосердие, вера, кротость, воздержание</span>&raquo;</p>\n<p>2-ое Петра 1:5-6 &laquo;<span class="georgia">то Вы, прилагая к сему все старание, покажите в вере вашей добродетель, в добродетели рассудительность, в рассудительности воздержание, в воздержании терпение, в терпении благочестие, в благочестие братолюбие, в братолюбии любовь.</span>&raquo;</p>', 2),
(32, 'god-heals-cancer', 'Бог исцелил от рака', 'testemonies', 'i_001.jpg', 'Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым. Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами»', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `vk_comments_id` varchar(255) NOT NULL,
  `short_info` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theme` (`short_info`),
  KEY `speaker` (`speaker`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Дамп данных таблицы `video`
--

INSERT INTO `video` (`id`, `img`, `url`, `time`, `adress`, `vk_comments_id`, `short_info`, `title`, `speaker`, `date`, `description`) VALUES
(3, 'seminar_bible_and_science.jpg', 'seminar_bible_and_science', '2:59', 'http://vk.com/video_ext.php?oid=35031472&id=164604555&hash=306ef8639f7666b4', '3478192', '15.02.2013', 'Семинар "Наука и Библия"', '', '2013-02-15 05:54:02', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(2, 'musicl_christmas_star.jpg', 'musicl_christmas_star', '3:22', 'http://vk.com/video_ext.php?oid=35031472&id=164560197&hash=66723ea6ff0e8f28', '', '09.02.2013', 'Мюзикл &laquo;Рождественская звездв&raquo;', '', '2013-02-09 05:16:34', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(1, 'sunday_ministry_27_01_2013.jpg', 'sunday_ministry_27_01_2013', '1:16:58', 'http://www.youtube.com/embed/uW7vMFfdtTE?feature=player_embedded', '', '27.01.2013', 'Воскресное Богослужение', '', '2013-01-27 06:19:52', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(4, 'christmas_evangelisation_holiday.jpg', 'christmas_evangelisation_holiday', '2:42', 'http://vk.com/video_ext.php?oid=35031472&id=164421729&hash=094143b7fe27b292', '', '22.01.2013', 'Рождественский евангелизационный праздник', '', '2013-01-22 06:28:29', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(5, 'sunday_ministry_20_01_2013.jpg', 'sunday_ministry_20_01_2013', '1:55:09', 'http://www.youtube.com/embed/8FRnoYkJ0Ec?feature=player_embedded', '', '20.01.2013', 'Воскресное Богослужение', '', '2013-01-20 07:36:20', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(6, 'sunday_ministry_13_01_2013.jpg', 'sunday_ministry_13_01_2013', '1:50:49', 'http://www.youtube.com/embed/k4_aqdY57Xs?feature=player_embedded', '', '13.01.2013', 'Воскресное Богослужение', '', '2013-01-13 07:40:19', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(7, 'sunday_ministry_06_01_2013.jpg', 'sunday_ministry_06_01_2013', '1:48:39', 'http://www.youtube.com/embed/B67k0_HebM0?feature=player_embedded', '', '06.01.2013', 'Воскресное Богослужение', '', '2013-01-06 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(8, 'mariupol_youth_tells_about_christmas.jpg', 'mariupol_youth_tells_about_christmas', '2:31', 'http://vk.com/video_ext.php?oid=35031472&id=164381272&hash=1673201d2cf2b062', '', '17.01.2012', 'Молодежь Мариуполя рассказала о смысле Рождества', '', '2013-01-17 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(9, 'kukolniy_seminar.jpg', 'kukolniy_seminar', '3:12', 'http://vk.com/video_ext.php?oid=35031472&id=164158002&hash=aeedec77bae1cb28', '', '04.11.2012', 'Кукольный семинар', '', '2012-11-04 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(10, 'ne_pokoleblus.jpg', 'ne_pokoleblus', '4:37', 'http://vk.com/video_ext.php?oid=35031472&id=163798442&hash=c9b2cb6ddc79f858', '', 'Прославление', 'Не покалеблюсь', '', '2012-10-28 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(11, 'bud_prevoznesen.jpg', 'bud_prevoznesen', '6:05', 'http://vk.com/video_ext.php?oid=35031472&id=163612270&hash=9061e8161e8e5eb1', '', 'Прославление', 'Будь превознесен', '', '2012-09-30 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(12, 'birthday_church_2013.jpg', 'birthday_church_2013', '12:47', 'http://vk.com/video_ext.php?oid=35031472&id=163586857&hash=fadf09b789c06784', '', 'Молодежное', 'День рождения Церкви 2013', '', '2012-09-27 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(13, 'seminar_o_vere_2013.jpg', 'seminar_o_vere_2013', '3:03', 'http://vk.com/video_ext.php?oid=35031472&id=163504163&hash=5c42efe1219c4a7a', '', '14.09.2012', 'Семинар о вере', '', '2012-09-14 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(14, 'obschegorodskaya_molodejka.jpg', 'obschegorodskaya_molodejka', '2:19', 'http://vk.com/video_ext.php?oid=35031472&id=163454243&hash=7398db859a743a65', '', '06.09.2012', 'Общегородская молодежка', '', '2012-09-06 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>');
INSERT INTO `video` (`id`, `img`, `url`, `time`, `adress`, `vk_comments_id`, `short_info`, `title`, `speaker`, `date`, `description`) VALUES
(15, 'siniy_krest_11_let.jpg', 'siniy_krest_11_let', '3:21', 'http://vk.com/video_ext.php?oid=35031472&id=163422072&hash=9e8032b2496445db', '', '31.08.2012', 'Синий крест 11 лет', '', '2012-08-31 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(16, 'blagotvoritelniy_obed_posolstvo_bogjie.jpg', 'blagotvoritelniy_obed_posolstvo_bogjie', '2:18', 'http://vk.com/video_ext.php?oid=35031472&id=163243499&hash=3670fde4705cac50', '', '02.08.2012', 'Благотворительный обед в Церкви Посольство Божье', '', '2012-08-02 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(17, 'genry_madava_v_mariupole.jpg', 'genry_madava_v_mariupole', '3:08', 'http://vk.com/video_ext.php?oid=35031472&id=163243467&hash=fd35981bfdb085c4', '', '02.08.2012', 'Генри Мадава в Мариуполе', '', '2012-08-02 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(18, 'lager_krystalniy_gorod_2012.jpg', 'lager_krystalniy_gorod_2012', '2:28', 'http://vk.com/video_ext.php?oid=35031472&id=163230993&hash=ac1049de76f1ebcf', '', '31.07.2012', 'Лагерь &laquo;Кристальный город&raquo; 2012', '', '2012-07-31 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(19, 'akcija_protiv_kurenija.jpg', 'akcija_protiv_kurenija', '1:47', 'http://vk.com/video_ext.php?oid=35031472&id=163169848&hash=d6b43ac3006e0ebb', '', '20.07.2012', 'Акция против курения', '', '2012-07-20 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(20, 'profilaktika_narkotikov.jpg', 'profilaktika_narkotikov', '3:49', 'http://vk.com/video_ext.php?oid=35031472&id=163161945&hash=783408f0f8479ac4', '', '19.07.2012', 'Профилактика наркотиков', '', '2012-07-19 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(21, 'prezentacija_reabilitacionnih_centrov.jpg', 'prezentacija_reabilitacionnih_centrov', '3:05', 'http://vk.com/video_ext.php?oid=35031472&id=163073447&hash=48c34be60e6f1438', '', '03.07.2012', 'Презентация реабилитационных центров', '', '2012-07-03 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(22, 'akcija_protiv_metadona.jpg', 'akcija_protiv_metadona', '2:23', 'http://vk.com/video_ext.php?oid=35031472&id=163071061&hash=fdc06db9f149be91', '', '02.07.2012', 'Акция против метадона', '', '2012-07-02 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(23, 'dobriy_samarajnin_11_let.jpg', 'dobriy_samarajnin_11_let', '2:30', 'http://vk.com/video_ext.php?oid=35031472&id=163043381&hash=96591194b9bb100c', '', '27.06.2012', 'Добрый самарянин 11 лет', '', '2012-06-27 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(24, 'otdih_invalidov_na_fedorovke.jpg', 'otdih_invalidov_na_fedorovke', '3:38', 'http://vk.com/video_ext.php?oid=35031472&id=163043344&hash=2eb6c2d2add696c7', '', '27.06.2012', 'Отдых на Федоровке детей-инвалидов', '', '2012-06-27 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(25, 'noviy_status-5_let.jpg', 'noviy_status-5_let', '3:48', 'http://vk.com/video_ext.php?oid=35031472&id=163012929&hash=5c905872d4961d63', '', '22.06.2012', '&laquo;Новый Статус&raquo; 5 лет', '', '2012-06-22 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(26, 'bogatiry_ot_boga.jpg', 'bogatiry_ot_boga', '2:56', 'http://vk.com/video_ext.php?oid=35031472&id=162997608&hash=db1a324dc19e154f', '', '20.06.2012', 'Богатыри от Бога', '', '2012-06-22 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(27, 'tell_me_why.jpg', 'tell_me_why', '3:57', 'http://vk.com/video_ext.php?oid=35031472&id=162992674&hash=825dac605d33b515', '', 'Молодежное', 'tell me why', '', '2012-06-19 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(28, 'lifehouse_everything.jpg', 'lifehouse_everything', '6:06', 'http://vk.com/video_ext.php?oid=35031472&id=162987402&hash=087b4630588f6955', '', 'Молодежное', 'Постановка &laquo;lifehouse everything&raquo;', '', '2012-06-18 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>');
INSERT INTO `video` (`id`, `img`, `url`, `time`, `adress`, `vk_comments_id`, `short_info`, `title`, `speaker`, `date`, `description`) VALUES
(29, 'marsh_protiv_abortov.jpg', 'marsh_protiv_abortov', '2:32', 'http://vk.com/video_ext.php?oid=35031472&id=162913572&hash=b7f5835b20425fa8', '', '06.06.2012', 'Марш против абортов', '', '2012-06-06 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(30, 'ty_velicolepen.jpg', 'ty_velicolepen', '13:02', 'http://vk.com/video_ext.php?oid=35031472&id=162912389&hash=1e892f63cfd954d7', '', 'Прославление', 'Ты великолепен', '', '2012-06-06 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(31, 'hvalite_boga_nebes.jpg', 'hvalite_boga_nebes', '4:43', 'http://vk.com/video_ext.php?oid=35031472&id=162890405&hash=9d5294429f897bed', '', 'Прославление', 'Хвалите Бога Небес', '', '2012-06-03 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(32, 'obschegorodskaya_molodejka_v_mae.jpg', 'obschegorodskaya_molodejka_v_mae', '2:08', 'http://vk.com/video_ext.php?oid=35031472&id=162874953&hash=59e79040c48bae25', '', '31.05.2012', 'Общегородская молодежка в мае', '', '2012-05-31 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(33, 'slava_v_vishnih_russkie_uzori.jpg', 'slava_v_vishnih_russkie_uzori', '2:26', 'http://vk.com/video_ext.php?oid=35031472&id=162857895&hash=cf7650669db0ec81', '', '29.05.2012', '&laquo;Слава в Вышних&raquo; на Русских Узорах', '', '2012-05-29 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(34, 'consert_sergey_briksa.jpg', 'consert_sergey_briksa', '3:00', 'http://vk.com/video_ext.php?oid=35031472&id=162764552&hash=8b63e982c04292bd', '', '15.05.2012', 'Концерт Сергея Бриксы', '', '2012-05-15 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(35, 'obschegorodskaya_molodejka_v_aprele.jpg', 'obschegorodskaya_molodejka_v_aprele', '2:27', 'http://vk.com/video_ext.php?oid=35031472&id=162653896&hash=53b9a84cf2667bf6', '', '28.04.2012', 'Общегородская молодежка в апреле', '', '2012-04-28 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(36, 'pashalnoe_pozdravlenie_cerkvey.jpg', 'pashalnoe_pozdravlenie_cerkvey', '2:10', 'http://vk.com/video_ext.php?oid=35031472&id=162607862&hash=0e952612b857b869', '', '21.04.2012', 'Пасхальное поздравление Церквей для горожан', '', '2012-04-21 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(37, 'turemnaya_conferenciya_slovo_jizni.jpg', 'turemnaya_conferenciya_slovo_jizni', '2:53', 'http://vk.com/video_ext.php?oid=35031472&id=162607825&hash=6eafc7f801c5b8b5', '', '21.04.2012', 'Тюремная конференция Слово Жизни', '', '2012-04-21 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(38, 'kemo_in_mariupol.jpg', 'kemo_in_mariupol', '2:35', 'http://vk.com/video_ext.php?oid=35031472&id=162574823&hash=f2212bedda3cb183', '', '16.04.2012', 'К.Е.М.О. в Мариуполе', '', '2012-04-16 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(39, 'vechno_budu_slavit_lish_tebya.jpg', 'vechno_budu_slavit_lish_tebya', '6:54', 'http://vk.com/video_ext.php?oid=35031472&id=162548845&hash=d9e8e8691bb9c236', '', 'Прославление', 'Вечно буду славить лишь тебя', '', '2012-04-12 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(40, 'nastoyaschaya_lubov.jpg', 'nastoyaschaya_lubov', '4:45', 'http://vk.com/video_ext.php?oid=35031472&id=162432883&hash=2ee7f64bb1c91cdd', '', 'Прославление', 'Настоящая любовь', '', '2012-03-27 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(41, 'nash_bog_velikiy.jpg', 'nash_bog_velikiy', '7:20', 'http://vk.com/video_ext.php?oid=35031472&id=162429926&hash=8e0abbebc22b66b2', '', 'Прославление', 'Наш Бог Великий', '', '2012-03-26 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(42, 'kreschenie_v_marte.jpg', 'kreschenie_v_marte', '1:42', 'http://vk.com/video_ext.php?oid=35031472&id=162426448&hash=42e2a7b4d30a2b70', '', '26.03.2012', 'Крещение в марте', '', '2012-03-26 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>');
INSERT INTO `video` (`id`, `img`, `url`, `time`, `adress`, `vk_comments_id`, `short_info`, `title`, `speaker`, `date`, `description`) VALUES
(43, 'kak_ne_nujno_delat.jpg', 'kak_ne_nujno_delat', '4:03', 'http://vk.com/video_ext.php?oid=35031472&id=162421409&hash=90cf1c46bac655b7', '', 'Прославление', 'Как не нужно делать:)', '', '2012-03-25 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(44, 'v_siyanii_tsarya.jpg', 'v_siyanii_tsarya', '4:53', 'http://vk.com/video_ext.php?oid=35031472&id=162409145&hash=5f920c50250e1b0f', '', 'Прославление', 'В сиянии царя', '', '2012-03-23 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(45, 'posovi.jpg', 'posovi', '8:47', 'http://vk.com/video_ext.php?oid=35031472&id=162406822&hash=28e35cd38679bdd6', '', 'Прославление', 'Позови', '', '2012-03-23 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(46, 'proslavlyat_tebya_ya_budu_vnov_i_vnov.jpg', 'proslavlyat_tebya_ya_budu_vnov_i_vnov', '7:35', 'http://vk.com/video_ext.php?oid=35031472&id=162402165&hash=ccf354c342784f19', '', 'Прославление', 'Прославлять Тебя я буду вновь и вновь', '', '2012-03-23 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(47, 'blagoslavluy_tebya_v_trudnuyu_minutu.jpg', 'blagoslavluy_tebya_v_trudnuyu_minutu', '7:15', 'http://vk.com/video_ext.php?oid=35031472&id=162402165&hash=ccf354c342784f19', '', 'Прославление', 'Благославлю Тебя в трудную минуту', '', '2012-03-22 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(48, 'tvorchesky_vecher_hvali_i_pokloneniya.jpg', 'tvorchesky_vecher_hvali_i_pokloneniya', '2:02', 'http://vk.com/video_ext.php?oid=35031472&id=162402165&hash=ccf354c342784f19', '', '21.03.2012', 'Творческий вечер хвалы и поклонения', '', '2012-03-21 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(49, 'prazdnik_dlya_materey_detey-invalidov.jpg', 'prazdnik_dlya_materey_detey-invalidov', '2:20', 'http://vk.com/video_ext.php?oid=35031472&id=162314655&hash=bdb2bf86ada44983', '', '09.03.2012', 'Праздник для матерей детей-инвалидов', '', '2012-03-09 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(50, 'veroy_ya_sdvinu_daje_gory.jpg', 'veroy_ya_sdvinu_daje_gory', '3:53', 'http://vk.com/video_ext.php?oid=35031472&id=162179595&hash=902e3460c35583a4', '', 'Прославление', 'Верой я сдвину даже горы', '', '2012-02-19 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(51, 'ti_dostoin.jpg', 'ti_dostoin', '5:30', 'http://vk.com/video_ext.php?oid=35031472&id=162176431&hash=664b8ae72736aa79', '', 'Прославление', 'Ты достоин', '', '2012-02-19 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(52, 'new_year_2012.jpg', 'new_year_2012', '27:33', 'http://vk.com/video_ext.php?oid=35031472&id=162097118&hash=44967f605bb9fcb7', '', 'Молодежное', 'Новый год 2012', '', '2012-01-01 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(53, 'ty_velikolepen.jpg', 'ty_velikolepen', '6:42', 'http://vk.com/video_ext.php?oid=35031472&id=162088074&hash=c739099ec05cfcb8', '', 'Прославление', 'Ты великолепен', '', '2012-02-06 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(54, 'new_year_2012_2.jpg', 'new_year_2012_2', '7:14', 'http://vk.com/video_ext.php?oid=35031472&id=162021015&hash=6ca46772379cb7f0', '', 'Молодежное', 'Новый год 2012', '', '2012-01-01 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(55, 'rojdestvo_detsad_124.jpg', 'rojdestvo_detsad_124', '1:58', 'http://vk.com/video_ext.php?oid=35031472&id=161995839&hash=e469c115283e5e27', '', '25.01.2012', 'Рождество в детском саду №124', '', '2012-01-25 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(56, 'tanec_so_svechami.jpg', 'tanec_so_svechami', '2:45', 'http://vk.com/video_ext.php?oid=35031472&id=161956145&hash=f2d5dc5c030a34af', '', 'Танцевальное', 'Танец со свечами', '', '2012-01-20 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>');
INSERT INTO `video` (`id`, `img`, `url`, `time`, `adress`, `vk_comments_id`, `short_info`, `title`, `speaker`, `date`, `description`) VALUES
(57, 'retro_2004_2011.jpg', 'retro_2004_2011', '3:49', 'http://vk.com/video_ext.php?oid=35031472&id=161823526&hash=c9bd03ea1d9e95ba', '', 'Молодежь ретро', 'Ретро 2004-2011', '', '2012-01-01 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(58, 'ti_vsegda_so_mnoy.jpg', 'ti_vsegda_so_mnoy', '3:52', 'http://vk.com/video_ext.php?oid=35031472&id=161586986&hash=5a53d9f6823709d5', '', 'Прославление', 'Ты всегда со мной', '', '2011-11-27 22:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(59, 'retro_pesni_proslavlenie.jpg', 'retro_pesni_proslavlenie', '22:57', 'http://vk.com/video_ext.php?oid=35031472&id=161581407&hash=55bcb20098d5b19a', '', 'Прославление', 'Ретро песни прославления', '', '2011-11-27 22:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(60, 'detskiy_lager_2011.jpg', 'detskiy_lager_2011', '3:34', 'http://vk.com/video_ext.php?oid=35031472&id=160668711&hash=804febc313d6b8d3', '', 'Детский лагерь', 'Детский лагерь 2011', '', '2011-07-20 21:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(61, 'ya_poydu_kuda_nikto_ne_hochet.jpg', 'ya_poydu_kuda_nikto_ne_hochet', '3:03', 'http://vk.com/video_ext.php?oid=35031472&id=160547604&hash=37649681e4e6e0a3', '', 'Евангелизация', 'Я пойду туда, куда никто не хочет...', '', '2011-07-04 21:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(62, 'presentaciya_molodejnogo_slujeniya.jpg', 'presentaciya_molodejnogo_slujeniya', '19:18', 'http://vk.com/video_ext.php?oid=35031472&id=159173325&hash=9580609629acb22c', '', 'Молодежное', 'Презентация молодежного служения', '', '2011-02-05 22:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(63, 'molodej_2010.jpg', 'molodej_2010', '3:09', 'http://vk.com/video_ext.php?oid=35031472&id=159033250&hash=b3aea8e22dc7a951', '', 'Молодежное', 'Молодежь в 2010 году', '', '2011-01-19 22:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(64, 'hram_gospoda_sozidaetsya.jpg', 'hram_gospoda_sozidaetsya', '4:01', 'http://vk.com/video_ext.php?oid=35031472&id=155969149&hash=95983da086d3383f', '', 'прославление', 'Храм Господа созидается', '', '2010-11-24 22:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(65, 'otdih_na_fedorovke_2010.jpg', 'otdih_na_fedorovke_2010', '3:04', 'http://vk.com/video_ext.php?oid=35031472&id=154828102&hash=1165ddb87c75c32f', '', 'ДОЦ Сарепта', 'Отдых на Федоровке в 2010 году', '', '2010-11-09 22:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(66, 'molodej_na_den_rojdeniya_pastora_2010.jpg', 'molodej_na_den_rojdeniya_pastora_2010', '10:57', 'http://vk.com/video_ext.php?oid=35031472&id=142028234&hash=53cae1c7745878d8', '', 'Молодежное', 'Поздравление ко дню рождения пастора 2010', '', '2010-04-05 21:00:00', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(67, 'igor_kravchenko_mame.jpg', 'igor_kravchenko_mame', '4:52', 'http://vk.com/video_ext.php?oid=35031472&id=141355119&hash=75cfcaf44ed468e0', '', 'Поздравление', 'Игорь Кравченко &laquo;Маме&raquo;', '', '2010-03-23 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(68, 'molodej_fotocollage.jpg', 'molodej_fotocollage', '2:58', 'http://vk.com/video_ext.php?oid=35031472&id=138375610&hash=67e554319bd803da', '', 'Молодежное', 'Молодежь фотоколлаж', '', '2010-01-14 16:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>'),
(69, 'tanec_nebesa.jpg', 'tanec_nebesa', '5:31', 'http://vk.com/video_ext.php?oid=35031472&id=144321422&hash=4edbc2f81acc76e2', '', 'Танцевальное', 'Танец &laquo;Небеса&raquo;', '', '2010-05-21 15:03:45', '<p>Помнили об этой идее и в новообразованном после Люблинской унии 1569 года польско-литовском государстве, Речи Посполитой. 2-го июня 1572 г. король Сигизмунд II Август подписал соответствующий универсал, в соответствии с которым, коронный гетман Ю. Язловецкий нанял для службы первых 300 казаков. Они давали присягу на верность королю и должны были, находясь в полной боевой готовности, отражать вторжения татар на территорию Речи Посполитой, участвовать в подавлении выступлений крестьян, восстававших против панов, и в походах на Москву и Крым.</p>\r\n        <p>Эти казаки были занесены в специальный список (реестр), подтверждавший их права и привилегии, связанные с их государственной службой. Из-за чего, эти казаки получили наименование реестровые казаки (реестровцы). В сентябре 1578 года король Стефан Баторий издал указ под названием «Соглашение с низовцами». Количество реестровцев увеличилось до 500 человек, а в 1583 — до 600. Реестровые казаки получили во владение городок Трахтемиров в Киевском воеводстве, где размещались войсковая скарбница, архивы, арсенал, госпиталь, приют для бессемейных инвалидов. Король передал казакам клейноды (хоругвь, бунчук, булаву и печать). Официально, реестровое казачье войско называлось «Войско Его Королевской Милости Запорожское»[4]. Войско Запорожское состояло из пехоты, конницы и артиллерии. Основой войска была казацкая пехота[источник не указан 88 дней], вооружённая мушкетами, пистолями и холодным оружием. Казацкая конница представляла собой легкую кавалерию, которая была вооружена в основном саблями, пиками и карабинами. Подразделялось реестровое казацкое войско на полки и сотни. Полком командовал полковник, сотней — сотник. Артиллерия</p>');

--
-- Триггеры `video`
--
DROP TRIGGER IF EXISTS `delete_filter_video`;
DELIMITER //
CREATE TRIGGER `delete_filter_video` AFTER DELETE ON `video`
 FOR EACH ROW DELETE FROM `filter_video` WHERE `elem_id` = OLD.id
//
DELIMITER ;

DELIMITER $$
--
-- События
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_captcha` ON SCHEDULE EVERY 24 HOUR STARTS '2013-02-16 09:49:42' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM `captcha` 
WHERE is_online <= (CURRENT_TIMESTAMP - INTERVAL 6 DAY)$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
