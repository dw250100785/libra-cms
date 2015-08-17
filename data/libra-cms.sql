-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2014 at 09:43 AM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `libra_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `uid` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `params` longtext COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`locale`,`alias`),
  UNIQUE KEY `uid` (`uid`,`locale`),
  KEY `state` (`state`),
  KEY `locale` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `locale`, `heading`, `alias`, `uid`, `created`, `createdBy`, `modified`, `modifiedBy`, `ordering`, `state`, `revision`, `content`, `params`) VALUES
(5, 'ru', 'Главная', 'home', '1', '2012-03-20 02:21:51', 0, '2012-09-29 06:00:53', 0, -1, 'published', 4, '<p>\r\n	Добро пожаловать на сайт Либра ЦМС.</p>\r\n<p>\r\n	<a href="https://bitbucket.org/vnagara/libra-cms">Здесь</a> можно скачать исходный код</p>\r\n', '{"headTitle":"","metaKeywords":"Libra CMS, zf2, zend framework 2, CMS at PHP, zf2 modules","metaDescription":"New moduled CMS based at Zend Framework 2 library in short zf2 and it modules."}'),
(16, '', 'Libra  - Zend Framework 2 CMS and modules', 'home', '1', '2012-04-02 16:42:40', 0, '2013-05-09 20:04:35', 0, -1, 'published', 20, '<p style="text-align: justify;">\r\n	<strong>Libra CMS</strong> -&nbsp; is simple Content Management System (CMS) written at <strong>Zend Framework 2</strong>.</p>\r\n<p style="text-align: justify;">\r\n	Also you can use it for viewing functionality of new ZF2 framework and I hope It will be a good guid for novices to utilize feateures of ZF 2.</p>\r\n<p style="text-align: justify;">\r\n	Version 0.1.0 was released for zf2 beta3. So for zf2 upper RC2 I had to rewrite all project. So some presented features is absented and will be appearing in future.</p>\r\n<p style="text-align: justify;">\r\n	Current version of majority modules is 0.3.0.</p>\r\n<p style="text-align: justify;">\r\n	This site is live demo whlie www.demo.libra-cms.ejoom.com under old version (for zf2 beta3). I should remake the whole of it.</p>\r\n<p>\r\n	Features:</p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		It has SEO freindly URL and meta kewrods/description and html-title fields.</li>\r\n	<li style="text-align: justify;">\r\n		It has simple article editing by FCKEditor,</li>\r\n	<li style="text-align: justify;">\r\n		It use <a href="http://www.doctrine-project.org/">Doctrine 2</a> for DB access.</li>\r\n	<li style="text-align: justify;">\r\n		It has <a href="http://demo.libra-cms.ejoom.com/admin/">administration</a> and article managment.</li>\r\n	<li style="text-align: justify;">\r\n		It created with supporting multilanguage and locales. Now site done for 2 languages Eanglish and Russian.</li>\r\n	<li style="text-align: justify;">\r\n		It has simple multi-templateing. You can change template by editing only o line in config file (libra-app.global.php.</li>\r\n	<li style="text-align: justify;">\r\n		It has login and registraion of new users system by ZfcUsers module and custom redirect page after sign in (it disabled while won&#39;t be properly created Acl).</li>\r\n	<li style="text-align: justify;">\r\n		It will have user managment.</li>\r\n	<li style="text-align: justify;">\r\n		It has menu file in cofigured folder for navigation.</li>\r\n	<li style="text-align: justify;">\r\n		It will be based at jQuery and twitter-bootstrap.</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	You can clone or download code from <a href="https://bitbucket.org/vnagara/libra-cms">https://bitbucket.org/vnagara/libra-cms</a>. There you find instructions for installation.</p>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	With any questions, suggestions or&nbsp; comments write me at <a href="mailto:duke@ejoom.com">duke@ejoom.com</a></p>\r\n<p style="text-align: justify;">\r\n	I&#39;m also available via&nbsp; <a href="irc://irc.freenode.net/zftalk">#zftalk on Freenode</a>. Use free to ask.</p>\r\n<p style="text-align: justify;">\r\n	test</p>\r\n', '{"headTitle":"","metaKeywords":"Libra cms, zf2, zend framework 2, CMS at PHP, zf2 modules","metaDescription":"New moduled CMS based at Zend Framework 2 library in short zf2 and it modules."}'),
(17, '', 'Privacy, Disclaimer, Terms & Conditions, and Copyright Info', 'disclaimer', '4f79d91fdef8c', '2012-04-02 19:51:43', 0, '2012-04-21 10:11:38', 0, -10, 'unpublished', 0, '<p>\r\n	Copyright (c) 2008-2012 eJoom Software<br />\r\n	All rights reserved.<br />\r\n	<br />\r\n	Redistribution and use in source and binary forms, with or without<br />\r\n	modification, are permitted provided that the following conditions are met:<br />\r\n	<br />\r\n	1. Redistributions of source code must retain the above copyright<br />\r\n	&nbsp;&nbsp; notice, this list of conditions and the following disclaimer.<br />\r\n	<br />\r\n	2. Redistributions in binary form must reproduce the above copyright<br />\r\n	&nbsp;&nbsp; notice, this list of conditions and the following disclaimer in the<br />\r\n	&nbsp;&nbsp; documentation and/or other materials provided with the distribution.<br />\r\n	<br />\r\n	3. Neither the name of the eJoom Software nor the names of its contributors<br />\r\n	&nbsp;&nbsp; may be used to endorse or promote products derived from this software<br />\r\n	&nbsp;&nbsp; without specific prior written permission.<br />\r\n	<br />\r\n	THIS SOFTWARE IS PROVIDED BY EJOOM SOFTWARE ``AS IS`` AND ANY<br />\r\n	EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED<br />\r\n	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />\r\n	DISCLAIMED. IN NO EVENT SHALL &lt;COPYRIGHT HOLDER&gt; BE LIABLE FOR ANY<br />\r\n	DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES<br />\r\n	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;<br />\r\n	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND<br />\r\n	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT<br />\r\n	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS<br />\r\n	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', '{"metaKeys":"","metaDesc":""}'),
(39, 'en', 'English menu item', 'en-page', '4f8c3c0aeb35d', '2012-04-16 18:34:34', 0, '2012-09-29 06:01:04', 0, 0, 'published', 2, '<p>\r\n	This mneu item will not be visible at another language.</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(40, 'ru', 'Русский пункт меню', 'ru-page', '4f8c3c4339394', '2012-04-16 18:35:31', 0, '2014-02-16 23:07:20', 0, 0, 'published', 5, '<p>\r\n	This mneu item will not be visible at another language.</p>\r\n<p>\r\n	Пункт меню в русской локали. Этот пункт меню не будет отображаться на других языках.</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":"zend framework 2 content managment system and modules"}'),
(42, '', 'Multilanguage page', 'multilanguage', '4f8c4324f2cc4', '2012-04-16 19:04:52', 0, '2012-04-16 19:04:52', 0, 0, 'unpublished', 0, '<p>\r\n	This article at all languages</p>\r\n', '{"metaKeys":"","metaDesc":""}'),
(43, 'en', 'Multilanguage page', 'multilanguage', '4f8c3cd321141', '2012-04-16 19:05:48', 0, '2012-09-29 06:01:17', 0, 0, 'published', 4, '<p>\r\n	Page at Eanglish.</p>\r\n<p>\r\n	Та же страница но на английском</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(44, 'ru', 'Мултиязыковая страница', 'multilanguage', '4f8c3cd321141', '2012-04-16 19:06:29', 0, '2012-09-29 06:01:29', 0, 0, 'published', 2, '<p>\r\n	Страница на русском.</p>\r\n<p>\r\n	Same english page in russian locale.</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(45, '', 'FAQ', 'faq', '4f8d427a14891', '2012-04-17 13:14:18', 0, '2013-04-25 08:53:37', 0, 5, 'published', 4, '<p>\r\n	Why this source not in github or bitbucket: 2</p>\r\n<p>\r\n	Because I did&#39;n wish put in repo hevy sized vendors like FCKEditor. When I separate it and prepare all configs I&#39;ll put it to public repo.</p>\r\n<p>\r\n	- Now it is at bitbucket and packagist for free downloading.</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":"FAQ"}'),
(46, '', 'Images', 'images', '4f8e6e6a9dd05', '2012-04-18 10:34:02', 0, '2012-04-18 11:04:23', 0, 3, 'published', 0, '<p>\r\n	<a href="/images/stories/images/Selection_010.jpg"><img alt="" src="/images/stories/images/Selection_010.jpg" style="width: 200px; height: 128px;" /></a>&nbsp; &nbsp; <a href="/images/stories/images/Selection_007.jpg"><img alt="" src="/images/stories/images/Selection_007.jpg" style="width: 199px; height: 129px;" /></a><a href="/images/stories/images/Selection_007.jpg"> </a></p>\r\n<p>\r\n	<a href="/images/stories/images/Selection_008.jpg"><img alt="" src="/images/stories/images/Selection_008.jpg" style="width: 200px; height: 131px;" /></a> &nbsp; &nbsp;&nbsp; <a href="/images/stories/images/Selection_009.jpg"><img alt="" src="/images/stories/images/Selection_009.jpg" style="width: 200px; height: 131px;" /></a></p>\r\n', '{"metaKeys":"","metaDesc":""}'),
(47, '', 'Authors', 'authors', '4f8e7560f31c3', '2012-04-18 11:03:44', 0, '2012-04-21 14:55:47', 0, 7, 'published', 0, '<p>\r\n	This CMS was created by duke. Inspired by Zend Framework and Joomla CMS.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<img alt="" src="/images/stories/images/me.jpg" style="width: 100px; height: 133px;" /></p>\r\n<p>\r\n	Vitalii</p>\r\n', '{"metaKeys":"","metaDesc":""}'),
(48, '', 'Roadmap', 'roadmap', '4fb633ba93df5', '2012-05-18 14:34:18', 0, '2012-10-08 09:38:49', 0, 2, 'published', 6, '<p>\r\n	List:</p>\r\n<ul>\r\n	<li>\r\n		Add editing menu items from admin - in progress.</li>\r\n	<li>\r\n		Add user menegment - planned.</li>\r\n	<li>\r\n		Add article content change track like VCS - planned.</li>\r\n</ul>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(52, '', 'new test2', 'testa', '50435ef447499', '2012-09-02 13:28:20', 0, '2014-04-21 07:14:37', 0, 0, 'published', 26, '<p>\n	setete2ewr</p>\n', '{"headTitle":"","metaKeywords":"dfsdfssdfsfsdfsdfsdfsdfsdf","metaDescription":"meta description"}'),
(78, 'en', 'new', 'new-all', '50435ef447499', '2012-09-08 09:20:30', 0, '2012-09-12 19:12:04', 0, 0, 'published', 14, '<p>\r\n	sdfdsf</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(79, '', 'License', 'license', '506277879f6bd', '2012-09-26 03:33:27', 0, '2012-09-26 03:35:42', 0, 0, 'published', 2, '<p>\r\n	Copyright (c) 2008-2012 eJoom Software<br />\r\n	All rights reserved.<br />\r\n	<br />\r\n	Redistribution and use in source and binary forms, with or without<br />\r\n	modification, are permitted provided that the following conditions are met:<br />\r\n	<br />\r\n	1. Redistributions of source code must retain the above copyright<br />\r\n	&nbsp;&nbsp; notice, this list of conditions and the following disclaimer.<br />\r\n	<br />\r\n	2. Redistributions in binary form must reproduce the above copyright<br />\r\n	&nbsp;&nbsp; notice, this list of conditions and the following disclaimer in the<br />\r\n	&nbsp;&nbsp; documentation and/or other materials provided with the distribution.<br />\r\n	<br />\r\n	3. Neither the name of the eJoom Software nor the names of its contributors<br />\r\n	&nbsp;&nbsp; may be used to endorse or promote products derived from this software<br />\r\n	&nbsp;&nbsp; without specific prior written permission.<br />\r\n	<br />\r\n	THIS SOFTWARE IS PROVIDED BY EJOOM SOFTWARE ``AS IS`` AND ANY<br />\r\n	EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED<br />\r\n	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />\r\n	DISCLAIMED. IN NO EVENT SHALL &lt;COPYRIGHT HOLDER&gt; BE LIABLE FOR ANY<br />\r\n	DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES<br />\r\n	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;<br />\r\n	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND<br />\r\n	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT<br />\r\n	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS<br />\r\n	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</p>\r\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(80, '', 'Aerosmith new 2', 'aerosmith', '52f7c7cfca481', '2014-02-09 18:24:15', 0, '2014-04-22 09:02:17', 0, 0, 'published', 12, '<p>\n	sdfsdfdfdfsdfsdf</p>\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(81, '', 'Aerosmith2', 'aerosmith2', '52f7dcad4c909', '2014-02-09 19:53:17', 0, '2014-04-23 20:15:38', 0, 0, 'published', 1, '<p>\n	dsfdfs</p>\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}'),
(83, 'en', 'sdfdsf', 'sdfsdf', '52f7c7cfca481', '2014-04-22 13:31:45', 0, '2014-04-22 13:31:45', 0, 0, 'published', 0, '<p>\n	sdf</p>\n', '{"headTitle":"","metaKeywords":"","metaDescription":""}');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E04992AA5E237E06` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(2, 'adminEdit'),
(1, 'adminView'),
(5, 'edit'),
(4, 'managerEdit'),
(3, 'managerView'),
(6, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6A5E237E06` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(4, 'guest'),
(2, 'manager'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `IDX_6F7DF886D60322AC` (`role_id`),
  KEY `IDX_6F7DF886FED90CCA` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `role_role`
--

CREATE TABLE IF NOT EXISTS `role_role` (
  `role_source` int(11) NOT NULL,
  `role_target` int(11) NOT NULL,
  PRIMARY KEY (`role_source`,`role_target`),
  KEY `IDX_E9D6F8FEF4AC9EC2` (`role_source`),
  KEY `IDX_E9D6F8FEED49CE4D` (`role_target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_role`
--

INSERT INTO `role_role` (`role_source`, `role_target`) VALUES
(1, 2),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `display_name`, `password`, `state`) VALUES
(1, 'admin', 'admin@your.mailserver.com', 'Admin', '$2a$14$UKBeR46BNvuZYy5XKn8DKupRzgUgwoXY/Oy8thZ4IVjDbfwgwTtvG', NULL),
(2, 'duke', 'duke@ejoom.com', 'Vitalii Nagara', '$2a$14$XDWefi3Du3U8KOkbj.zhyuF9AuA4FoKkQj7eiLNfwd3k8ebfj33Fu', NULL),
(3, NULL, 'some@mail.com', 'Some Name', '$2a$10$oLUweOnw.mXn3Uz5hYI44uP5bF61qHDLcIUa.JxHPhr.LWB6a5x7i', NULL),
(4, NULL, 'test2@gmail.com', 'Test2 name', '', NULL),
(5, NULL, 'director@phys.asm.md', 'director', '$2a$10$prrJBQ.UB1qslDhbsmvlBu0nQhiFM81/YiK6.4lyduKJfArmJ90L.', NULL),
(6, NULL, 'sdf@fd2.com', 'sdf@fd2.com', '$2a$10$QNtbUu0wSumPyNN2k0ABC.2bDOG6y7RRd9NWn1hu7OW4fyxuMhTwC', NULL),
(9, NULL, 'test@gmail.com', 'Test Name', '$2a$10$425MVLPEgYNRyk5FCcj7cO.FEiasdf.GAgubbNkkCWU/7UWdjt1y2', NULL),
(13, NULL, '', 'sdsdfsdf', '', NULL),
(21, NULL, 'test3@gmail.com', 'test3', '$2a$10$hSPHbrB8AqxvpuzYbRF5uOefO5J4odoYns2eiNjnPitobhTRELUwu', NULL),
(23, NULL, 'test4@gmail.com', 'test4', '$2a$10$CWR2cOC4/jrxqK00Sn.9Ve4BHN3w0xmfHDtMjRxTZDz7IorJEPQwu', NULL),
(24, NULL, NULL, 'Test Ip Localhost', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_2DE8C6A3A76ED395` (`user_id`),
  KEY `IDX_2DE8C6A3D60322AC` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `FK_6F7DF886D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6F7DF886FED90CCA` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_role`
--
ALTER TABLE `role_role`
  ADD CONSTRAINT `FK_E9D6F8FEED49CE4D` FOREIGN KEY (`role_target`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E9D6F8FEF4AC9EC2` FOREIGN KEY (`role_source`) REFERENCES `role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_2DE8C6A3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2DE8C6A3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;
