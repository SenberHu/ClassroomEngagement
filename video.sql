-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 06 月 06 日 12:28
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `video`
--

-- --------------------------------------------------------

--
-- 表的结构 `collectvideo`
--

CREATE TABLE IF NOT EXISTS `collectvideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `collectvideo`
--

INSERT INTO `collectvideo` (`id`, `authorId`, `videoId`) VALUES
(3, 1, 8),
(4, 1, 10),
(5, 1, 25),
(6, 1, 9);

-- --------------------------------------------------------

--
-- 表的结构 `lovevideo`
--

CREATE TABLE IF NOT EXISTS `lovevideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `lovevideo`
--

INSERT INTO `lovevideo` (`id`, `authorId`, `videoId`) VALUES
(3, 1, 8),
(5, 1, 25);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `aTime` varchar(128) NOT NULL,
  `videoId` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `authorId`, `aTime`, `videoId`, `content`) VALUES
(3, 1, '1526311394674', 1, '这是我的评论这是我的评论这是我的评论这是我的评论这是我的评论'),
(5, 1, '1526313456410', 1, '该睡觉了该睡觉了该睡觉了该睡觉了该睡觉了'),
(8, 1, '1526313597286', 1, '睡觉'),
(9, 0, '1526313692688', 1, '哈哈哈哈'),
(10, 1, '1526313704703', 1, 'hahhhhhhhh'),
(11, 0, '1526313894954', 1, '1'),
(12, 1, '1526313912576', 1, '我要睡觉了'),
(13, 1, '1527322339346', 8, 'hhhhh');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(512) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'demon', 'hellosqs'),
(2, 'sqs', '123'),
(3, 'sqs', '123'),
(4, 'q', '1');

-- --------------------------------------------------------

--
-- 表的结构 `videolist`
--

CREATE TABLE IF NOT EXISTS `videolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL,
  `aTime` varchar(128) NOT NULL,
  `imgSrc` varchar(512) NOT NULL,
  `videoSrc` varchar(512) NOT NULL,
  `content` text NOT NULL,
  `videoType` int(11) NOT NULL DEFAULT '1',
  `readCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `videolist`
--

