-- phpMyAdmin SQL Dump
-- version 4.0.10.17
-- https://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017-02-04 12:53:10
-- 服务器版本: 5.5.40
-- PHP 版本: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tptblogsd`
--

-- --------------------------------------------------------

--
-- 表的结构 `tpt_article`
--

CREATE TABLE IF NOT EXISTS `tpt_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `open` tinyint(1) NOT NULL,
  `author` varchar(32) NOT NULL,
  `source` varchar(100) NOT NULL,
  `view` varchar(32) NOT NULL DEFAULT '1',
  `time` varchar(32) NOT NULL,
  `commend` tinyint(1) NOT NULL DEFAULT '0',
  `choice` tinyint(1) NOT NULL DEFAULT '0',
  `pic` varchar(100) NOT NULL,
  `keywords` varchar(32) NOT NULL,
  `description` varchar(88) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tpt_article`
--

INSERT INTO `tpt_article` (`id`, `tid`, `title`, `open`, `author`, `source`, `view`, `time`, `commend`, `choice`, `pic`, `keywords`, `description`, `content`) VALUES
(1, 5, '虚拟现实游戏玩太久会怎样？玩家亲述恍如隔世的 “现实丧失感”', 1, '老吕IO', 'http://www.leiphone.com/news/201611/KFkdBD5NVXtyNCYN.html', '66', '1480767503', 1, 1, '/2016-12-04/5843883f8505d.jpg', 'VR,沉浸感,VR体验,VR晕眩感,现实丧失感', '如果长达数小时沉浸在 VR 世界里，除了老生常谈的晕动症问题，本文作者 Tobias van Schneider 还体验到了一种名为“现实丧失感”的症状。如果长如果长达数小时沉', '&lt;p&gt;&lt;img alt=&quot;1.jpg&quot; src=&quot;/Uploads/2016-12-04/5843b16d9a021.jpg&quot; width=&quot;740&quot; height=&quot;462&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;看到这个题目，恐怕大多数人都会有些迷茫， VR 技术还没成熟呢，怎么就要考虑后 VR 时代会发生什么呢？过去几个月里，我一直在 VR 领域兜兜转转，除了做相关的开发，还尝试了现有 VR 技术下能提供的一切体验。VR 确实有自己的魔力，不过凭空描述不起任何作用，当你戴上头盔的那一刻，就会体会到我说说的感觉。&lt;br&gt;&lt;/p&gt;&lt;p&gt;如果你尝试过连续数小时深度体验 VR 世界，卸下头盔后会有种恍如隔世的感觉，而这种感觉可能会持续数小时。当然，这里我说的可不是老生常谈的晕动症问题。在卸下头盔走出虚拟世界后，我体会到了一种奇怪的感觉，那是一种淡淡的忧伤和沮丧。下面，我们来一起探讨这种奇妙的感觉。&lt;/p&gt;&lt;p&gt;&lt;b&gt;阶段1：身体症状&lt;/b&gt;&lt;/p&gt;&lt;p&gt;走出 VR 世界的前几分钟内，你都会感觉怪怪的，那是一种超脱现实之感。在接触身边物体时你会非常小心，生怕一不小心手就会从物体中穿过。你平时形影不离的智能手机也会变得非常滑稽，因为其交互界面看起来已经不太真实了。&lt;/p&gt;&lt;p&gt;对大多数人来说，这感觉好像宿醉未归。不过 1-2 小时后，这种奇妙的感觉会慢慢消退。要说造成这种现象的原因，恐怕瞳距设置才是罪魁祸首。举例来说，在 VR 世界深度畅游后，你的大脑已经适应了那种虚拟距离，而它与现实世界有所不同，一旦摘下头盔，必然需要一个重新适应的过程。&lt;/p&gt;&lt;p&gt;同时，VR 设备的刷新率和延迟也会影响你摘下头盔后的感觉。不过，这两项设定较易察觉，某些敏感的用户在游戏过程中可能就会受其影响而感觉不适。&lt;/p&gt;&lt;p&gt;玩完 VR 游戏后，最好还是不要开车或在高峰期过马路，因为在大脑重新适应现实世界的过程中，你可能会错估物体与身体之间的距离，而且你的视野中可能会蹦出现许多游戏中出现过的“鬼影”。&lt;/p&gt;&lt;p&gt;对大多数 VR 用户来说，上面描述的症状他们恐怕都曾体验过，这种症状会随着你使用 VR 头盔次数的增多而逐渐减轻。&lt;/p&gt;&lt;p&gt;&lt;b&gt;阶段2：现实丧失感&lt;/b&gt;&lt;/p&gt;&lt;p&gt;30-60 分钟后，我终于“回魂”了，身边的物体都再次正常了起来，眩晕感也消失的差不多了。&lt;/p&gt;&lt;p&gt;不过，虽然身体重回现实世界，但我的心中还留有一丝忧伤和失望的感觉，这种感觉甚至会持续一整天。你会感觉食之无味，就连蓝蓝的天也有些褪色了，真实世界果然没有虚拟世界“奇妙”。当然，这种感觉的强度与你玩的 VR 游戏类型有关。&lt;/p&gt;&lt;p&gt;这种感觉为何会出现呢？我是这么理解的：刚刚在虚拟世界中我就是王者，可以将各种工具玩弄于股掌之上。在这里我可以予取予夺，甚至像美猴王一样大闹天宫。但脱离了虚拟世界，我就又成了普通人，那些在虚拟世界中学会的超能力全都离我而去。我无法亲手触碰蓝天，颠倒白云，用我的画笔为它们上色，我只能呆坐在那里，盯着空空的白墙脑中一片空白。当然，我可没有抑郁，不过心里确实有一丝失落。&lt;/p&gt;&lt;p&gt;对我来说，第一人称射击游戏带来的心理落差最大，尤其是名为 Onward 的游戏。对于其他科幻元素的 FPS 游戏，我还能分清它与现实的差别，但像 Onward 这样真实的游戏，一旦沉浸其中真是很难跳脱出来，它让你体验到了无与伦比的孤独感。&lt;/p&gt;&lt;p&gt;以上两种游戏虽然画风完全不同，但它们却都给我带来了怪异的感觉。给蓝天白云填色的游戏让我感觉悲伤和失望，因为我的超能力被收走了。而 FPS 游戏则让我十分焦虑，因为游戏中的场景实在太过真实。&lt;/p&gt;&lt;p&gt;这些可不是我吹大气，作为一个超级游戏迷，每天连打 6 小时的 CS 我都没体验过这种感觉。&lt;/p&gt;&lt;p&gt;总结以上两个阶段，在阶段 1 中我只是神经有点脱线了，但在阶段 2 时我却真实的感受到了忧伤和失望。&lt;/p&gt;&lt;p&gt;在写这篇文章前我从来没考虑过这个问题，不过搜索互联网后我发现 VR 确实能引起形式温和的现实感丧失或人格解体。如果患有轻度焦虑的人也沉迷于 VR 游戏，恐怕后果不堪设想，而轻度焦虑在总人口仅有 3.19 亿的美国很普遍，患病人数超过 4000 万人。&lt;/p&gt;'),
(2, 6, '科大讯飞发布会，我看到的人工智能', 1, '雷锋网', 'http://www.leiphone.com/news/201611/Lkt4NuC9EvYLXA0D.html', '77', '1480767801', 1, 1, '/2016-12-04/5843874ce75cf.jpg', '科大讯飞,人工智能,AI,同传,翻译,唯物', '人们都很想知道：在讯飞眼中，跟进人工智能的正确姿势到底应该是什么样子。', '&lt;p&gt;11 月 25 日，讯飞还是没能打破一个“魔咒”——逢发布会股价必跌。讯飞员工向雷锋网打趣道，直播的时候有人发弹幕说，快别直播啦，去看看你们的股价吧。另一名讯飞的员工则问，“这到底是什么原理呢？”实际上没人说得清楚，再加上每次股价都会反弹，所以也没人细究。&lt;/p&gt;&lt;p&gt;今年的发布会地点还是在国家会议中心的一层大厅，理论上这里能坐 1500 人，但今年的报名人数超过了 3500，所以现场站着听课的人不在少数，会议开始后半小时还听见门口的安保厉声道：“只让出不让进，工作人员也不行。”&lt;/p&gt;&lt;p&gt;&lt;img alt=&quot;2.jpg&quot; src=&quot;/Uploads/2016-12-04/5843b1a29bab5.jpg&quot; width=&quot;740&quot; height=&quot;493&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;为时 4 个小时的发布会，讯飞连发了七款产品：多语种实时翻译技术、万物互联输入法、智能家居、智能车载、智慧教育、智能服务机器人，以及个性化语音合成技术。用科大讯飞董事长刘庆峰的话说：“都是绝对的黑科技。”&lt;/p&gt;&lt;p&gt;众所周知，在偌大的会场演示语音技术算得上一种“自杀行为”，在此栽过跟头的厂商不计其数，但在发布会当天，讯飞的每个演示都堪称完美，现场惊叹连连。甚至有那么一瞬间让人产生一种错觉，电影《Her》中的场景已经离现实不远。&lt;/p&gt;&lt;p&gt;多语种实时翻译技术是演示重点之一，无论是哪位演讲者登台，左右两边的大屏幕上总是实时显示他所说的每一句话（中文），准确率极高。另外，英语，日语，韩语，维吾尔族语的翻译也在实时进行。&lt;/p&gt;&lt;p&gt;“这不科学，”我向讯飞的员工表示质疑，“我用过你们的录音宝，机器识别的准确率基本上属于不能用的水平。”他说：“现在录音宝的识别率已经提高了不少，只不过的确还比不上现场的演示效果。”问题的关键是拾音，他补充道：“现场的演示实际上一套完整的‘讯飞听见’系统，你看不到的是，我们在台下放了 8 个麦克风。”&lt;/p&gt;&lt;p&gt;声学博士钱晨曾告诉雷锋网，如果想把硬件产品的拾音做好，至少需要两个麦克风以上。言外之意，麦克风的数量与拾音效果呈正相关关系。既然现场有 8 个麦克风作陪，那“惊叹指数”显然是要打折扣的。&lt;/p&gt;&lt;p&gt;&lt;img alt=&quot;3.jpg&quot; src=&quot;/Uploads/2016-12-04/5843b1a7b800b.jpg&quot; width=&quot;740&quot; height=&quot;419&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;另一款在现场掀起高潮的产品是被称为中英互译神器的“晓译翻译机”。演示的两人一人说中文，一人说英语，晓译翻译机几乎无延时地将对话内容互译，并用非常人性化的声音读了出来。&lt;/p&gt;&lt;p&gt;毫无疑问，这款产品的实用价值很高，如果复杂的对话也能达到演示的准确率——100%，晓译翻译机俨然就是一个贴身翻译。&lt;/p&gt;&lt;p&gt;看到这里，现场很多人心中基本上就剩下两个问题：这东西卖多少钱？什么时候上市？可惜这两个问题讯飞都没有给出答案，雷锋网(公众号：雷锋网)能得到内部消息也只是：“还没量产，不知道什么时候上市。”&lt;/p&gt;&lt;p&gt;讯飞员工毫不讳言公司并不太擅长做电子消费品，并多次向雷锋网强调：“硬件是个坑。”但基于晓译翻译机的产品形态，量产的难点显然不在硬件。元器件——麦克风、芯片等——都是现成的，又没有使用特殊的造型和材料，所以最让硬件厂商头疼的定制件对晓译翻译机似乎也不成问题。合理的推测是，其软件还需要进一步优化。&lt;/p&gt;&lt;p&gt;换句话说，讯飞想让真正的翻译官下岗，还为时尚早。同理适用于同声传译。&lt;/p&gt;&lt;p&gt;&lt;img alt=&quot;4.jpg&quot; src=&quot;/Uploads/2016-12-04/5843b1ac467bd.jpg&quot; width=&quot;740&quot; height=&quot;491&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;真正让人想起电影《Her》的倒不是以上“黑科技”，而是这次发布会上“最不正经”的一款产品——个性化语音合成。&lt;/p&gt;&lt;p&gt;最开始演示时，摄像头对准了台下的锤子科技 CEO 罗永浩，老罗腼腆的笑着，和全场观众一起听着由讯飞合成的“老罗的声音”。从效果来看，合成的老罗已快逼近以假乱真的地步，所以在现场的哄笑声中，雷锋网记者的朋友圈也被“罗永浩为您朗读”刷屏了。&lt;/p&gt;&lt;p&gt;讯飞工作人员告诉雷锋网，合成只需录入一个人的数个音节，完成之后便可随意点播，欢乐程度与被录入者的可识别度，录入的音节数成正比。&lt;/p&gt;&lt;p&gt;在很多人（甚至包括讯飞自己的员工）看来，这只是个调节气氛的功能，但实际上，讯飞绝不会为了闹着玩研发一款新产品。&lt;/p&gt;&lt;p&gt;还记得在电影《Her》里，男主角西奥多第一次被人工智能震惊的场景么？斯嘉丽扮演的女主角萨曼莎一发声，西奥多便感觉很怪异，他说：“你看上去就像真人，但其实只是电脑发出的声音，太奇怪了。”萨曼莎安慰他：“我能理解你作为一个正常人，在洞察力方面的局限性，你会习惯的。”&lt;/p&gt;&lt;p&gt;编剧的这一设定非常讲究，参考的是恐怖谷效应。斯嘉丽的表演也很出彩，并凭此片成为了罗马电影节史上首位没有一个镜头的最佳女主角。英特尔数据中心事业部副总裁、计算机架构专家、神经系统科学家 Naveen Rao 曾告诉雷锋网记者，《Her》是他个人最欣赏的人工智能电影。但如果没有“看上去就像真人”这一点，欣赏程度显然要大打折扣。&lt;/p&gt;'),
(3, 0, '网友投稿', 0, '网友投稿', '', '1', '1486179532', 0, 0, '', '', '网友投稿', '&lt;p&gt;网友投稿&lt;/p&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `tpt_banner`
--

CREATE TABLE IF NOT EXISTS `tpt_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apic` varchar(100) NOT NULL,
  `atitle` varchar(32) NOT NULL,
  `alink` varchar(100) NOT NULL,
  `bpic` varchar(100) NOT NULL,
  `btitle` varchar(32) NOT NULL,
  `blink` varchar(100) NOT NULL,
  `cpic` varchar(100) NOT NULL,
  `ctitle` varchar(32) NOT NULL,
  `clink` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tpt_banner`
