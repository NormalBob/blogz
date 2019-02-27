-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 27 2019 г., 21:28
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blogz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description_short`, `description`, `image`, `image_show`, `meta_title`, `meta_description`, `meta_keyword`, `published`, `viewed`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(8, 'Suspendisse', 'suspendisse-2702191822', '<p>In hac habitasse platea dictumst. Aliquam vitae congue ligula. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla elementum massa neque, ac molestie elit vulputate accumsan. Maecenas id finibus enim, nec lobortis velit. Proin dictum finibus dictum. Donec faucibus orci mi, imperdiet posuere leo molestie sed. Sed bibendum orci in lectus tincidunt bibendum. Sed vel arcu dapibus, dapibus enim eu, cursus ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras ac tortor lectus. Proin eleifend orci at risus vulputate euismod vestibulum ac urna. Nam quis suscipit sapien. Curabitur tempor odio nec sagittis imperdiet.</p>', '<p>In hac habitasse platea dictumst. Aliquam vitae congue ligula. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla elementum massa neque, ac molestie elit vulputate accumsan. Maecenas id finibus enim, nec lobortis velit. Proin dictum finibus dictum. Donec faucibus orci mi, imperdiet posuere leo molestie sed. Sed bibendum orci in lectus tincidunt bibendum. Sed vel arcu dapibus, dapibus enim eu, cursus ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras ac tortor lectus. Proin eleifend orci at risus vulputate euismod vestibulum ac urna. Nam quis suscipit sapien. Curabitur tempor odio nec sagittis imperdiet.</p>\r\n\r\n<p>Duis condimentum, nisi et semper vestibulum, ex nisi pulvinar ligula, sed feugiat odio ante ut purus. Cras euismod faucibus augue in porta. Proin consectetur faucibus dolor, eu dignissim purus. Fusce lacinia vel sapien sit amet bibendum. Phasellus in augue fringilla, lobortis felis vitae, tempus elit. Proin iaculis ipsum ut leo tristique porta. Mauris eu odio mollis, ultricies ante sed, sodales nibh. Maecenas nec libero velit. Cras neque lorem, luctus vitae arcu sed, pulvinar accumsan urna. Praesent auctor nisi vulputate consectetur sollicitudin.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum, massa eu convallis auctor, erat nisi dignissim purus, eu tincidunt enim purus vitae risus. Pellentesque cursus consequat urna nec ornare. Sed in placerat magna. Suspendisse potenti. Sed dolor ligula, pellentesque nec mattis id, scelerisque in turpis. Pellentesque sapien ante, tempus non ex a, dictum elementum ligula. Duis tempor, ligula at sodales pretium, dui purus feugiat urna, quis luctus quam massa sit amet felis. Maecenas ligula ipsum, auctor in pharetra ac, tristique id nisi. Duis convallis dictum purus, nec pretium libero euismod ac. Sed quis nisl libero. Ut porttitor convallis turpis, sit amet aliquam nisl sodales in. Suspendisse placerat justo dolor, commodo ultricies odio porttitor at. Etiam ac diam mollis, vestibulum nisi vitae, fringilla sem. Vestibulum rhoncus lorem nisi, eget ullamcorper justo suscipit sit amet. Morbi sed scelerisque sem, non laoreet metus.</p>\r\n\r\n<p>Aenean pharetra leo sagittis risus imperdiet, gravida rutrum est laoreet. Integer ac mollis metus, efficitur posuere lectus. Mauris viverra mi id lectus vulputate gravida. Duis sit amet odio urna. Cras quam leo, elementum id pretium non, imperdiet ac risus. Nam porta cursus nulla, a lacinia orci condimentum a. Suspendisse finibus, quam nec efficitur finibus, sapien dolor imperdiet tellus, sed consectetur tortor nisi pharetra sapien. Pellentesque sit amet lorem convallis, tempor dui non, efficitur est.</p>\r\n\r\n<p>Duis nec dictum metus, vitae molestie lorem. Vestibulum lobortis tellus ligula, vitae malesuada tortor lacinia sed. Nam ut rutrum sapien. Fusce elementum placerat magna, non euismod sapien. Phasellus viverra scelerisque nisl, non euismod turpis mollis ac. Cras id rutrum dolor. Quisque pretium elit tempor feugiat rutrum. Curabitur orci nulla, tempor eu sagittis at, consectetur ac lectus.</p>', '1551291749.jpg', 1, 'Suspendisse', 'Suspendisse', 'Suspendisse', 1, NULL, 1, NULL, '2019-02-27 16:22:29', '2019-02-27 16:22:34'),
(9, 'Quisque', 'quisque-2702191823', '<p>Nam porta, erat et tempus faucibus, erat ex venenatis sem, eget lobortis lectus enim gravida justo. Quisque a finibus tellus. Proin ullamcorper lorem ante, sed hendrerit nisl auctor id. Etiam eleifend porttitor nisl, eu consectetur neque laoreet id. Vestibulum mattis diam non lorem ornare, sit amet convallis metus placerat. Morbi gravida ipsum orci, eu pharetra magna dignissim elementum. Donec ligula leo, faucibus at massa nec, porta ultrices nulla. Ut commodo felis nec orci iaculis, at placerat leo dapibus. Morbi mattis ligula justo, egestas ultricies purus viverra non. Nunc faucibus, purus vitae auctor porttitor, ligula nisi tincidunt justo, non molestie nisi nunc a ipsum. Quisque sit amet arcu augue. Pellentesque porta odio eget magna mattis pretium. Curabitur commodo posuere consequat. Aenean elit lorem, ornare in laoreet et, blandit nec diam.</p>', '<p>Nam porta, erat et tempus faucibus, erat ex venenatis sem, eget lobortis lectus enim gravida justo. Quisque a finibus tellus. Proin ullamcorper lorem ante, sed hendrerit nisl auctor id. Etiam eleifend porttitor nisl, eu consectetur neque laoreet id. Vestibulum mattis diam non lorem ornare, sit amet convallis metus placerat. Morbi gravida ipsum orci, eu pharetra magna dignissim elementum. Donec ligula leo, faucibus at massa nec, porta ultrices nulla. Ut commodo felis nec orci iaculis, at placerat leo dapibus. Morbi mattis ligula justo, egestas ultricies purus viverra non. Nunc faucibus, purus vitae auctor porttitor, ligula nisi tincidunt justo, non molestie nisi nunc a ipsum. Quisque sit amet arcu augue. Pellentesque porta odio eget magna mattis pretium. Curabitur commodo posuere consequat. Aenean elit lorem, ornare in laoreet et, blandit nec diam.</p>\r\n\r\n<p>Vestibulum auctor hendrerit feugiat. Suspendisse cursus magna tortor. Mauris neque lorem, tincidunt at molestie non, suscipit nec elit. Cras sit amet eleifend dolor. Nunc vel neque at lectus aliquam pellentesque. Vestibulum volutpat non mauris eget tempus. Vivamus lacinia viverra lectus, id tristique sem laoreet a. Cras consectetur arcu enim, nec vehicula mauris egestas id. In tincidunt eleifend ipsum sit amet tristique. Mauris mattis lacus ut pulvinar blandit.</p>\r\n\r\n<p>Donec a ornare ligula, rutrum tristique enim. Aenean pharetra ipsum id tortor egestas, id iaculis tortor pulvinar. Nam ornare tellus id diam fringilla molestie. Etiam vel diam faucibus, tristique velit eu, imperdiet tellus. Cras pharetra erat in sollicitudin blandit. Sed porttitor justo ut mattis rhoncus. Vivamus consequat nisi scelerisque massa tristique, viverra vestibulum orci interdum.</p>\r\n\r\n<p>Mauris mollis imperdiet odio, et blandit mauris elementum sed. Maecenas in mauris vel ex fringilla molestie sodales eu tortor. Mauris finibus condimentum eros eget ultrices. Morbi arcu leo, sodales sed neque volutpat, rutrum venenatis enim. Pellentesque vitae libero ut quam feugiat auctor. Pellentesque ultricies nunc eu condimentum semper. Sed eu fringilla ante, id bibendum eros. Sed eget posuere dui, eu pharetra nisl.</p>\r\n\r\n<p>Donec pulvinar, lectus a aliquam maximus, dui nisi lobortis ex, in fermentum ante nisl sit amet est. Nulla laoreet augue in nisl rhoncus congue. Proin pulvinar laoreet orci pulvinar aliquet. Integer aliquet urna non dapibus lacinia. Integer varius, orci non tincidunt malesuada, velit nibh iaculis lacus, eu tempus lectus enim ac lectus. Aliquam condimentum, mi in scelerisque tincidunt, odio metus posuere nulla, sed faucibus leo nunc commodo velit. Cras malesuada mollis enim, et semper lorem tincidunt ultricies. Nulla aliquet pretium vestibulum. Suspendisse odio elit, consectetur vitae ipsum venenatis, fermentum imperdiet eros. Donec ac dignissim nibh. Etiam facilisis quam ut posuere eleifend. Nam venenatis, nisi vitae fringilla feugiat, urna risus elementum urna, vitae molestie nisl tellus at diam. Quisque eu risus ligula.</p>', '1551291784.jpg', 1, 'Quisque', 'Quisque', 'Quisque', 1, NULL, 1, NULL, '2019-02-27 16:23:04', '2019-02-27 16:23:05'),
(10, 'Morbi', 'morbi-2702191823', '<p>Morbi accumsan sagittis massa, ac efficitur arcu porta ut. Pellentesque pulvinar non magna vitae sollicitudin. Aliquam massa metus, commodo ut mollis ac, tincidunt at urna. Vestibulum non purus viverra, sagittis est vitae, vehicula est. Mauris tincidunt eros lobortis, porttitor augue sit amet, sodales nulla. Sed non venenatis sem, eget blandit est. Morbi tellus enim, efficitur hendrerit leo id, commodo molestie tortor. Suspendisse libero sem, tristique ac neque ut, egestas tempor neque.</p>', '<p>Morbi accumsan sagittis massa, ac efficitur arcu porta ut. Pellentesque pulvinar non magna vitae sollicitudin. Aliquam massa metus, commodo ut mollis ac, tincidunt at urna. Vestibulum non purus viverra, sagittis est vitae, vehicula est. Mauris tincidunt eros lobortis, porttitor augue sit amet, sodales nulla. Sed non venenatis sem, eget blandit est. Morbi tellus enim, efficitur hendrerit leo id, commodo molestie tortor. Suspendisse libero sem, tristique ac neque ut, egestas tempor neque.</p>\r\n\r\n<p>Nullam ut sapien purus. Fusce facilisis placerat felis a sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec feugiat tincidunt ipsum, eget tempor tortor ultricies in. Cras sodales, enim sed lacinia consequat, felis odio condimentum tortor, tempus faucibus est ante a arcu. Aenean aliquam dolor at purus consectetur, sagittis tempor ex bibendum. Vivamus tempor arcu eget cursus accumsan. Quisque suscipit sodales placerat. Morbi tincidunt diam est, ac rhoncus massa pellentesque eget. Nulla sed risus cursus, faucibus metus sed, vulputate lacus. Etiam porttitor, massa eget tristique vestibulum, metus lacus lobortis nulla, ac facilisis nisl augue vel nisi. Duis vehicula risus in est gravida ullamcorper. Nullam aliquet leo lorem.</p>\r\n\r\n<p>Nam fringilla hendrerit neque id interdum. Pellentesque accumsan euismod posuere. Nullam gravida nisi in lectus sagittis, vel pulvinar orci elementum. Ut convallis, libero sed maximus aliquet, sem massa semper quam, tincidunt mollis lorem lorem ac risus. Donec lacinia magna nisl, ac volutpat neque elementum sit amet. Nullam faucibus laoreet ultricies. Duis placerat nisl eu est ultricies molestie. Vivamus auctor tortor in sapien pulvinar molestie. Mauris semper arcu tortor. Etiam fermentum egestas lacus sit amet commodo. Etiam lacinia nisi lectus, eget elementum enim viverra ac. Nam porta dictum augue dictum tincidunt. Aliquam tellus orci, ultrices id urna a, blandit euismod lacus. Proin in sapien porttitor arcu ultrices suscipit non eu quam.</p>\r\n\r\n<p>Maecenas a facilisis eros. Morbi laoreet elit risus, posuere mattis mi aliquet id. Aenean lacus leo, pellentesque id nulla id, fringilla lobortis mauris. Maecenas condimentum, elit in consectetur feugiat, enim odio dapibus justo, ut venenatis justo ante condimentum magna. Duis elementum rutrum velit, eget tristique ipsum congue ut. Ut id nulla eros. Etiam a augue varius, lacinia mi malesuada, bibendum mi. Vestibulum vel euismod turpis. Ut cursus odio nisl, eu feugiat risus viverra ac. Donec id semper purus, eu tempor libero. Suspendisse ut nisi magna. In quis nisl non ex venenatis pretium eu quis dolor. Cras a tempus felis. Donec in pharetra risus.</p>\r\n\r\n<p>Donec ac vulputate tortor. Phasellus condimentum leo id libero fermentum interdum. Phasellus viverra justo ac diam tempus lacinia. Cras ac arcu blandit, sagittis magna et, lacinia nisl. Sed tristique eget ex vitae auctor. Suspendisse rhoncus euismod ullamcorper. Quisque a urna purus. Vestibulum malesuada condimentum imperdiet. Vestibulum quis sapien ut turpis pulvinar laoreet vel vel quam. Aliquam eu purus et mauris ultrices ullamcorper. Mauris facilisis, neque eu eleifend pulvinar, lectus dolor pretium libero, sit amet porta orci purus non nibh. Sed fermentum nisi id risus interdum, gravida iaculis nunc luctus. Aenean aliquam ornare nunc. Aenean fringilla, enim ut consectetur aliquam, dolor purus euismod ligula, sit amet rutrum arcu orci sit amet tellus.</p>', '1551291818.jpg', 1, 'Morbi', 'Morbi', 'Morbi', 1, NULL, 1, NULL, '2019-02-27 16:23:38', '2019-02-27 16:23:39'),
(11, 'Aenean', 'aenean-2702191824', '<p>Aenean sodales laoreet nisl, eget feugiat libero mollis nec. Pellentesque ac sapien et enim pharetra tincidunt dapibus ac purus. Praesent scelerisque bibendum lacus, in fermentum nulla. Nulla faucibus metus eu est fringilla vulputate. Phasellus sodales turpis ut rutrum vestibulum. Nulla maximus varius nisi a volutpat. Nulla facilisi. Vivamus in velit bibendum, tempus nulla ac, feugiat ante. Quisque luctus arcu at interdum pulvinar. Aenean ut accumsan diam. Praesent cursus, turpis sed molestie lacinia, diam neque venenatis eros, et consequat nisl urna ut turpis. Vivamus eget eros sodales, pharetra felis et, venenatis lectus. Donec quis neque eget diam hendrerit vulputate. Duis finibus felis a finibus luctus. Ut condimentum posuere augue, eu tincidunt elit ultrices ut.</p>', '<p>Aenean sodales laoreet nisl, eget feugiat libero mollis nec. Pellentesque ac sapien et enim pharetra tincidunt dapibus ac purus. Praesent scelerisque bibendum lacus, in fermentum nulla. Nulla faucibus metus eu est fringilla vulputate. Phasellus sodales turpis ut rutrum vestibulum. Nulla maximus varius nisi a volutpat. Nulla facilisi. Vivamus in velit bibendum, tempus nulla ac, feugiat ante. Quisque luctus arcu at interdum pulvinar. Aenean ut accumsan diam. Praesent cursus, turpis sed molestie lacinia, diam neque venenatis eros, et consequat nisl urna ut turpis. Vivamus eget eros sodales, pharetra felis et, venenatis lectus. Donec quis neque eget diam hendrerit vulputate. Duis finibus felis a finibus luctus. Ut condimentum posuere augue, eu tincidunt elit ultrices ut.</p>\r\n\r\n<p>Integer nec turpis sodales leo egestas dapibus. Aenean efficitur, orci et pharetra bibendum, enim massa finibus turpis, id scelerisque tellus ipsum vel lectus. Vivamus interdum nisi sed purus accumsan sodales eget quis nibh. Donec dui massa, egestas vitae neque non, feugiat pretium magna. Etiam eget odio eu mi pretium maximus. Cras massa eros, consequat eu aliquam quis, dignissim a mauris. Maecenas sed dui a odio aliquet aliquet sed at tortor.</p>\r\n\r\n<p>Nunc ut sem lorem. Ut ligula neque, tempor vitae sapien in, viverra aliquet mauris. Quisque at pulvinar elit, quis vulputate urna. Integer tincidunt sollicitudin nisl ullamcorper mollis. Maecenas vitae maximus massa. Donec faucibus magna odio, ut elementum leo dignissim ut. Nam vitae erat tristique, condimentum diam sit amet, suscipit libero. Suspendisse laoreet interdum sapien ac facilisis. Vivamus malesuada lobortis est, nec malesuada enim feugiat non. Praesent volutpat mi at ligula luctus rutrum.</p>\r\n\r\n<p>Fusce vitae blandit mauris, et malesuada metus. Suspendisse suscipit non ligula eu facilisis. Suspendisse iaculis arcu ut lacus dapibus, et porttitor est auctor. Integer vel dapibus urna, ac semper dui. Mauris imperdiet laoreet nulla, nec porttitor mauris tincidunt quis. Quisque interdum elit et sem sollicitudin vestibulum. In lobortis tincidunt ex.</p>\r\n\r\n<p>Maecenas hendrerit ac enim vel efficitur. Nulla ut interdum magna. Vestibulum sit amet venenatis turpis. Praesent ornare tellus ut faucibus varius. Nullam ornare sapien lectus. Nunc porta dolor a interdum feugiat. Nam sit amet aliquet nulla, quis sodales velit. Curabitur tincidunt nunc non metus lobortis, sed elementum ligula commodo. Sed ac nisi nibh. Duis egestas quam ac diam tincidunt, id lacinia metus fermentum.</p>', '1551291845.jpg', 1, 'Aenean', 'Aenean', 'Aenean', 1, NULL, 1, NULL, '2019-02-27 16:24:05', '2019-02-27 16:24:07'),
(12, 'Phasellus', 'phasellus-2702191824', '<p>Sed id varius erat, ut sagittis lectus. Pellentesque non cursus ex. Nam id dolor nibh. Nam commodo malesuada consequat. In hac habitasse platea dictumst. Curabitur ornare malesuada odio, eu facilisis sem suscipit sit amet. Pellentesque ultricies neque sed ante sodales sagittis. Sed non diam ex. Nam condimentum eleifend nibh accumsan placerat. Proin porta porta arcu, et molestie lectus egestas et. Praesent enim eros, imperdiet et finibus sed, porttitor at arcu. Phasellus in congue elit, blandit dictum mi. In molestie ullamcorper consectetur. In hac habitasse platea dictumst.</p>', '<p>Sed id varius erat, ut sagittis lectus. Pellentesque non cursus ex. Nam id dolor nibh. Nam commodo malesuada consequat. In hac habitasse platea dictumst. Curabitur ornare malesuada odio, eu facilisis sem suscipit sit amet. Pellentesque ultricies neque sed ante sodales sagittis. Sed non diam ex. Nam condimentum eleifend nibh accumsan placerat. Proin porta porta arcu, et molestie lectus egestas et. Praesent enim eros, imperdiet et finibus sed, porttitor at arcu. Phasellus in congue elit, blandit dictum mi. In molestie ullamcorper consectetur. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Aliquam rhoncus scelerisque felis, vitae pulvinar ante pulvinar quis. Phasellus at mi a tellus blandit consequat. Vivamus ornare facilisis feugiat. Proin efficitur gravida neque, sed volutpat erat efficitur quis. Mauris nec efficitur turpis, et vulputate urna. Proin dignissim augue maximus leo lobortis hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus consequat maximus tellus, convallis cursus nunc porta sit amet. Etiam rutrum leo sit amet mollis tempor. Quisque auctor est sed blandit semper. Donec dictum ultricies nisl ac placerat. Duis ipsum lacus, volutpat vitae tincidunt ac, maximus eu dui. Duis ut efficitur tortor. Mauris et enim sit amet lacus feugiat pharetra in sed purus. Aenean tristique iaculis faucibus. Sed vehicula sapien eu auctor rhoncus.</p>\r\n\r\n<p>Proin ac venenatis nunc, vel fringilla turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur arcu felis, sodales faucibus nulla sit amet, pulvinar porttitor velit. Proin tincidunt tellus ac lectus volutpat lobortis. Aenean et vehicula nibh. Vivamus vitae eros laoreet, ullamcorper elit nec, gravida risus. Integer molestie nibh nibh, eget viverra libero dapibus et. Nullam hendrerit arcu arcu, ut sollicitudin libero pretium et. Vestibulum pulvinar dolor a dignissim maximus.</p>\r\n\r\n<p>Duis condimentum malesuada lobortis. Suspendisse vehicula rutrum ipsum, id posuere libero sollicitudin id. Praesent ornare diam ut pretium viverra. Sed blandit tortor nulla, et tempus arcu auctor in. Proin ut lectus quis risus sodales ullamcorper. Nulla at orci eros. Duis consequat venenatis orci sed scelerisque. In nec nisl mi. Phasellus risus mi, feugiat sit amet tortor vel, accumsan fermentum nisl. Sed dapibus sagittis erat, id interdum lacus hendrerit sit amet. Aliquam dapibus ante vitae eleifend interdum. Sed ac euismod est. Quisque ultrices dolor enim, at feugiat leo varius a. Suspendisse condimentum enim non nisl scelerisque, iaculis placerat ligula aliquet.</p>\r\n\r\n<p>Morbi a augue in lectus malesuada dictum. Aenean iaculis semper urna eu aliquam. Sed fringilla enim metus, sed imperdiet libero aliquam non. Maecenas ut tellus non neque congue molestie. Aenean eleifend suscipit lacinia. Ut pulvinar ipsum nisi, quis pulvinar lorem tristique eu. Curabitur dictum placerat justo ut volutpat. Cras volutpat nisl vitae convallis semper. Aenean sed porta mi. Nam et rutrum diam. Duis quis magna eu tellus tincidunt rhoncus. Nam et euismod nisl. Sed faucibus tellus quis eros elementum pulvinar. Aliquam venenatis nunc felis, in elementum nunc finibus eu. Proin a dui ante. Sed hendrerit nisi massa, id condimentum odio condimentum eu.</p>', '1551291883.jpg', 1, 'Phasellus', 'Phasellus', 'Phasellus', 1, NULL, 1, NULL, '2019-02-27 16:24:43', '2019-02-27 16:24:45'),
(13, 'Cras', 'cras-2702191825', '<p>Cras ut laoreet ipsum. Ut eget lorem a mauris imperdiet pellentesque at accumsan leo. Vivamus venenatis ullamcorper orci sit amet commodo. Quisque hendrerit eu ex et ornare. Aenean elementum dolor eget elit suscipit, a luctus ante suscipit. Nulla sed tempus eros, sed pretium erat. Duis nec nisl non lacus congue imperdiet. Aenean nec volutpat augue. Donec eu dui ut enim commodo eleifend. Proin erat enim, vestibulum ut sapien vel, feugiat pulvinar dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque fringilla ligula ac dui rhoncus lacinia. Nulla nulla velit, ornare vel nisi sed, viverra eleifend tortor. Praesent eleifend aliquam enim.</p>', '<p>Cras ut laoreet ipsum. Ut eget lorem a mauris imperdiet pellentesque at accumsan leo. Vivamus venenatis ullamcorper orci sit amet commodo. Quisque hendrerit eu ex et ornare. Aenean elementum dolor eget elit suscipit, a luctus ante suscipit. Nulla sed tempus eros, sed pretium erat. Duis nec nisl non lacus congue imperdiet. Aenean nec volutpat augue. Donec eu dui ut enim commodo eleifend. Proin erat enim, vestibulum ut sapien vel, feugiat pulvinar dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque fringilla ligula ac dui rhoncus lacinia. Nulla nulla velit, ornare vel nisi sed, viverra eleifend tortor. Praesent eleifend aliquam enim.</p>\r\n\r\n<p>Duis euismod magna dolor, at maximus tortor scelerisque quis. Sed in metus aliquam, suscipit diam nec, commodo nulla. Fusce condimentum nisi eu mauris placerat, vel gravida ex lobortis. Aliquam rhoncus porttitor molestie. Praesent consequat vulputate commodo. Morbi pharetra aliquam dui, et pellentesque mauris bibendum sit amet. Praesent blandit tristique dapibus.</p>\r\n\r\n<p>Cras mattis fermentum orci nec aliquam. Duis eu semper sem. Pellentesque vulputate dolor eu efficitur auctor. Proin tellus augue, mollis eu orci volutpat, pellentesque commodo purus. Curabitur placerat turpis a ultrices condimentum. Vivamus eu fringilla magna, vitae scelerisque ligula. Quisque sem tortor, iaculis at lacus non, consequat tincidunt magna. Fusce ultrices neque ante, vitae euismod arcu iaculis at. Proin et purus sed purus vehicula aliquam.</p>\r\n\r\n<p>Ut a feugiat risus. Aenean accumsan eros ut elit laoreet, vel tempus ex volutpat. Sed tristique augue ac tincidunt eleifend. Fusce semper bibendum varius. Maecenas pellentesque dignissim iaculis. Mauris eu urna mollis, finibus felis eu, tempus neque. Nullam rutrum, nulla quis tempor eleifend, neque augue efficitur purus, nec tincidunt nisi magna vel libero. Etiam quis augue tristique, eleifend ligula non, pulvinar nisl. Curabitur lectus dui, pulvinar et rhoncus non, tincidunt quis sem.</p>\r\n\r\n<p>Proin eget lobortis enim. Nam tempus massa sem, eu interdum odio aliquam nec. Fusce magna dui, pulvinar eu orci sit amet, euismod posuere est. Suspendisse dapibus neque urna, nec malesuada felis sagittis vitae. Aenean vehicula consequat odio, sit amet fermentum justo bibendum viverra. Donec volutpat purus nec placerat lobortis. Ut lacinia lectus vel nulla placerat gravida. Cras ut nunc eu metus posuere vestibulum et sit amet quam. Vestibulum faucibus felis nulla, et vulputate purus suscipit non. Sed a orci porttitor, pretium lacus id, sodales dui. Maecenas vulputate nulla non risus pretium, eget congue diam interdum. Vestibulum varius luctus consequat. Praesent at finibus urna, at suscipit nisi. Cras sit amet dui auctor, congue mauris vel, interdum velit.</p>', '1551291915.jpg', 1, 'Cras', 'Cras', 'Cras', 1, NULL, 1, NULL, '2019-02-27 16:25:15', '2019-02-27 16:25:16'),
(14, 'Donec', 'donec-2702191825', '<p>Donec non nibh aliquam, facilisis erat nec, hendrerit lectus. Nunc ut mi nec elit interdum venenatis sit amet a ligula. Phasellus eget luctus tellus. Cras sed ipsum interdum, consectetur sapien ut, ullamcorper orci. Ut sollicitudin neque facilisis urna rutrum sagittis. Maecenas condimentum elit vel augue tempor sodales. Proin mollis, diam blandit dignissim efficitur, nunc mi pellentesque ex, in tristique sapien massa ac urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi fringilla odio nibh, in rhoncus urna dictum et. Pellentesque convallis urna at libero facilisis, ac tincidunt ex eleifend. Aliquam vel dolor pellentesque, pharetra mi ut, tristique mi. Nullam urna diam, feugiat non quam ut, vehicula consequat diam. Donec sed dolor aliquet, hendrerit urna at, tempus orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus venenatis, leo a blandit vulputate, massa nibh sodales lectus, sed pellentesque arcu ipsum at magna.</p>', '<p>Nullam eget mi leo. Morbi at rutrum orci, in venenatis lacus. Aliquam quis vestibulum neque. Mauris nec consectetur eros. Aliquam congue, odio tempus pulvinar iaculis, lacus turpis laoreet massa, ut sodales ligula ex et nunc. Duis tempus pellentesque metus porta mollis. Phasellus non pretium nisl. Duis faucibus, sem vel congue porta, neque nisi pretium sapien, in tempor sapien sapien ut nunc. Maecenas suscipit volutpat tempor.</p>\r\n\r\n<p>Donec non nibh aliquam, facilisis erat nec, hendrerit lectus. Nunc ut mi nec elit interdum venenatis sit amet a ligula. Phasellus eget luctus tellus. Cras sed ipsum interdum, consectetur sapien ut, ullamcorper orci. Ut sollicitudin neque facilisis urna rutrum sagittis. Maecenas condimentum elit vel augue tempor sodales. Proin mollis, diam blandit dignissim efficitur, nunc mi pellentesque ex, in tristique sapien massa ac urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi fringilla odio nibh, in rhoncus urna dictum et. Pellentesque convallis urna at libero facilisis, ac tincidunt ex eleifend. Aliquam vel dolor pellentesque, pharetra mi ut, tristique mi. Nullam urna diam, feugiat non quam ut, vehicula consequat diam. Donec sed dolor aliquet, hendrerit urna at, tempus orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus venenatis, leo a blandit vulputate, massa nibh sodales lectus, sed pellentesque arcu ipsum at magna.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla a interdum felis, at convallis quam. Nunc ut dictum odio. Quisque nec ipsum ut dui ultricies viverra. Fusce lobortis interdum risus eget sagittis. Aliquam id tellus a ante iaculis suscipit ac vel eros. Nam at orci condimentum, pharetra purus eget, dapibus diam. Aenean fringilla leo eget purus accumsan pulvinar. Donec vulputate sed arcu ut elementum. Nam dictum lacus quis nulla imperdiet tempus. Vivamus maximus et sem in ultrices. Praesent quis viverra enim. Ut eget ex at ipsum venenatis rutrum. Sed ut ipsum dui. Morbi volutpat quis purus sit amet vestibulum.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget justo mollis dui euismod accumsan. Interdum et malesuada fames ac ante ipsum primis in faucibus. In suscipit eu ipsum in vestibulum. Nulla elementum laoreet erat, sit amet aliquam dui viverra vitae. Mauris nec orci eget lacus lacinia pretium. Aenean tincidunt ante eu dui iaculis cursus. Nullam eget mi ac augue pretium facilisis. Proin sollicitudin, leo a laoreet ultrices, mauris quam consectetur libero, eu condimentum dolor lorem nec purus. Proin est eros, molestie vel sapien in, rutrum rhoncus enim. Proin cursus consequat ex, sit amet finibus nibh malesuada nec. Etiam cursus ac felis a tristique. Vivamus sit amet consequat est. Pellentesque aliquet augue nibh, id elementum purus blandit quis.</p>\r\n\r\n<p>Duis tincidunt facilisis enim vitae consequat. Nulla vel magna ac turpis consequat auctor in hendrerit tellus. Nulla suscipit ornare mi non cursus. Vestibulum eleifend luctus feugiat. Cras ac elit quis sapien euismod convallis at nec nulla. Nullam tincidunt vel felis nec pretium. Donec nec ligula in massa aliquet semper. Nulla blandit mauris ipsum, quis egestas sem viverra nec. Integer quis neque a diam accumsan blandit id id orci. Donec non tellus ornare, consequat sapien non, feugiat augue. Integer efficitur lorem ac tempus lobortis. Maecenas dolor est, condimentum sit amet orci a, lacinia sodales turpis. Suspendisse a quam tempus, laoreet tortor ac, interdum magna.</p>', '1551291949.jpg', 1, 'Donec', 'Donec', 'Donec', 1, NULL, 1, NULL, '2019-02-27 16:25:49', '2019-02-27 16:25:52');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Dummy 1', 'dummy-1-2702191811', 0, 1, NULL, NULL, '2019-02-27 16:11:15', '2019-02-27 16:11:15'),
(2, 'Dummy 2', 'dummy-2-2702191811', 0, 1, NULL, NULL, '2019-02-27 16:11:25', '2019-02-27 16:11:25'),
(3, 'Dummy 2.1', 'dummy-21-2702191811', 2, 1, NULL, NULL, '2019-02-27 16:11:33', '2019-02-27 16:11:33'),
(4, 'Dummy 2.2', 'dummy-22-2702191811', 2, 1, NULL, NULL, '2019-02-27 16:11:43', '2019-02-27 16:11:43');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `categoryable_id` int(11) UNSIGNED NOT NULL,
  `categoryable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`category_id`, `categoryable_id`, `categoryable_type`) VALUES