INSERT INTO `videolist` (`id`, `title`, `aTime`, `imgSrc`, `videoSrc`, `content`, `videoType`, `readCount`) VALUES
(9, '暴走大事件', '1527982045845', '31.jpg', '31.mp4', '集新闻，综艺，文学，心理，技术，历史，地理，政治，化学，生物于一体的全方位脱口秀节目', 3, 11),
(10, '拜托了衣橱', '1527982045845', '32.jpg', '31.mp4', '腾讯视频自制的明星生活类脱口秀，一起探寻明星衣橱中的秘密和惊喜', 3, 13),
(11, '花儿与少年', '1527982045845', '33.jpg', '31.mp4', '湖南卫视推出的大型明星自助远行真人秀节目', 3, 7),
(12, '快乐大本营', '1527982045845', '34.jpg', '31.mp4', '嘉宾访谈游戏秀节目，由何炅、谢娜、李维嘉、吴昕、杜海涛五人担任主持', 3, 7),
(13, '跑男', '1527982045845', '35.jpg', '31.mp4', '浙江卫视引进韩国SBS电视台综艺节目《Running Man》推出的大型户外竞技真人秀节目', 3, 8),
(14, '我是歌手', '1527982045845', '36.jpg', '31.mp4', '中国湖南卫视从韩国MBC引进推出的歌唱真人秀节目，由洪涛团队打造', 3, 7),
(15, '向往的生活', '1527982045845', '37.jpg', '31.mp4', '蘑菇屋“H4”组合黄磊、何炅、刘宪华和小H全员回归，新成员彭昱畅暖心加盟，在美丽江南开始新生活', 3, 8),
(16, '最强大脑', '1527982045845', '38.jpg', '31.mp4', '从科学角度，探秘天才的世界，决出世界最强大脑', 3, 7),
(17, '白鹿原', '1527982045845', '11.jpg', '11.mp4', '以陕西关中平原上有“仁义村”之称的白鹿村为背景，讲述了白姓和鹿姓两大家族祖孙三代之间恩怨纷争的故事', 1, 7),
(18, '余罪', '1527982045845', '12.jpg', '11.mp4', '改编自常书欣的同名小说，讲述警校学生余罪因特殊选拔而进入生活与社会矛盾中，之后成为卧底遇到惊险事件的故事', 1, 11),
(19, '春风十里不如你', '1527982045845', '13.jpg', '11.mp4', '改编自冯唐的小说《北京北京》，讲述了秋水在本硕连读八年的大学生涯中，结识了爱人小红与一群好兄弟', 1, 8),
(20, '家有儿女', '1527982045845', '14.jpg', '11.mp4', '关于少儿题材的情景轻喜剧，讲述了两个离异家庭结合后发生在父母和三个孩子间的各种有趣故事', 1, 9),
(21, '琅琊榜', '1527982045845', '15.jpg', '11.mp4', '据海宴同名网络小说改编，以平反冤案、扶持明君、振兴山河为主线，讲述了“麒麟才子”梅长苏才冠绝伦、以病弱之躯拨开重重迷雾', 1, 12),
(22, '芈月传', '1527982045845', '16.jpg', '11.mp4', '讲述了中国历史上第一个被称为“太后”的女人、战国时期秦国女政治家芈月，波澜起伏的人生故事', 1, 8),
(23, '情深深雨蒙蒙', '1527982045845', '17.jpg', '11.mp4', '继《还珠格格》先后原班人马打造的新一部爱恨情仇的电视连续剧，由中国海峡两岸合拍，改编自琼瑶的原著小说《烟雨濛濛》', 1, 7),
(24, '智博奸佞', '1527982045845', '18.jpg', '11.mp4', '为昭雪多年冤案、扶持新君所进行的一系列斗争', 1, 8),
(25, '甄嬛传', '1527982045845', '19.jpg', '11.mp4', '改编自流潋紫所著的同名小说，主要讲述了少女甄嬛从一个不谙世事的单纯少女成长为一个善于谋权的一代太后的故事', 1, 41),
(26, '当幸福来敲门', '1527982045845', '21.jpg', '21.mp4', '讲述了一位濒临破产、最后成为知名的金融投资家的励志故事。影片获得2007年奥斯卡金像奖最佳男主角的提名', 2, 0),
(27, '钢铁侠', '1527982045845', '22.jpg', '21.mp4', '美国漫威电影工作室出品的一部科幻冒险电影，改编自同名系列漫画', 2, 0),
(28, '红海行动', '1527982045845', '23.jpg', '21.mp4', '中国海军“蛟龙突击队”8人小组奉命执行撤侨任务，突击队兵分两路进行救援', 2, 0),
(29, '绿巨人', '1527982045845', '24.jpg', '21.mp4', '美国漫威漫画旗下超级英雄，初次登场于《不可思议的浩克》', 2, 0),
(30, '美国队长', '1527982045845', '25.jpg', '21.mp4', '美国漫威漫画旗下超级英雄，初次登场于《美国队长》', 2, 0),
(31, '肖申克的救赎', '1527982045845', '26.jpg', '21.mp4', '透过监狱这一强制剥夺自由、高度强调纪律的特殊背景来展现作为个体的人对“时间流逝、环境改造”的恐惧', 2, 0),
(32, '拯救大兵肖恩', '1527982045845', '27.jpg', '21.mp4', '梦工厂1998年出品的一部战争电影，由史蒂文·斯皮尔伯格执导', 2, 0),
(33, '风雨哈佛路', '1527982045845', '28.jpg', '21.mp4', '一位生长在纽约的女孩莉斯（Liz）经历人生的艰辛和辛酸，凭借自己的努力，最终走进了最高学府的经历', 2, 16),
(34, '93号航班', '1527982045845', '41.jpg', '41.mp4', '世贸双子大厦和五角大楼被撞的同一天，另一架被恐怖分子劫持的“93号航班”坠毁在宾夕法尼亚州的事件始末', 4, 0),
(35, '穿行新西兰', '1527982045845', '42.jpg', '41.mp4', '讲述一群热爱冒险者，经过重重困难险阻穿越新西兰', 4, 0),
(36, '毁灭瞬间', '1527982045845', '43.jpg', '41.mp4', '实录世界各地惊恐毁灭瞬间。没有一丝警告，生命便悬于一线，人类的努力化为混乱', 4, 0),
(37, '可可西里', '1527982045845', '44.jpg', '41.mp4', '关于国家级自然保护区位于青海省玉树藏族自治州西部的纪录片', 4, 0),
(38, '拉丁男孩的天空', '1527982045845', '45.jpg', '41.mp4', '虽然也许还会是失望，就在这失望与希望之间，走过了所谓的一生', 4, 0),
(39, '末日的地球：大地震', '1527982045845', '46.jpg', '41.mp4', '讲述地震是地球内部介质局部发生急剧的破裂，产生的震波，从而在一定范围内引起地面振动的现象', 4, 0),
(40, '苏芬战争', '1527982045845', '47.jpg', '41.mp4', '苏联与芬兰于第二次世界大战期间爆发的战争，后双方签订《莫斯科和平协定》结束', 4, 0),
(41, '塑料王国', '1527982045845', '48.jpg', '41.mp4', '电视剧情节感人，能吸引学习者的兴趣，电视影集代表了国际最高制作水平', 4, 0),
(42, '稻香--周杰伦', '1527982045845', '51.jpg', '51.mkv', '周杰伦演唱并作词、作曲的一首歌曲，收录在周杰伦2008年发行的专辑《魔杰座》中', 5, 2),
(43, 'Love story', '1527982045845', '52.jpg', '51.mkv', '美国乡村流行乐女歌手泰勒·斯威夫特演唱的一首乡村歌曲', 5, 0),
(44, '卡西莫多的礼物', '1527982045845', '53.jpg', '51.mkv', '华晨宇出道后的首张专辑，郑楠担任制作人', 5, 0),
(45, '小情歌', '1527982045845', '54.jpg', '51.mkv', '2007年6月16日，吴青峰凭借该曲获得第十八届金曲奖最佳作曲人奖', 5, 0),
(46, '隐形的翅膀', '1527982045845', '55.jpg', '51.mkv', '获得第四届音乐之声中国TOP排行榜点播冠军', 5, 0),
(47, '再见以前', '1527982045845', '56.jpg', '51.mkv', '演员成毅首发单曲，柔情而又干净的嗓音，唱入心扉', 5, 0),
(48, '我管你', '1527982045845', '57.jpg', '51.mkv', '华晨宇凭借该曲入围第九届城市至尊音乐榜年度听众最爱男歌手奖', 5, 1),
(49, '六弄咖啡馆', '1527982045845', '58.jpg', '51.mkv', '讲述男主角小绿和女主角心蕊之间一场真挚却无奈的青春爱情故事', 5, 2),
(50, '辛普森一家', '1527982045845', '61.jpg', '61.mp4', '美国福克斯广播公司出品的一部动画情景喜剧，由马特·格勒宁创作', 6, 0),
(51, '小猪佩奇', '1527982045845', '62.jpg', '61.mp4', '围绕小猪佩奇与家人的愉快经历，幽默而有趣，藉此宣扬传统家庭观念与友情，鼓励小朋友们体验生活', 6, 0),
(52, '美少女战士', '1527982045845', '63.jpg', '61.mp4', '主人公月野兔在某一天意外救下一只头上有月牙印的黑猫露娜，并从此改变她个人的命运', 6, 0),
(53, '名侦探柯南', '1527982045845', '64.jpg', '61.mp4', '改编自青山刚昌创作的、连载于《周刊少年Sunday》', 6, 0),
(54, '熊出没', '1527982045845', '65.jpg', '61.mp4', '森林保护者熊兄弟与破坏森林、采伐原木、占领土地开发创业实验田的光头强之间上演的一幕幕搞笑对决的故事', 6, 0),
(55, '犬夜叉', '1527982045845', '66.jpg', '61.mp4', '犬夜叉为寻找散落于各处的四魂之玉碎片而展开的冒险之旅', 6, 0),
(56, '魔法咪路咪路', '1527982045845', '67.jpg', '61.mp4', '人类与精灵的故事，精灵从马克杯中被召唤出来，每个精灵只可以住在一个人类的家里', 6, 0),
(57, '全职高手', '1527982045845', '68.jpg', '61.mp4', '网游荣耀中被誉为教科书级别的顶尖高手叶修，因为种种原因遭到俱乐部的驱逐', 6, 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
