-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-03-03 11:59:28
-- 服务器版本： 5.5.53
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springboot_first`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `alias` varchar(128) DEFAULT NULL COMMENT '别名',
  `remark` varchar(256) NOT NULL COMMENT '备注',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `update_at` varchar(19) NOT NULL COMMENT '更新日期',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类';

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `pid`, `sort`, `name`, `alias`, `remark`, `created_at`, `update_at`, `status`) VALUES
(1, 0, 0, '默认类别', 'default', '默认类别，不可删除', '2019-03-03 12:09:18', '2019-03-03 12:09:18', 1),
(2, 0, 1, 'CDC 转载', 'cdc-reprint', '转载自 CDC 大厂', '2019-03-03 14:31:16', '2019-03-03 14:31:16', 1);

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `contents` varchar(512) DEFAULT NULL COMMENT '评论内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `rid` int(11) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `email` varchar(256) DEFAULT NULL COMMENT '邮箱'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论';

-- --------------------------------------------------------

--
-- 表的结构 `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `overview` varchar(256) NOT NULL COMMENT '概览',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '作者ID',
  `cover` varchar(256) NOT NULL COMMENT '封面图',
  `contents` text NOT NULL COMMENT '正文内容',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `update_ad` varchar(19) NOT NULL COMMENT '更新日期',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `password` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容';

--
-- 转存表中的数据 `contents`
--