(1, 8, 'App\\Article'),
(1, 11, 'App\\Article'),
(1, 12, 'App\\Article'),
(1, 13, 'App\\Article'),
(1, 14, 'App\\Article'),
(3, 9, 'App\\Article'),
(4, 10, 'App\\Article');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL,
  `approver_id` int(11) DEFAULT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_17_095102_create_password_reset_table', 1),
(4, '2019_02_17_104655_create_categories_table', 1),
(5, '2019_02_17_163308_create_articles_table', 1),
(6, '2019_02_18_070601_create_categoryable_table', 1),
(7, '2019_02_23_163752_create_comments_table', 1),
(8, '2019_02_27_150150_create_roles_table', 1),
(9, '2019_02_27_150309_create_role_user_table', 1),
(10, '2019_02_27_163652_add_ralations_to_users_table', 2),
(11, '2019_02_27_172622_add_foreign_to_comments_table', 3),
(12, '2019_02_27_174732_create_categoryable_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'guest', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dima', 'dima@dima.com', NULL, '$2y$10$.gZDLUu/OdVocH5WrwYQhOQw.ANQ9y/AKPiY13hkJua/lusS594X2', 'P0FXiez4oRNWu4qqABkgpy0MhGgOuJT1pPaw2FAUqkAF71Cg5f4JgHiivmu3', '2019-02-27 13:12:21', '2019-02-27 13:12:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `categoryables`
--
ALTER TABLE `categoryables`
  ADD PRIMARY KEY (`category_id`,`categoryable_id`),
  ADD KEY `art` (`categoryable_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