--

INSERT INTO `tpt_banner` (`id`, `apic`, `atitle`, `alink`, `bpic`, `btitle`, `blink`, `cpic`, `ctitle`, `clink`) VALUES
(1, '/2016-12-04/584640b0d119c.jpg', '科大讯飞发布会，我看到的人工智能 科大讯飞发布会，我看到的人工智', '../article/2.html', '/2016-12-04/58464121c246c.jpg', '科大讯飞发布会，我看到的人工智能', '../article/2.html', '/2016-12-04/5846415eb5d46.jpg', '虚拟现实游戏玩太久会怎样？', '../article/1.html');

-- --------------------------------------------------------

--
-- 表的结构 `tpt_category`
--

CREATE TABLE IF NOT EXISTS `tpt_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `pic` varchar(100) NOT NULL,
  `time` varchar(32) NOT NULL,
  `keywords` varchar(32) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tpt_category`
--

INSERT INTO `tpt_category` (`id`, `tid`, `name`, `type`, `pic`, `time`, `keywords`, `description`) VALUES
(1, 0, '新闻资讯', 1, '', '1480767491', '新闻资讯', '新闻资讯'),
(2, 1, '国内新闻', 1, '', '1480768157', '国内新闻', '国内新闻'),
(3, 1, '国际新闻', 1, '', '1480768201', '国际新闻', '国际新闻'),
(4, 0, '科技头条', 1, '', '1480768564', '科技头条', '科技头条'),
(5, 4, '虚拟现实', 1, '', '1480768585', '虚拟现实', '虚拟现实'),
(6, 4, '人工智能', 1, '', '1480768609', '人工智能', '人工智能');