INSERT INTO `contents` (`id`, `cid`, `title`, `overview`, `aid`, `cover`, `contents`, `created_at`, `update_ad`, `status`, `password`) VALUES
(1, 1, '西游最被夸大的高手是谁？', '对于镇元子实力的认定，是一个颇有难度的事情。各方势力对镇元子的评价大不相同。我们通过对比，看看真相如何。', 1, 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3264620384,1913695599&fm=173&s=9FB67C801053AFD443F53907030070C0&w=542&h=364&img.JPG', '<div class=\"img-container\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3264620384,1913695599&amp;fm=173&amp;s=9FB67C801053AFD443F53907030070C0&amp;w=542&amp;h=364&amp;img.JPG\" data-loaded=\"0\"></div><p>对于镇元子实力的认定，是一个颇有难度的事情。各方势力对镇元子的评价大不相同。我们通过对比，看看真相如何。</p><p>1、镇元子自己对自己的评价是这样的——</p><p>唐僧师徒来到五庄观门前，看到上面有一副对联，上书：长生不老神仙府，与天同寿道人家。</p><p>镇元子的弟子对老师的评价是这样的——</p><p>走入五庄观，唐僧师徒看到五庄观大殿中牌位上仅仅写着“天地”二字，而没有供奉任何神祇，都觉得很奇怪。镇元子的弟子清风明月解释说：</p><p>“不瞒老师说，这两个字，上头的，礼上还当；下边的，还受不得我们的香火。是家师父谄佞出来的。”唐僧询问，为何说是谄佞。清风明月说：“三清是家师的朋友，四帝是家师的故人，九曜是家师的晚辈，元辰是家师的下宾。”</p><p>从镇元子以及其弟子对自身的评价看，镇元子在三界的地位极高，那至少是和三清、四帝同级别的仙人。九曜星以下，比如什么太白金星、太阴星君、奎木狼等等，那都不入镇元子法眼。</p><div class=\"img-container\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2525233898,1158708992&amp;fm=173&amp;s=3DB7DEB20440755D1405CD300300701B&amp;w=640&amp;h=422&amp;img.PNG\" data-loaded=\"0\"></div><p>很多朋友在说起镇元子在仙界的地位时，经常喜欢引用清风明月那段话。但是，我们不要忘记了，清风明月是镇元子的弟子，为师父吹牛，也就是给自己脸上贴金。</p><p>2、作为混迹仙界高层数百年的孙悟空对镇元子的自评，以及清风明月的内部评价都很不屑一顾。</p><p>看了对联，孙悟空大笑说：“这道士说大话唬人。我老孙五百年前大闹天宫时，在那太上老君门首，也不曾见有此！”</p><p>在《西游记》中，老君乃先天地而生的三界第一仙。孙悟空的意思，老君何等牛逼，也不曾说自己是什么长生不老，与天同寿。一个人越是强大，越是懂得谦虚。这种谦虚并非强装出来的。而是一个人能力越强，了解越多，越是会发现天地大道渺远，越是会明白自身在宇宙中的渺小。</p><p>正因如此，孙悟空一语道破镇元大仙的本相——一个爱说大话唬人的道士。</p>', '2019-03-02 18:37:15', '2019-03-02 18:37:15', 1, ''),
(2, 1, '解决 Magic Keyboard 大写切换需要长按的问题', '笔者是一个码农，在日常的工作中需要频繁的切换大小写输入模式，最近把尘封了 1 年之久的 iMac 重新摆起，打算作为主力机器使用。结果发现，大写键需要长按才可以切换到大写模式。经过摸索发现是系统输入法的一个设置项。\r\n', 1, 'https://upload-images.jianshu.io/upload_images/795923-08097187cdf438f7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp', '<p>笔者是一个码农，在日常的工作中需要频繁的切换大小写输入模式，最近把尘封了 1 年之久的 iMac 重新摆起，打算作为主力机器使用。结果发现，大写键需要长按才可以切换到大写模式。经过摸索发现是系统输入法的一个设置项。</p>\r\n<p>解决办法如上图，【系统偏好设置】-【键盘】-【输入法】，取消勾选【使用大写锁定键切换“美国”输入模式】，然后就可以像以前那样切换大小写模式了。</p>', '2019-03-03 14:18:17', '2019-03-03 14:18:17', 1, ''),
(3, 1, 'Smartisan TNT 大屏幕操作系统众测用户招募（坚果 R1 & Pro 2S)', '为了配合 Smartisan TNT 大屏幕操作系统升级需要，现招募一批众测用户。', 1, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552208695&di=a53ec429f6da26254ebb1d470248e480&imgtype=jpg&er=1&src=http%3A%2F%2Fupload.news.cecb2b.com%2F2013%2F0617%2F1371428996869.jpg', '<font face=\"Helvetica, Arial, &amp;quot;\"><font color=\"#000000\"><br>\r\n</font><div align=\"left\"><font size=\"3\"><font color=\"#000000\">坚果 R1 &amp; 坚果 Pro 2S 用户您好： </font></font></div><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font><div align=\"left\"><font size=\"3\"><font color=\"#000000\">为了配合 Smartisan TNT 大屏幕操作系统升级需要，现招募一批众测用户。</font></font></div><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font><div align=\"left\"><font size=\"3\"><font color=\"#000000\"><strong>招募条件：</strong>使用坚果 R1 和 坚果 Pro 2S 的锤子科技官方论坛用户</font></font></div><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font><div align=\"left\"><font size=\"3\"><font color=\"#000000\"><strong>推送时间：</strong>2018 年 11 月</font></font></div><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font><div align=\"left\"><font size=\"3\"><font color=\"#000000\"><strong>参与方法：</strong>点击进入</font></font><a href=\"https://www.smartisan.com/special/#/tnt-recruiting\" target=\"_blank\"><font size=\"3\">申请界面</font></a><font size=\"3\"><font color=\"#000000\">，将您的资料按要求填写并提交（请确保资料填写无误） </font></font></div><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font><div align=\"left\"><font size=\"3\"><font color=\"#000000\"><strong>IMEI 号查看方法：</strong>在拨号界面输入 *#06# ，查看并使用<i>第一行 15 位的 IMEI 号</i></font></font></div><div align=\"left\"><font size=\"3\"><font color=\"#000000\">*如第一行显示 14 位，请先取下 SIM 卡，重启手机后查看</font></font></div><font color=\"#000000\"><br>\r\n</font><div align=\"left\"><div align=\"left\"><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\"><strong>注意事项：</strong></font></font></font></div><div align=\"left\"><ul><li><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\">验证 IMEI 号时，会验证您提供的 IMEI 号和欢喜云是否匹配，</font><font color=\"#ff0000\">请确认您的手机里登录了欢喜云服务</font><font color=\"#000000\">；</font></font></font></li><li><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\">如果您通过本次众测招募申请，请您在 OTA 升级之前备份好重要数据；</font></font></font></li><li><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\">在众测期间，如果发现众测用户泄露众测内容（包括但不限于众测包、众测更新日志、bug），我们会永久取消泄露者的众测资格；</font></font></font></li><li><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\">参加众测的用户有义务将使用众测版本遇到的 bug 反馈到论坛相应的众测版块；</font></font></font></li><li><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\">后续推送新的众测版本时，我们会检测所有众测用户的系统版本，如果不是众测版本，我们会取消众测资格；</font></font></font></li><li><font color=\"#000000\"><font size=\"3\"><font face=\"Helvetica\">参加众测的用户需要承担因众测版本不稳定而出现的所有后果。</font></font></font><br>\r\n</li></ul></div><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font></font><div align=\"left\"><font color=\"#000000\"><font face=\"Helvetica\"><font size=\"3\"><strong>关于 TNT 大屏幕操作系统：</strong></font></font><font face=\"Helvetica\"><font size=\"3\">见二楼</font></font></font></div><font face=\"Helvetica\"><font size=\"3\"><font color=\"#000000\"><br>\r\n</font></font></font><div align=\"left\"><font color=\"#000000\"><font face=\"Helvetica\"><font size=\"3\"><strong>常见问题：</strong></font></font><font face=\"Helvetica\"><font size=\"3\">见三楼</font></font></font></div></div></font>', '2019-03-03 12:09:18', '2019-03-03 12:09:18', 1, ''),
(4, 2, '微保 [车险] 项目设计小结', '公司一直希望在互联网金融领域有更广的拓展。在旗下的微保已经拿到了保险代销牌照的背景下，通过互联网技术和大数据挖掘，可以与保险公司开展更深度的合作，给用户提供优选的保险产品。车险在我国财产保险保费中比重最大，但目前中国的车险同质化比较严重，无法区分不同用户的用车风险；获客渠道也比较单一，大部分情况都是通过电话销售，传统保险多层代理体系层级较多，车险的销售成本比较高。车险在传统的环境中，除了理赔提供的服务不够丰富，用户对车险的粘性也不够高。所以我们也希望通过互联网+改变传统车险的现状。', 1, 'https://cdc.tencent.com/wp-content/uploads/2018/12/8.png', '<h1>一、项目背景</h1>\r\n<p>公司一直希望在互联网金融领域有更广的拓展。在旗下的微保已经拿到了保险代销牌照的背景下，通过互联网技术和大数据挖掘，可以与保险公司开展更深度的合作，给用户提供优选的保险产品。车险在我国财产保险保费中比重最大，但目前中国的车险同质化比较严重，无法区分不同用户的用车风险；获客渠道也比较单一，大部分情况都是通过电话销售，传统保险多层代理体系层级较多，车险的销售成本比较高。车险在传统的环境中，除了理赔提供的服务不够丰富，用户对车险的粘性也不够高。所以我们也希望通过互联网+改变传统车险的现状。</p>\r\n<h3><strong>通力合作，携手共进</strong></h3>\r\n<p>为了更好的理解用户保险需求，微保联合腾讯用户研究与体验设计部(CDC)成立了互联网保险用户体验联合实验室。希望通过实验室进行合作，去研究用户对保险的态度，习惯和行为，为保险互联网化提供后续指导方向。</p>\r\n<h3><strong>打破习惯，破旧立新</strong></h3>\r\n<p>车险作为一个周期性的险种，传统保险电话销售的占比非常大，线下车险已经比较成熟，一个电话就可以完成车险购买，非常简单。所以现状是大多数用户习惯于在线下购买车险。</p>\r\n<p>微保是一个刚刚成立的保险企业，未建立起完善的车险平台，现阶段还需要和保险公司合作，通过微信去代销保险公司已有的车险产品，这些产品本身差异度比较小。但是互联网的发展也给车险带来新的机遇，它有更透明的渠道，更低的渠道成本。面对用户固有习惯和同质化产品，如何打破用户固有习惯，发挥我们优势吸引用户线上购买车险，这是我们面临最艰难的挑战，也是对车险重新洗牌的一个过程。</p>\r\n<h1>二、设计思考</h1>\r\n<p>我们通过问卷调研，深度访谈，案头研究做了大量的定性和定量研究，采集了大量的用户需求。</p>\r\n<p><img class=\"alignnone size-full wp-image-10731\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/2.png\" alt=\"\" width=\"1382\" height=\"370\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/2.png 1382w, https://cdc.tencent.com/wp-content/uploads/2018/12/2-768x206.png 768w\" sizes=\"(max-width: 1382px) 100vw, 1382px\"></p>\r\n<p>有了这些用户需求后，我们根据不同阶段的目标，将产品周期分为<strong>“获客”-“转化”-“留存”</strong>三个阶段。围绕这三个阶段确定影响车主转化的潜在用户关键行为内容。例如，在获客阶段，保费的价格是影响用户最重要的动机，其次是理赔服务、礼品、品牌等。通过梳理用研报告，我们将影响用户行为的缺口进行了汇总。</p>\r\n<p style=\"text-align: left;\">我们了解到任何一个人的行为都是因为个人的特定人格和他所处情境共同作用的结果。因此我们所做的行为并不完全是自己主动选择的，而是在社会情境和个人因素的双重作用下产生的。心理学家福格教授提出影响行为发生的模型，他指出“如果需要用户改变行为习惯，要有三个要素”并且用一个等式来简化了模型：</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-10732\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/3.png\" alt=\"\" width=\"800\" height=\"352\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/3.png 800w, https://cdc.tencent.com/wp-content/uploads/2018/12/3-768x338.png 768w\" sizes=\"(max-width: 800px) 100vw, 800px\"></p>\r\n<p style=\"text-align: center;\">图一</p>\r\n<p>其中B是Behavior行为，M是Motivation 动机，A是Ability能力，T是Triggers触发器。纵轴是动机，如果个体缺乏动机就会落在纵轴上较低的位置。横轴是能力，如果个人从事某个行为的能力较差，则落在横轴的左侧。有了用户的行为缺口，我们将它们按照能力，动机，触发器去匹配我们车险的产品，可以得到我们在现阶段可以发力的点。</p>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-10727\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/4.jpg\" alt=\"\" width=\"844\" height=\"989\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/4.jpg 844w, https://cdc.tencent.com/wp-content/uploads/2018/12/4-768x900.jpg 768w\" sizes=\"(max-width: 844px) 100vw, 844px\"></p>\r\n<p style=\"text-align: center;\">图二</p>\r\n<p>产品从0到1不断完善是一个过程。当我们对目标群体诉求有了一定的了解，找到了提高车险行为转化的机会点后，挑选出适合现阶段的机会点，并将其转化成设计机会点，确立设计方向后就针对性的开展我们的设计了。</p>\r\n<h1>三、方案的演进</h1>\r\n<p><img class=\"alignnone wp-image-10733\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/5.png\" alt=\"\" width=\"174\" height=\"50\"></p>\r\n<h3>1、提供持续可被感知的动机</h3>\r\n<p><strong>在获客阶段——我们利用用户的动机，吸引潜在的用户。</strong></p>\r\n<p>引导页是用户进入车险产品的第一页面，我们希望用户能够快速录入个人信息进入到报价环节。在设计第一版本时，我们希望通过轻量的banner，重点突出下面部分操作区域，但是测试中我们发现用户会觉得要录入身份信息非常麻烦，不愿意填写，所以需要有强有力的动机去让用户完成报价行为。</p>\r\n<p><img class=\"alignnone size-full wp-image-10734\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/6.png\" alt=\"\" width=\"1600\" height=\"816\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/6.png 1600w, https://cdc.tencent.com/wp-content/uploads/2018/12/6-768x392.png 768w\" sizes=\"(max-width: 1600px) 100vw, 1600px\"></p>\r\n<p>在梳理动机过程中我们发现，同家保险公司续保和车险的价格优势是最能触发用户报价行为的两个动机，所以在没有改变录入形式的基础上，突出我们卖点以及福利等用户动机，优化方案输出了第三，第四版本。在这两个版本中，强化运营部分的视觉冲击，让用户感知到在线上购买车险，不仅流程简单，还可以享受较低的价格，理赔安心，同时也有腾讯信用背书，用户可以降低心里门槛，激发他们查看车险报价。</p>\r\n<p><strong>在转化阶段——需要提供持续的动机刺激，促进转化。</strong></p>\r\n<p>当用户进入订单详情后，虽然转化的机率很大，但是用户还是有可能流失，这里需要给用户提供持续的动机，促进转化。我们发现市面上车险价格的差异主要是提供的车主福利不同。用户作为老司机，在同家公司续保每年的车险投保不会有太大的变动，基本上很稳定。所以除了价格之外，车主福利也是我们需要突出展示的。由于不同价格返回的礼品不一样（由于相关保险政策，不宜展示具体礼品金额）在方案详情页上，我们会突出礼包方案以及相关特色服务，并且在礼包信息部分，设置了调整礼包品类的入口，便于用户对礼包的调整，通过礼包的吸引用户最终转化。</p>\r\n<p><img class=\"alignnone size-full wp-image-10735\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/7.png\" alt=\"\" width=\"1600\" height=\"1380\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/7.png 1600w, https://cdc.tencent.com/wp-content/uploads/2018/12/7-768x662.png 768w\" sizes=\"(max-width: 1600px) 100vw, 1600px\"></p>\r\n<p>投保详情页是用户决策前最后的一个页面，用户最终要决定是否接受该方案。所以在页面布局较于报价页，顶部用色块突出用户需要确认内容，引导重点关注。除了价格优势，我们可以提供的还有礼包和服务，需要让用户明确的感知到这两块内容的差异，所以在设计方案上采用浅色色块暗示礼包信息可点击，点击后能够查看更加详实的相关信息；服务则采用图标元素，做到相似信息的差异化区分。利用从众心理，通过详细真实的用数据增加社会认同，提高微保产品的信任度。</p>\r\n<p><strong>在留存阶段——需要提供持续性的保障，为留存提供新动机。</strong></p>\r\n<p>车险和其他商品的最大的差异就是用户买了之后并不是立即可以使用，而是买一个未来服务。在未来服务使用过程中会有很多新的动机产生，同时对用户的能力也会有新的要求。但是用户在当下无法体验到，只有未来遇到问题时才可以有机会去体验，所以这个体验的好坏会直接影响到用户的粘性，我们可以改善体验，从而让用户留存下来。但是微保作为一个新保险平台，是一个全新搭建的过程，不可能所有的体验现在都可以去优化。</p>\r\n<p>我们通过图二可以看到理赔时用户最关心的内容，线下理赔都有对应的保险公司提供，他们各自将比较简单的快案报撤移动化，所以我们对接的线上体验并不是很友好。为此我们多做了一步，为保险公司在微保上提供高复用的模板设计。通过这套模版一方面可以统一把控设计体验，一方面也可以尽可能的满足保险公司。</p>\r\n<p><img class=\"alignnone size-full wp-image-10736\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/8.png\" alt=\"\" width=\"799\" height=\"449\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/8.png 799w, https://cdc.tencent.com/wp-content/uploads/2018/12/8-768x432.png 768w\" sizes=\"(max-width: 799px) 100vw, 799px\"></p>\r\n<h3>2、复杂信息简单化，降低用户理解门槛</h3>\r\n<p>当用户通过验证后，我们希望给用户呈现的方案一目了然。我们将车辆信息、方案信息、以及报价信息进行整合，满足用户在一屏内看到。作为产品最核心的页面（类似宝贝详情页），由于我们面对是已经购买过车险的用户，所以在险别信息展示上，我们并有没有做太多的包装。而是将方案页与报价进行结合，让用户更加直观的进行对比。</p>\r\n<p><img class=\"alignnone size-full wp-image-10737\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/9.png\" alt=\"\" width=\"1600\" height=\"1220\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/9.png 1600w, https://cdc.tencent.com/wp-content/uploads/2018/12/9-768x586.png 768w\" sizes=\"(max-width: 1600px) 100vw, 1600px\"></p>\r\n<p>报价页是整个车险最核心的页面，也是转化用户关键性页面。前期通过对大量车主访谈得知，车险区别于其它险种它更像一个标准化商品，车主对于车险有着比较充分的理解。基于以上情况我们在页面设计做了以下几点的侧重：</p>\r\n<p>1、在页面信息量较大的情况下，克制的使用装饰性元素，通过信息本身来构建整个页面。大字体、背景色块分割方式去分割信息模块。卡片式的形式加强模块的点击感。</p>\r\n<p>2、在影响用户决策关键处用标签、色彩、图标的方式引导用户决策。对于大多数用户而言希望对比今年与去年的相同方案的保费差别。所以当用户选择了去年相同方案的时我们会做出提示，通过标签提示投保方案具体情况，以方便用用户进行比较。除此之外我们还会有针对投保方案不同情况作出相对应的文案提示。</p>\r\n<p>在保险公司报价模块，用加粗且突出色彩的字体，吸引用户关注报价的最关键信息——金额。并且采用图标的形式强调不同的赠品。再结合保险公司特点标签，帮助用户在在选择过程中做出选择判断。<br>\r\n<strong>通过这一系列的方法，我们希望通过设计手段，帮助产品降低用户的使用成本，从而提高漏斗转化率。</strong></p>\r\n<p><img class=\"alignnone wp-image-10728\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/11.jpg\" alt=\"\" width=\"174\" height=\"50\"></p>\r\n<h3>优化流程，缩短路径，降低使用能力门槛</h3>\r\n<p>当用户被动机吸引进入车险页面，有一系列的身份信息需要用户输入或确认，较高的操作门槛它关系到用户是否有意愿进行接下来的操作。每个用户因为出险情况不同，导致下一年车险报价会有较大差异。线下这部分的工作由保险公司完成信息录入。但是线上无法规避身份验证的流程，只有通过身份验证后保险公司才可以提供准确的报价。但是目前友商也是需要输入大量用户信息和复杂的车辆信息，例如车架号等等，用户需要花费的时间和人力成本比较大。</p>\r\n<p><img class=\"alignnone size-full wp-image-10738\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/12.png\" alt=\"\" width=\"1592\" height=\"218\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/12.png 1592w, https://cdc.tencent.com/wp-content/uploads/2018/12/12-768x105.png 768w\" sizes=\"(max-width: 1592px) 100vw, 1592px\"></p>\r\n<p>如图所示，这么多的步骤一定会影响到车险的购买转化率，这里转化率更多的是因为用户的能力决定的。我们和产品一致都认为在这里一定要尽可能降低用户的能力门槛，利用一切可利用的技术，例如利用微信本身的身份验证体系进行验证，然后再用验证得到的身份信息和保险公司留存的脱落、续保大数据匹配。减少用户的输入时间和人力成本。同时，微信账户体系的运营也能增强用使用的安全感。</p>\r\n<p><img class=\"alignnone size-full wp-image-10739\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/13.png\" alt=\"\" width=\"1600\" height=\"582\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/13.png 1600w, https://cdc.tencent.com/wp-content/uploads/2018/12/13-768x279.png 768w\" sizes=\"(max-width: 1600px) 100vw, 1600px\"></p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"alignnone wp-image-10729\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/14.jpg\" alt=\"\" width=\"174\" height=\"50\"></p>\r\n<h3><strong>品牌贯穿整个流程，保持一致体验，提升产品可靠性<br>\r\n</strong></h3>\r\n<p><span style=\"color: #999999;\">网上买那要说没有担心肯定不可能，首先是一个网络它的背后是什么，我主要担心这个，它的品牌，具体别的都好说。品牌这件事情还蛮重要的。”——北京 杜先生 26岁<br>\r\n内容源自：2018互联网保险行业大调研用户<br>\r\n</span></p>\r\n<p><strong>(1)、结合信用背书强化产品的可信度</strong></p>\r\n<p>品牌是用户首次接触全新产品时的重要记忆点。结合信用背书，让二者产生连接，增强产品的可信度。在不同的场景下重复的曝光，强化形象在用户心中的建立。第一版首页设计，通过大色块对比的方式，突出品牌吉祥物，引导关注头部信息，让用户明确感知微保与腾讯之间的关系，增强选择下面部分产品入口的入感。</p>\r\n<p><img class=\"alignnone size-full wp-image-10740\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/15.png\" alt=\"\" width=\"1600\" height=\"904\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/15.png 1600w, https://cdc.tencent.com/wp-content/uploads/2018/12/15-768x434.png 768w\" sizes=\"(max-width: 1600px) 100vw, 1600px\"></p>\r\n<p><strong>(2)、延续品牌视觉语言，提高用户认知</strong></p>\r\n<p>界面主色调沿用了“微保橙”与品牌色形成呼应。由于保险没有实体产品，为了让用户明确区分不同的险种（财产险、人寿险、意外险、健康险等），通过设定不同险种的主题色，从视觉上帮助用户区分各类险种。</p>\r\n<p>icon设计上，延续logo的设计风格，采用橙、黑两色的图标的形式。主色+辅色的形式，在突出品牌色的在用户侧的印象，线性简单色彩结合简洁的图形，避免页面当中过多的视觉形式造成干扰，画面更加统一。视觉风格与品牌元素风格高度一致。</p>\r\n<p><img class=\"alignnone size-full wp-image-10741\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/16.png\" alt=\"\" width=\"801\" height=\"147\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/16.png 801w, https://cdc.tencent.com/wp-content/uploads/2018/12/16-768x141.png 768w\" sizes=\"(max-width: 801px) 100vw, 801px\"></p>\r\n<p><strong>(3)、统一的插画形式凸显产品品质</strong></p>\r\n<p>吉祥物是除logo以外能够强化用户对品牌记忆的一个重要因素。在产品详情介绍、运营等场景下使用插画的方式，将吉祥物结合到其中，帮助用户理解产品、活动内容的同时能够感知到“微保”品牌的印象。再此情况下，标准化输出吉祥物形象，在用户能够保持一致的形象感受。设定了标准造型的基础上对其它人物、场景风格进行了探索。通过概念稿的方式，确定产品平台插画的设计风格，保障不同设计师在协同合作过程中能够有较为一致的风格输出。</p>\r\n<p><img class=\"alignnone size-full wp-image-10742\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/17.png\" alt=\"\" width=\"800\" height=\"532\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/17.png 800w, https://cdc.tencent.com/wp-content/uploads/2018/12/17-768x511.png 768w\" sizes=\"(max-width: 800px) 100vw, 800px\"></p>\r\n<p><strong>(4)、定义图像风格，提高企业形象曝光</strong></p>\r\n<p>为了摆脱传统保险呆板摆拍的画面感，我们定义了图片使用调性。采用真实场景结合虚拟形象形式、增加画面故事性的手段，加强画面的代入感，提高图片的识别度。</p>\r\n<p><img class=\"alignnone size-full wp-image-10743\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/18.png\" alt=\"\" width=\"800\" height=\"260\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/18.png 800w, https://cdc.tencent.com/wp-content/uploads/2018/12/18-768x250.png 768w\" sizes=\"(max-width: 800px) 100vw, 800px\"></p>\r\n<p><strong>(5)、保持不同场景下视觉风格一致</strong></p>\r\n<p>除了小程序以外，在其它场景的设计，也遵循统一的视觉表现形式言。让用户在不同渠道看到一致的体验感受。</p>\r\n<p><img class=\"alignnone size-full wp-image-10744\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/21.png\" alt=\"\" width=\"800\" height=\"781\" srcset=\"https://cdc.tencent.com/wp-content/uploads/2018/12/21.png 800w, https://cdc.tencent.com/wp-content/uploads/2018/12/21-768x750.png 768w\" sizes=\"(max-width: 800px) 100vw, 800px\"></p>\r\n<h1>四、保险类设计经验小结</h1>\r\n<p>车险与其他险种相比，是一个比较复杂，并有一定门槛的险种。特别是线下的流程已经非常成熟的情况下，如何能够转变用户购险习惯，用手机线上购买车险是我们这次设计探索的主要目的。利用合理的设计方法，突出产品优点，提升产品转化率是我们最终的设计目标。</p>\r\n<p>除此之外，品牌作为影响用户决策的重要因素之一，在新产品上也需要得到体现，一致的视觉体验能够很好帮助用户建立品牌印象，独特的视觉语言能够帮助产品从竞品中脱而出。通过这些方式，在产品受到业务和监管政策不断变化的影响下，可以帮助设计侧找到更多机会点，在有限的条件下尽力做到最好，达到我们最终的设计目标。</p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"wp-image-10745 aligncenter\" style=\"margin: 0 auto;\" src=\"http://cdc.tencent.com/wp-content/uploads/2018/12/22.png\" alt=\"\" width=\"209\" height=\"74\"></p>', '2019-03-03 12:09:18', '2019-03-03 12:09:18', 1, ''),
(5, 2, '【王者荣耀 X 第七神装】峡谷神装研究所大探秘', '【王者荣耀 X 第七神装】峡谷神装研究所大探秘', 1, 'https://shp.qpic.cn/cfwebcap/0/53c3ae981bdff6cab39ffadbe6fd1824/0/?width=820&height=820', '<section class=\"team-division\">\r\n<table style=\"width: 100%;\">\r\n<thead>\r\n<tr>\r\n<th><strong>项目管理</strong>karen</th>\r\n<th><strong>方案创意</strong>东北之光 搓澡 逛街</th>\r\n<th><strong>方案执行</strong>东北之光/UID/思烁/荧泽</th>\r\n<th><strong>监修与跟进</strong></th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"25%\">\r\n<p class=\"page-detail-param\"><strong>项目跟进</strong> <em>matt</em></p>\r\n</td>\r\n<td width=\"25%\">\r\n<p class=\"page-detail-param\"><strong>概念推导</strong> <em>东北之光 牛奶中</em></p>\r\n<p class=\"page-detail-param\"><strong>视觉创意</strong> <em>东北之光</em></p>\r\n</td>\r\n<td width=\"25%\">\r\n<p class=\"page-detail-param\"><strong>视觉设计</strong> <em>东北之光</em></p>\r\n</td>\r\n<td width=\"25%\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<p class=\"page-detail-param page-detail-parImg\"><span style=\" \"><img src=\"https://shp.qpic.cn/cfwebcap/0/f0beb64b0c517d1b2e41e8cad183f595/0?width=1300&amp;height=3301\" alt=\"\" width=\"1300\" height=\"3301\" style=\"display: block; margin-left: auto; margin-right: auto;\"><img src=\"https://shp.qpic.cn/cfwebcap/0/cc2bec0b2516a1911612a589e46984e3/0?width=1280&amp;height=2978\" alt=\"\" width=\"1280\" height=\"2978\" style=\"display: block; margin-left: auto; margin-right: auto;\"></span><img src=\"https://shp.qpic.cn/cfwebcap/0/3abce33359a75476af7a2503d233d9ce/0?width=1500&amp;height=2781\" alt=\"\" width=\"1500\" height=\"2781\" style=\"display: block; margin-left: auto; margin-right: auto;\"><img src=\"https://shp.qpic.cn/cfwebcap/0/e3e841a45f8330dda5c1a658f788f95e/0?width=1300&amp;height=3066\" alt=\"\" width=\"1300\" height=\"3066\" style=\"display: block; margin-left: auto; margin-right: auto;\"><img src=\"https://shp.qpic.cn/cfwebcap/0/4d49d552177cbb33b84b345927ade500/0?width=1500&amp;height=2661\" alt=\"\" width=\"1500\" height=\"2661\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>', '2019-03-03 15:03:40', '2019-03-03 15:03:40', 1, ''),
(6, 2, '刚刚，阿里开源 iOS 协程开发框架 coobjc！', '刚刚，阿里巴巴正式对外开源了基于 Apache 2.0 协议的协程开发框架 coobjc，开发者们可以在 Github 上自主下载。\r\ncoobjc是为iOS平台打造的开源协程开发框架，支持Objective-C和Swift，同时提供了cokit库为Foundation和UIKit中的部分API提供了协程化支持，本文将为大家详细介绍coobjc的设计理念及核心优势。', 1, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551623915840&di=a8002b202cbd7cdc42b8140eb5e7486b&imgtype=0&src=http%3A%2F%2Fwww.bynrnews.com%2Fnew%2Fqiye%2Fupload%2F126%2Fadmin%2F20190103%2F372ee95254209e52fc8a13eaaf04935b.jpg', '<p><strong>阿里妹导读：</strong>刚刚，阿里巴巴正式对外开源了基于 Apache 2.0 协议的协程开发框架 coobjc，开发者们可以在 Github 上自主下载。<br>coobjc是为iOS平台打造的开源协程开发框架，支持Objective-C和Swift，同时提供了cokit库为Foundation和UIKit中的部分API提供了协程化支持，本文将为大家详细介绍coobjc的设计理念及核心优势。</p>\r\n<p><strong>开源地址</strong></p>\r\n<p><a href=\"https://github.com/alibaba/coobjc\" rel=\"nofollow noreferrer\" target=\"_blank\">https://github.com/alibaba/coobjc</a></p>\r\n<h3 id=\"articleHeader0\"><strong>iOS异步编程问题</strong></h3>\r\n<p>从2008年第一个iOS版本发布至今的11年时间里，iOS的异步编程方式发展缓慢。</p>\r\n<p><span class=\"img-wrap\"><img data-src=\"/img/remote/1460000018357919\" src=\"/img/remote/1460000018357919\" alt=\"\" title=\"\" style=\"cursor: pointer; display: inline;\"></span></p>\r\n<p>基于 Block 的异步编程回调是目前 iOS 使用最广泛的异步编程方式，iOS 系统提供的 GCD 库让异步开发变得很简单方便，但是基于这种编程方式的缺点也有很多，主要有以下几点：</p>\r\n<ul>\r\n<li>容易进入\"嵌套地狱\"</li>\r\n<li>错误处理复杂和冗长</li>\r\n<li>容易忘记调用 completion handler</li>\r\n<li>条件执行变得很困难</li>\r\n<li>从互相独立的调用中组合返回结果变得极其困难</li>\r\n<li>在错误的线程中继续执行（如子线程操作UI）</li>\r\n<li>难以定位原因的多线程崩溃（手淘中多线程crash已占比60%以上）</li>\r\n<li>锁和信号量滥用带来的卡顿、卡死</li>\r\n</ul>\r\n<p>针对多线程以及尤其引发的各种崩溃和性能问题，我们制定了很多编程规范、进行了各种新人培训，尝试降低问题发生的概率，但是问题依然很严峻，多线程引发的问题占比并没有明显的下降，异步编程本来就是很复杂的事情，单靠规范和培训是难以从根本上解决问题的，需要有更加好的编程方式来解决。</p>\r\n<h3 id=\"articleHeader1\"><strong>解决方案</strong></h3>\r\n<p>上述问题在很多系统和语言开发中都可能会碰到，解决问题的标准方式就是使用协程，C#、Kotlin、Python、Javascript 等热门语言均支持协程极其相关语法，使用这些语言的开发者可以很方便的使用协程及相关功能进行异步编程。</p>\r\n<p>2017 年的 C++ 标准开始支持协程，Swift5 中也包含了协程相关的标准，从现在的发展趋势看基于协程的全新的异步编程方式，是我们解决现有异步编程问题的有效的方式，但是苹果基本已经不会升级 Objective-C 了，因此使用Objective-C的开发者是无法使用官方的协程能力的，而最新 Swift 的发布和推广也还需要时日，为了让广大iOS开发者能快速享受到协程带来的编程方式上的改变，手机淘宝架构团队基于长期对系统底层库和汇编的研究，通过汇编和C语言实现了支持 Objective-C 和 Swift 协程的完美解决方案 —— coobjc。</p>\r\n<h3 id=\"articleHeader2\"><strong>核心能力</strong></h3>\r\n<ul>\r\n<li>提供了类似C#和Javascript语言中的Async/Await编程方式支持，在协程中通过调用await方法即可同步得到异步方法的执行结果，非常适合IO、网络等异步耗时调用的同步顺序执行改造。</li>\r\n<li>提供了类似Kotlin中的Generator功能，用于懒计算生成序列化数据，非常适合多线程可中断的序列化数据生成和访问。</li>\r\n<li>提供了Actor Model的实现，基于Actor Model，开发者可以开发出更加线程安全的模块，避免由于直接函数调用引发的各种多线程崩溃问题。</li>\r\n<li>提供了元组的支持，通过元组Objective-C开发者可以享受到类似Python语言中多值返回的好处。</li>\r\n</ul>\r\n<h3 id=\"articleHeader3\"><strong>内置系统扩展库</strong></h3>\r\n<ul>\r\n<li>提供了对NSArray、NSDictionary等容器库的协程化扩展，用于解决序列化和反序列化过程中的异步调用问题。</li>\r\n<li>提供了对NSData、NSString、UIImage等数据对象的协程化扩展，用于解决读写IO过程中的异步调用问题。</li>\r\n<li>提供了对NSURLConnection和NSURLSession的协程化扩展，用于解决网络异步请求过程中的异步调用问题。</li>\r\n<li>提供了对NSKeyedArchieve、NSJSONSerialization等解析库的扩展，用于解决解析过程中的异步调用问题。</li>\r\n</ul>\r\n<h3 id=\"articleHeader4\"><strong>coobjc设计</strong></h3>\r\n<p><span class=\"img-wrap\"><img data-src=\"/img/remote/1460000018357920\" src=\"/img/remote/1460000018357920\" alt=\"\" title=\"\" style=\"cursor: pointer; display: inline;\"></span></p>\r\n<p>最底层是协程内核，包含了栈切换的管理、协程调度器的实现、协程间通信channel的实现等。</p>\r\n<p>中间层是基于协程的操作符的包装，目前支持async/await、Generator、Actor等编程模型。</p>\r\n<p>最上层是对系统库的协程化扩展，目前基本上覆盖了Foundation和UIKit的所有IO和耗时方法。</p>\r\n<h3 id=\"articleHeader5\"><strong>核心实现原理</strong></h3>\r\n<p>协程的核心思想是控制调用栈的主动让出和恢复。一般的协程实现都会提供两个重要的操作：</p>\r\n<ul>\r\n<li>Yield：是让出cpu的意思，它会中断当前的执行，回到上一次Resume的地方。</li>\r\n<li>Resume：继续协程的运行。执行Resume后，回到上一次协程Yield的地方。</li>\r\n</ul>\r\n<p>我们基于线程的代码执行时候，是没法做出暂停操作的，我们现在要做的事情就是要代码执行能够暂停，还能够再恢复。 基本上代码执行都是一种基于调用栈的模型，所以如果我们能把当前调用栈上的状态都保存下来，然后再能从缓存中恢复，那我们就能够实现yield和 resume。</p>\r\n<p>实现这样操作有几种方法呢？</p>\r\n<ul>\r\n<li>第一种：利用glibc 的 ucontext组件(云风的库)。</li>\r\n<li>第二种：使用汇编代码来切换上下文(实现c协程)，原理同ucontext。</li>\r\n<li>第三种：利用C语言语法switch-case的奇淫技巧来实现（Protothreads)。</li>\r\n<li>第四种：利用了 C 语言的 setjmp 和 longjmp。</li>\r\n<li>第五种：利用编译器支持语法糖。</li>\r\n</ul>\r\n<p>上述第三种和第四种只是能过做到跳转，但是没法保存调用栈上的状态，看起来基本上不能算是实现了协程，只能算做做demo，第五种除非官方支持，否则自行改写编译器通用性很差。而第一种方案的 ucontext 在iOS上是废弃了的，不能使用。那么我们使用的是第二种方案，自己用汇编模拟一下 ucontext。</p>\r\n<p>模拟ucontext的核心是通过getContext和setContext实现保存和恢复调用栈。需要熟悉不同CPU架构下的调用约定(Calling Convention). 汇编实现就是要针对不同cpu实现一套，我们目前实现了 armv7、arm64、i386、x86_64，支持iPhone真机和模拟器。</p>\r\n<h3 id=\"articleHeader6\"><strong>Show me the code</strong></h3>\r\n<p>说了这么多，还是看看代码吧，我们从一个简单的网络请求加载图片功能来看看coobjc到底是如何使用的。</p>\r\n<p>下面是最普通的网络请求的写法：</p>\r\n<p><span class=\"img-wrap\"><img data-src=\"/img/remote/1460000018357921\" src=\"/img/remote/1460000018357921\" alt=\"\" title=\"\" style=\"cursor: pointer; display: inline;\"></span></p>\r\n<p>下面是使用coobjc库协程化改造后的代码：</p>\r\n<p><span class=\"img-wrap\"><img data-src=\"/img/remote/1460000018357922\" src=\"/img/remote/1460000018357922\" alt=\"\" title=\"\" style=\"cursor: pointer; display: inline;\"></span></p>\r\n<p>原本需要20行的代码，通过coobjc协程化改造后，减少了一半，整个代码逻辑和可读性都更加好，这就是coobjc强大的能力，能把原本很复杂的异步代码，通过协程化改造，转变成逻辑简洁的顺序调用。</p>\r\n<p>coobjc还有很多其他强大的能力，本文对于coobjc的实际使用就不过多介绍了，感兴趣的朋友可以去官方github仓库自行下载查看。</p>\r\n<h3 id=\"articleHeader7\"><strong>性能提升</strong></h3>\r\n<p>我们在iPhone7 iOS11.4.1的设备上使用协程和传统多线程方式分别模拟高并发读取数据的场景，下面是两种方式得到的压测数据。</p>\r\n<ul>\r\n<li>测试机器：iPhone7 iOS11.4.1</li>\r\n<li>数据文件大小：20M</li>\r\n<li>协程最多使用线程数：4</li>\r\n<li>数据测试结果(统计的是所有并发访问结束的总耗时)：</li>\r\n</ul>\r\n<p><span class=\"img-wrap\"><img data-src=\"/img/remote/1460000018357923\" src=\"/img/remote/1460000018357923\" alt=\"\" title=\"\" style=\"cursor: pointer; display: inline;\"></span></p>\r\n<p>从上面的表格我们可以看到使用在并发量很小的场景，由于多线程可以完全使用设备的计算核心，因此coobjc总耗时要比传统多线程略高，但是由于整体耗时都很小，因此差异并不明显，但是随着并发量的增大，coobjc的优势开始逐渐体现出来，当并发量超过1000以后，传统多线程开始出现线程分配异常，而导致很多并发任务并没有执行，因此在上表中显示的是大于20秒，实际是任务已经无法正常执行了，但是coobjc仍然可以正常运行。</p>\r\n<p>我们在手机淘宝这种超级App中尝试了协程化改造，针对部分性能差的页面，我们发现在滑动过程中存在很多主线程IO调用、数据解析，导致帧率下降严重，通过引入coobjc，在不改变原有业务代码的基础上，通过全局hook部分IO、数据解析方法，即可让原来在主线程中同步执行的IO方法异步执行，并且不影响原有的业务逻辑，通过测试验证，这样的改造在低端机(iPhone6及以下的机器)上的帧率有20%左右的提升。</p>\r\n<h3 id=\"articleHeader8\"><strong>优势</strong></h3>\r\n<p><strong>简明</strong></p>\r\n<ul>\r\n<li>概念少：只有很少的几个操作符，相比响应式几十个操作符，简直不能再简单了。</li>\r\n<li>原理简单：协程的实现原理很简单，整个协程库只有几千行代码。</li>\r\n</ul>\r\n<p><strong>易用</strong></p>\r\n<ul>\r\n<li>使用简单：它的使用方式比GCD还要简单，接口很少。</li>\r\n<li>改造方便：现有代码只需要进行很少的改动就可以协程化，同时我们针对系统库提供了大量协程化接口。</li>\r\n</ul>\r\n<p><strong>清晰</strong></p>\r\n<ul>\r\n<li>同步写异步逻辑：同步顺序方式写代码是人类最容易接受的方式，这可以极大的减少出错的概率。</li>\r\n<li>可读性高：使用协程方式编写的代码比block嵌套写出来的代码可读性要高很多。</li>\r\n</ul>\r\n<p><strong>性能</strong></p>\r\n<ul>\r\n<li>调度性能更快：协程本身不需要进行内核级线程的切换，调度性能快，即使创建上万个协程也毫无压力。</li>\r\n<li>减少卡顿卡死: 协程的使用以帮助开发减少锁、信号量的滥用，通过封装会引起阻塞的IO等协程接口，可以从根源上减少卡顿、卡死，提升应用整体的性能。</li>\r\n</ul>\r\n<h3 id=\"articleHeader9\"><strong>总结</strong></h3>\r\n<p>程序是写来给人读的，只会偶尔让机器执行一下。——Abelson and Sussman</p>\r\n<p>基于协程实现的编程范式能够帮助开发者编写出更加优美、健壮、可读性更强的代码。</p>\r\n<p>协程可以帮助我们在编写并发代码的过程中减少线程和锁的使用，提升应用的性能和稳定性。<br></p>\r\n<hr>\r\n<p>本文作者：淘宝技术</p>\r\n<p><a href=\"https://yq.aliyun.com/articles/691765?utm_content=g_1000043730\" rel=\"nofollow noreferrer\" target=\"_blank\">阅读原文</a></p>\r\n<p>本文来自云栖社区合作伙伴“&nbsp;阿里技术”，如需转载请联系原作者。</p>', '2019-03-03 19:49:40', '2019-03-03 19:49:40', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `profile`
--

CREATE TABLE `profile` (
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `nickname` varchar(64) NOT NULL COMMENT '昵称',
  `avatar` varchar(256) NOT NULL COMMENT '头像',
  `signature` varchar(256) NOT NULL COMMENT '个性签名',
  `birth_date` varchar(19) NOT NULL COMMENT '出生日期',
  `website` varchar(256) NOT NULL COMMENT '个人网站',
  `qq` varchar(32) NOT NULL COMMENT 'QQ',
  `country` varchar(10) NOT NULL COMMENT '国家',
  `province` varchar(10) NOT NULL COMMENT '省市',
  `city` varchar(10) NOT NULL COMMENT '市区',
  `county` varchar(10) NOT NULL COMMENT '区县',
  `theme` tinyint(2) NOT NULL DEFAULT '1' COMMENT '主题ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户资料';

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `mobile` varchar(64) NOT NULL COMMENT '手机号',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '用户组ID',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `last_login_at` varchar(19) NOT NULL COMMENT '最后登录日期',
  `last_login_ip` varchar(20) NOT NULL COMMENT '最后登录IP'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`, `email`, `mobile`, `gid`, `status`, `last_login_at`, `last_login_ip`) VALUES
(1, 'admin', 'c8837b23ff8aaa8a2dde915473ce0991', '2019-02-25 09:26:18', 'admin@126.com', '13628447451', 1, 1, '2019-02-25 09:26:18', '255.255.255.255');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`,`mobile`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