-- --------------------------------------------------------

--
-- 表的结构 `tpt_conf`
--

CREATE TABLE IF NOT EXISTS `tpt_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(32) NOT NULL,
  `open` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `qqs` varchar(32) NOT NULL,
  `yuming` varchar(32) NOT NULL,
  `beian` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `yid` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tpt_conf`
--

INSERT INTO `tpt_conf` (`id`, `author`, `open`, `logo`, `qqs`, `yuming`, `beian`, `title`, `keywords`, `description`, `yid`) VALUES
(1, 'Templet360', 1, '/2016-12-04/586b5a416b776.png', '1524790154', 'www.templet360.com', '蜀ICP备10000000号', 'Templet360 - 专注模板开发与技术服务平台!', 'Templet360 - 专注模板开发与技术服务平台!', 'Templet360 - 专注模板开发与技术服务平台!', '');

-- --------------------------------------------------------

--
-- 表的结构 `tpt_links`
--

CREATE TABLE IF NOT EXISTS `tpt_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `link` varchar(100) NOT NULL,
  `time` varchar(32) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tpt_links`
--

INSERT INTO `tpt_links` (`id`, `name`, `link`, `time`, `pic`) VALUES
(1, '百度一下', 'https://www.baidu.com/', '1480767669', '/2016-12-04/584388b25b051.png'),
(2, '360搜索', 'https://www.so.com/', '1480767682', '/2016-12-04/5843891d1e739.png');

-- --------------------------------------------------------

--
-- 表的结构 `tpt_member`
--

CREATE TABLE IF NOT EXISTS `tpt_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `kouling` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tpt_member`
--

INSERT INTO `tpt_member` (`id`, `username`, `password`, `kouling`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `tpt_navtop`
--

CREATE TABLE IF NOT EXISTS `tpt_navtop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `time` varchar(32) NOT NULL,
  `blank` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tpt_navtop`
--

INSERT INTO `tpt_navtop` (`id`, `tid`, `link`, `show`, `sort`, `name`, `time`, `blank`) VALUES
(2, 0, '../index.html', 1, 1, '网站首页', '1480822884', 0),
(3, 6, '../index/5.html', 1, 2, '虚拟现实', '1480822942', 0),
(4, 6, '../index/6.html', 1, 3, '人工智能', '1480823178', 0),
(5, 0, 'https://www.templet360.com/', 1, 4, '官方网站', '1480823455', 1),
(6, 0, '', 1, 3, '科技头条', '1486171934', 0),
(7, 0, '', 1, 2, '新闻资讯', '1486171999', 0),
(8, 7, '../index/2.html', 1, 1, '国内新闻', '1486172025', 0),
(9, 7, '../index/3.html', 1, 2, '国际新闻', '1486172045', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
