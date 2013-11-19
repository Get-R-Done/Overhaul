-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `a_text` TEXT NOT NULL,
  `a_time` INT(11) NOT NULL DEFAULT '0'
) engine=myisam ;

--
-- Dumping data for table `announcements`
--


-- --------------------------------------------------------

--
-- Table structure for table `applications`
--CREATE TABLE `applications` (
  `appid` INT(11) NOT NULL auto_increment,
  `appuser` INT(11) NOT NULL DEFAULT '0',
  `appgang` INT(11) NOT NULL DEFAULT '0',
  `apptext` TEXT NOT NULL,
  PRIMARY KEY  (`appid`)
) engine=myisam ;

--
-- Dumping data for table `applications`
--


-- --------------------------------------------------------

--
-- Table structure for table `attacklogs`
--CREATE TABLE `attacklogs` (
  `log_id` INT(11) NOT NULL auto_increment,
  `attacker` INT(11) NOT NULL DEFAULT '0',
  `attacked` INT(11) NOT NULL DEFAULT '0',
  `result` ENUM('won','lost') NOT NULL DEFAULT 'won',
  `time` INT(11) NOT NULL DEFAULT '0',
  `stole` INT(11) NOT NULL DEFAULT '0',
  `attacklog` LONGTEXT NOT NULL,
  PRIMARY KEY  (`log_id`)
) engine=myisam ;

--
-- Dumping data for table `attacklogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `bankxferlogs`
--CREATE TABLE `bankxferlogs` (
  `cxid` INT(11) NOT NULL auto_increment,
  `cxfrom` INT(11) NOT NULL DEFAULT '0',
  `cxto` INT(11) NOT NULL DEFAULT '0',
  `cxamount` INT(11) NOT NULL DEFAULT '0',
  `cxtime` INT(11) NOT NULL DEFAULT '0',
  `cxfromip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  `cxtoip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  `cxbank` ENUM('bank','cyber') NOT NULL DEFAULT 'bank',
  PRIMARY KEY  (`cxid`)
) engine=myisam ;

--
-- Dumping data for table `bankxferlogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--CREATE TABLE `blacklist` (
  `bl_id` INT(11) NOT NULL auto_increment,
  `bl_adder` INT(11) NOT NULL DEFAULT '0',
  `bl_added` INT(11) NOT NULL DEFAULT '0',
  `bl_comment` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`bl_id`)
) engine=myisam ;

--
-- Dumping data for table `blacklist`
--


-- --------------------------------------------------------

--
-- Table structure for table `cashxferlogs`
--CREATE TABLE `cashxferlogs` (
  `cxid` INT(11) NOT NULL auto_increment,
  `cxfrom` INT(11) NOT NULL DEFAULT '0',
  `cxto` INT(11) NOT NULL DEFAULT '0',
  `cxamount` INT(11) NOT NULL DEFAULT '0',
  `cxtime` INT(11) NOT NULL DEFAULT '0',
  `cxfromip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  `cxtoip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  PRIMARY KEY  (`cxid`)
) engine=myisam ;

--
-- Dumping data for table `cashxferlogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `challengebots`
--CREATE TABLE `challengebots` (
  `cb_npcid` INT(11) NOT NULL DEFAULT '0',
  `cb_money` INT(11) NOT NULL DEFAULT '0'
) engine=myisam ;

--
-- Dumping data for table `challengebots`
--


-- --------------------------------------------------------

--
-- Table structure for table `challengesbeaten`
--CREATE TABLE `challengesbeaten` (
  `userid` INT(11) NOT NULL DEFAULT '0',
  `npcid` INT(11) NOT NULL DEFAULT '0'
) engine=myisam ;

--
-- Dumping data for table `challengesbeaten`
--


-- --------------------------------------------------------

--
-- Table structure for table `cities`
--CREATE TABLE `cities` (
  `cityid` INT(11) NOT NULL auto_increment,
  `cityname` VARCHAR(255) NOT NULL DEFAULT '',
  `citydesc` LONGTEXT NOT NULL,
  `cityminlevel` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`cityid`)
) engine=myisam ;

--
-- Dumping data for table `cities`
--INSERT INTO `cities` (`cityid`, `cityname`, `citydesc`, `cityminlevel`) VALUES
(1, 'Default City', 'A standard city added to start you off', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactlist`
--CREATE TABLE `contactlist` (
  `cl_id` INT(11) NOT NULL auto_increment,
  `cl_adder` INT(11) NOT NULL DEFAULT '0',
  `cl_added` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`cl_id`)
) engine=myisam ;

--
-- Dumping data for table `contactlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `courses`
--CREATE TABLE `courses` (
  `crid` INT(11) NOT NULL auto_increment,
  `crname` VARCHAR(255) NOT NULL DEFAULT '',
  `crdesc` TEXT NOT NULL,
  `crcost` INT(11) NOT NULL DEFAULT '0',
  `crenergy` INT(11) NOT NULL DEFAULT '0',
  `crdays` INT(11) NOT NULL DEFAULT '0',
  `crstr` INT(11) NOT NULL DEFAULT '0',
  `crguard` INT(11) NOT NULL DEFAULT '0',
  `crlabour` INT(11) NOT NULL DEFAULT '0',
  `cragil` INT(11) NOT NULL DEFAULT '0',
  `criq` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`crid`)
) engine=myisam ;

--
-- Dumping data for table `courses`
--


-- --------------------------------------------------------

--
-- Table structure for table `coursesdone`
--CREATE TABLE `coursesdone` (
  `userid` INT(11) NOT NULL DEFAULT '0',
  `courseid` INT(11) NOT NULL DEFAULT '0'
) engine=myisam ;

--
-- Dumping data for table `coursesdone`
--


-- --------------------------------------------------------

--
-- Table structure for table `crimegroups`
--CREATE TABLE `crimegroups` (
  `cgid` INT(11) NOT NULL auto_increment,
  `cgname` VARCHAR(255) NOT NULL DEFAULT '',
  `cgorder` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`cgid`)
) engine=myisam ;

--
-- Dumping data for table `crimegroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--CREATE TABLE `crimes` (
  `crimeid` INT(11) NOT NULL auto_increment,
  `crimename` VARCHAR(255) NOT NULL DEFAULT '',
  `crimebrave` INT(11) NOT NULL DEFAULT '0',
  `crimepercform` TEXT NOT NULL,
  `crimesuccessmuny` INT(11) NOT NULL DEFAULT '0',
  `crimesuccesscrys` INT(11) NOT NULL DEFAULT '0',
  `crimesuccessitem` INT(11) NOT NULL DEFAULT '0',
  `crimegroup` INT(11) NOT NULL DEFAULT '0',
  `crimeitext` TEXT NOT NULL,
  `crimestext` TEXT NOT NULL,
  `crimeftext` TEXT NOT NULL,
  `crimejtext` TEXT NOT NULL,
  `crimejailtime` INT(10) NOT NULL DEFAULT '0',
  `crimejreason` VARCHAR(255) NOT NULL DEFAULT '',
  `crimexp` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`crimeid`)
) engine=myisam ;

--
-- Dumping data for table `crimes`
--


-- --------------------------------------------------------

--
-- Table structure for table `crystalmarket`
--CREATE TABLE `crystalmarket` (
  `cmid` INT(11) NOT NULL auto_increment,
  `cmqty` INT(11) NOT NULL DEFAULT '0',
  `cmadder` INT(11) NOT NULL DEFAULT '0',
  `cmprice` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`cmid`)
) engine=myisam ;

--
-- Dumping data for table `crystalmarket`
--


-- --------------------------------------------------------

--
-- Table structure for table `crystalxferlogs`
--CREATE TABLE `crystalxferlogs` (
  `cxid` INT(11) NOT NULL auto_increment,
  `cxfrom` INT(11) NOT NULL DEFAULT '0',
  `cxto` INT(11) NOT NULL DEFAULT '0',
  `cxamount` INT(11) NOT NULL DEFAULT '0',
  `cxtime` INT(11) NOT NULL DEFAULT '0',
  `cxfromip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  `cxtoip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  PRIMARY KEY  (`cxid`)
) engine=myisam ;

--
-- Dumping data for table `crystalxferlogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `dps_accepted`
--CREATE TABLE `dps_accepted` (
  `dpid` INT(11) NOT NULL auto_increment,
  `dpbuyer` INT(11) NOT NULL DEFAULT '0',
  `dpfor` INT(11) NOT NULL DEFAULT '0',
  `dptype` VARCHAR(255) NOT NULL DEFAULT '',
  `dptime` INT(11) NOT NULL DEFAULT '0',
  `dptxn` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`dpid`)
) engine=myisam ;

--
-- Dumping data for table `dps_accepted`
--


-- --------------------------------------------------------

--
-- Table structure for table `events`
--CREATE TABLE `events` (
  `evid` INT(11) NOT NULL auto_increment,
  `evuser` INT(11) NOT NULL DEFAULT '0',
  `evtime` INT(11) NOT NULL DEFAULT '0',
  `evread` INT(11) NOT NULL DEFAULT '0',
  `evtext` TEXT NOT NULL,
  PRIMARY KEY  (`evid`)
) engine=myisam ;

--
-- Dumping data for table `events`
--


-- --------------------------------------------------------

--
-- Table structure for table `fedjail`
--CREATE TABLE `fedjail` (
  `fed_id` INT(11) NOT NULL auto_increment,
  `fed_userid` INT(11) NOT NULL DEFAULT '0',
  `fed_days` INT(11) NOT NULL DEFAULT '0',
  `fed_jailedby` INT(11) NOT NULL DEFAULT '0',
  `fed_reason` TEXT NOT NULL,
  PRIMARY KEY  (`fed_id`),
  UNIQUE (`fed_userid`)
) engine=myisam ;

--
-- Dumping data for table `fedjail`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum_forums`
--CREATE TABLE IF NOT EXISTS `forum_forums` (
  `ff_id` INT(11) NOT NULL auto_increment,
  `ff_name` VARCHAR(255) NOT NULL DEFAULT '',
  `ff_desc` VARCHAR(255) NOT NULL DEFAULT '',
  `ff_posts` INT(11) NOT NULL DEFAULT '0',
  `ff_topics` INT(11) NOT NULL DEFAULT '0',
  `ff_lp_time` INT(11) NOT NULL DEFAULT '0',
  `ff_lp_poster_id` INT(11) NOT NULL DEFAULT '0',
  `ff_lp_poster_name` TEXT NOT NULL,
  `ff_lp_t_id` INT(11) NOT NULL DEFAULT '0',
  `ff_lp_t_name` VARCHAR(255) NOT NULL DEFAULT '',
  `ff_auth` ENUM('public','gang','staff') NOT NULL DEFAULT 'public',
  `ff_owner` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`ff_id`)
) engine=myisam ;

--
-- Dumping data for table `forum_forums`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--CREATE TABLE IF NOT EXISTS `forum_posts` (
  `fp_id` INT(11) NOT NULL auto_increment,
  `fp_topic_id` INT(11) NOT NULL DEFAULT '0',
  `fp_forum_id` INT(11) NOT NULL DEFAULT '0',
  `fp_poster_id` INT(11) NOT NULL DEFAULT '0',
  `fp_poster_name` TEXT NOT NULL,
  `fp_time` INT(11) NOT NULL DEFAULT '0',
  `fp_subject` VARCHAR(255) NOT NULL DEFAULT '',
  `fp_text` TEXT NOT NULL DEFAULT '',
  `fp_editor_id` INT(11) NOT NULL DEFAULT '0',
  `fp_editor_name` TEXT NOT NULL,
  `fp_editor_time` INT(11) NOT NULL DEFAULT '0',
  `fp_edit_count` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`fp_id`)
) engine=myisam ;

--
-- Dumping data for table `forum_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--CREATE TABLE IF NOT EXISTS `forum_topics` (
  `ft_id` INT(11) NOT NULL auto_increment,
  `ft_forum_id` INT(11) NOT NULL DEFAULT '0',
  `ft_name` VARCHAR(150) NOT NULL DEFAULT '',
  `ft_desc` VARCHAR(255) NOT NULL DEFAULT '',
  `ft_posts` INT(11) NOT NULL DEFAULT '0',
  `ft_owner_id` INT(11) NOT NULL DEFAULT '0',
  `ft_owner_name` TEXT NOT NULL,
  `ft_start_time` INT(11) NOT NULL DEFAULT '0',
  `ft_last_id` INT(11) NOT NULL DEFAULT '0',
  `ft_last_name` TEXT NOT NULL,
  `ft_last_time` INT(11) NOT NULL DEFAULT '0',
  `ft_pinned` TINYINT(4) NOT NULL DEFAULT '0',
  `ft_locked` TINYINT(4) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`ft_id`)
) engine=myisam ;

--
-- Dumping data for table `forum_topics`
--


-- --------------------------------------------------------

--
-- Table structure for table `friendslist`
--CREATE TABLE `friendslist` (
  `fl_id` INT(11) NOT NULL auto_increment,
  `fl_adder` INT(11) NOT NULL DEFAULT '0',
  `fl_added` INT(11) NOT NULL DEFAULT '0',
  `fl_comment` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`fl_id`)
) engine=myisam ;

--
-- Dumping data for table `friendslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `gangevents`
--CREATE TABLE `gangevents` (
  `gevid` INT(11) NOT NULL auto_increment,
  `gevgang` INT(11) NOT NULL DEFAULT '0',
  `gevtime` INT(11) NOT NULL DEFAULT '0',
  `gevtext` TEXT NOT NULL,
  PRIMARY KEY  (`gevid`)
) engine=myisam ;

--
-- Dumping data for table `gangevents`
--


-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--CREATE TABLE `gangs` (
  `gangid` INT(11) NOT NULL auto_increment,
  `gangname` VARCHAR(255) NOT NULL DEFAULT '',
  `gangdesc` TEXT NOT NULL,
  `gangpref` VARCHAR(12) NOT NULL DEFAULT '',
  `gangsuff` VARCHAR(12) NOT NULL DEFAULT '',
  `gangmoney` INT(11) NOT NULL DEFAULT '0',
  `gangcrystals` INT(11) NOT NULL DEFAULT '0',
  `gangrespect` INT(11) NOT NULL DEFAULT '0',
  `gangpresident` INT(11) NOT NULL DEFAULT '0',
  `gangvicepres` INT(11) NOT NULL DEFAULT '0',
  `gangcapacity` INT(11) NOT NULL DEFAULT '0',
  `gangcrime` INT(11) NOT NULL DEFAULT '0',
  `gangchours` INT(11) NOT NULL DEFAULT '0',
  `gangament` LONGTEXT NOT NULL,
  PRIMARY KEY  (`gangid`)
) engine=myisam ;

--
-- Dumping data for table `gangs`
--


-- --------------------------------------------------------

--
-- Table structure for table `gangwars`
--CREATE TABLE `gangwars` (
  `warid` INT(11) NOT NULL auto_increment,
  `wardeclarer` INT(11) NOT NULL DEFAULT '0',
  `wardeclared` INT(11) NOT NULL DEFAULT '0',
  `wartime` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`warid`)
) engine=myisam ;

--
-- Dumping data for table `gangwars`
--


-- --------------------------------------------------------

--
-- Table structure for table `houses`
--CREATE TABLE `houses` (
  `hid` INT(11) NOT NULL auto_increment,
  `hname` VARCHAR(255) NOT NULL DEFAULT '',
  `hprice` INT(11) NOT NULL DEFAULT '0',
  `hwill` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`hid`)
) engine=myisam ;

--
-- Dumping data for table `houses`
--INSERT INTO `houses` (`hid`, `hname`, `hprice`, `hwill`) VALUES
(1, 'Default House', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `imarketaddlogs`
--CREATE TABLE `imarketaddlogs` (
  `imaid` INT(11) NOT NULL auto_increment,
  `imaitem` INT(11) NOT NULL DEFAULT '0',
  `imaprice` INT(11) NOT NULL DEFAULT '0',
  `imainvid` INT(11) NOT NULL DEFAULT '0',
  `imaadder` INT(11) NOT NULL DEFAULT '0',
  `imatime` INT(11) NOT NULL DEFAULT '0',
  `imacontent` TEXT NOT NULL,
  PRIMARY KEY  (`imaid`)
) engine=myisam ;

--
-- Dumping data for table `imarketaddlogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `imbuylogs`
--CREATE TABLE `imbuylogs` (
  `imbid` INT(11) NOT NULL auto_increment,
  `imbitem` INT(11) NOT NULL DEFAULT '0',
  `imbadder` INT(11) NOT NULL DEFAULT '0',
  `imbbuyer` INT(11) NOT NULL DEFAULT '0',
  `imbprice` INT(11) NOT NULL DEFAULT '0',
  `imbimid` INT(11) NOT NULL DEFAULT '0',
  `imbinvid` INT(11) NOT NULL DEFAULT '0',
  `imbtime` INT(11) NOT NULL DEFAULT '0',
  `imbcontent` TEXT NOT NULL,
  PRIMARY KEY  (`imbid`)
) engine=myisam ;

--
-- Dumping data for table `imbuylogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `imremovelogs`
--CREATE TABLE `imremovelogs` (
  `imrid` INT(11) NOT NULL auto_increment,
  `imritem` INT(11) NOT NULL DEFAULT '0',
  `imradder` INT(11) NOT NULL DEFAULT '0',
  `imrremover` INT(11) NOT NULL DEFAULT '0',
  `imrimid` INT(11) NOT NULL DEFAULT '0',
  `imrinvid` INT(11) NOT NULL DEFAULT '0',
  `imrtime` INT(11) NOT NULL DEFAULT '0',
  `imrcontent` TEXT NOT NULL,
  PRIMARY KEY  (`imrid`)
) engine=myisam ;

--
-- Dumping data for table `imremovelogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--CREATE TABLE `inventory` (
  `inv_id` INT(11) NOT NULL auto_increment,
  `inv_itemid` INT(11) NOT NULL DEFAULT '0',
  `inv_userid` INT(11) NOT NULL DEFAULT '0',
  `inv_qty` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`inv_id`)
) engine=myisam ;

--
-- Dumping data for table `inventory`
--


-- --------------------------------------------------------

--
-- Table structure for table `itembuylogs`
--CREATE TABLE `itembuylogs` (
  `ibid` INT(11) NOT NULL auto_increment,
  `ibuser` INT(11) NOT NULL DEFAULT '0',
  `ibitem` INT(11) NOT NULL DEFAULT '0',
  `ibtotalprice` INT(11) NOT NULL DEFAULT '0',
  `ibqty` INT(11) NOT NULL DEFAULT '0',
  `ibtime` INT(11) NOT NULL DEFAULT '0',
  `ibcontent` TEXT NOT NULL,
  PRIMARY KEY  (`ibid`)
) engine=myisam ;

--
-- Dumping data for table `itembuylogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `itemmarket`
--CREATE TABLE `itemmarket` (
  `imid` INT(11) NOT NULL auto_increment,
  `imitem` INT(11) NOT NULL DEFAULT '0',
  `imadder` INT(11) NOT NULL DEFAULT '0',
  `imprice` INT(11) NOT NULL DEFAULT '0',
  `imcurrency` ENUM('money','crystals') NOT NULL DEFAULT 'money',
  `imqty` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`imid`)
) engine=myisam ;

--
-- Dumping data for table `itemmarket`
--


-- --------------------------------------------------------

--
-- Table structure for table `items`
--CREATE TABLE `items` (
  `itmid` INT(11) NOT NULL auto_increment,
  `itmtype` INT(11) NOT NULL DEFAULT '0',
  `itmname` VARCHAR(255) NOT NULL DEFAULT '',
  `itmdesc` TEXT NOT NULL,
  `itmbuyprice` INT(11) NOT NULL DEFAULT '0',
  `itmsellprice` INT(11) NOT NULL DEFAULT '0',
  `itmbuyable` INT(11) NOT NULL DEFAULT '0',
  `effect1_on` TINYINT(4) NOT NULL DEFAULT '0',
  `effect1` TEXT NOT NULL,
  `effect2_on` TINYINT(4) NOT NULL DEFAULT '0',
  `effect2` TEXT NOT NULL,
  `effect3_on` TINYINT(4) NOT NULL DEFAULT '0',
  `effect3` TEXT NOT NULL,
  `weapon` INT(11) NOT NULL DEFAULT '0',
  `armor` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`itmid`)
) engine=myisam ;

--
-- Dumping data for table `items`
--


-- --------------------------------------------------------

--
-- Table structure for table `itemselllogs`
--CREATE TABLE `itemselllogs` (
  `isid` INT(11) NOT NULL auto_increment,
  `isuser` INT(11) NOT NULL DEFAULT '0',
  `isitem` INT(11) NOT NULL DEFAULT '0',
  `istotalprice` INT(11) NOT NULL DEFAULT '0',
  `isqty` INT(11) NOT NULL DEFAULT '0',
  `istime` INT(11) NOT NULL DEFAULT '0',
  `iscontent` TEXT NOT NULL,
  PRIMARY KEY  (`isid`)
) engine=myisam ;

--
-- Dumping data for table `itemselllogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `itemtypes`
--CREATE TABLE `itemtypes` (
  `itmtypeid` INT(11) NOT NULL auto_increment,
  `itmtypename` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`itmtypeid`)
) engine=myisam ;

--
-- Dumping data for table `itemtypes`
--


-- --------------------------------------------------------

--
-- Table structure for table `itemxferlogs`
--CREATE TABLE `itemxferlogs` (
  `ixid` INT(11) NOT NULL auto_increment,
  `ixfrom` INT(11) NOT NULL DEFAULT '0',
  `ixto` INT(11) NOT NULL DEFAULT '0',
  `ixitem` INT(11) NOT NULL DEFAULT '0',
  `ixqty` INT(11) NOT NULL DEFAULT '0',
  `ixtime` INT(11) NOT NULL DEFAULT '0',
  `ixfromip` VARCHAR(255) NOT NULL DEFAULT '',
  `ixtoip` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`ixid`)
) engine=myisam ;

--
-- Dumping data for table `itemxferlogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `jaillogs`
--CREATE TABLE `jaillogs` (
  `jaid` INT(11) NOT NULL auto_increment,
  `jajailer` INT(11) NOT NULL DEFAULT '0',
  `jajailed` INT(11) NOT NULL DEFAULT '0',
  `jadays` INT(11) NOT NULL DEFAULT '0',
  `jareason` LONGTEXT NOT NULL,
  `jatime` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`jaid`)
) engine=myisam ;

--
-- Dumping data for table `jaillogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `jobranks`
--CREATE TABLE `jobranks` (
  `jrid` INT(11) NOT NULL auto_increment,
  `jrname` VARCHAR(255) NOT NULL DEFAULT '',
  `jrjob` INT(11) NOT NULL DEFAULT '0',
  `jrpay` INT(11) NOT NULL DEFAULT '0',
  `jriqg` INT(11) NOT NULL DEFAULT '0',
  `jrlabourg` INT(11) NOT NULL DEFAULT '0',
  `jrstrg` INT(11) NOT NULL DEFAULT '0',
  `jriqn` INT(11) NOT NULL DEFAULT '0',
  `jrlabourn` INT(11) NOT NULL DEFAULT '0',
  `jrstrn` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`jrid`)
) engine=myisam ;

--
-- Dumping data for table `jobranks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--CREATE TABLE `jobs` (
  `jid` INT(11) NOT NULL auto_increment,
  `jname` VARCHAR(255) NOT NULL DEFAULT '',
  `jfirst` INT(11) NOT NULL DEFAULT '0',
  `jdesc` VARCHAR(255) NOT NULL DEFAULT '',
  `jowner` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`jid`)
) engine=myisam ;

--
-- Dumping data for table `jobs`
--


-- --------------------------------------------------------

--
-- Table structure for table `mail`
--CREATE TABLE `mail` (
  `mail_id` INT(11) NOT NULL auto_increment,
  `mail_read` INT(11) NOT NULL DEFAULT '0',
  `mail_from` INT(11) NOT NULL DEFAULT '0',
  `mail_to` INT(11) NOT NULL DEFAULT '0',
  `mail_time` INT(11) NOT NULL DEFAULT '0',
  `mail_subject` VARCHAR(255) NOT NULL DEFAULT '',
  `mail_text` TEXT NOT NULL,
  PRIMARY KEY  (`mail_id`)
) engine=myisam ;

--
-- Dumping data for table `mail`
--


-- --------------------------------------------------------

--
-- Table structure for table `oclogs`
--CREATE TABLE `oclogs` (
  `oclid` INT(11) NOT NULL auto_increment,
  `ocloc` INT(11) NOT NULL DEFAULT '0',
  `oclgang` INT(11) NOT NULL DEFAULT '0',
  `ocllog` TEXT NOT NULL,
  `oclresult` ENUM('success','failure') NOT NULL DEFAULT 'success',
  `oclmoney` INT(11) NOT NULL DEFAULT '0',
  `occrimen` VARCHAR(255) NOT NULL DEFAULT '',
  `octime` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`oclid`)
) engine=myisam ;

--
-- Dumping data for table `oclogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `orgcrimes`
--CREATE TABLE `orgcrimes` (
  `ocid` INT(11) NOT NULL auto_increment,
  `ocname` VARCHAR(255) NOT NULL DEFAULT '',
  `ocusers` INT(11) NOT NULL DEFAULT '0',
  `ocstarttext` TEXT NOT NULL,
  `ocsucctext` TEXT NOT NULL,
  `ocfailtext` TEXT NOT NULL,
  `ocminmoney` INT(11) NOT NULL DEFAULT '0',
  `ocmaxmoney` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`ocid`)
) engine=myisam ;

--
-- Dumping data for table `orgcrimes`
--


-- --------------------------------------------------------

--
-- Table structure for table `papercontent`
--CREATE TABLE `papercontent` (
  `content` LONGTEXT NOT NULL
) engine=myisam ;INSERT INTO `papercontent` VALUES('Here you can put game news, or prehaps an update log.');


-- --------------------------------------------------------

--
-- Table structure for table `polls`
--CREATE TABLE `polls` (
  `id` INT(11) NOT NULL auto_increment,
  `active` ENUM('0','1') NOT NULL DEFAULT '0',
  `question` VARCHAR(255) NOT NULL DEFAULT '',
  `choice1` VARCHAR(255) NOT NULL DEFAULT '',
  `choice2` VARCHAR(255) NOT NULL DEFAULT '',
  `choice3` VARCHAR(255) NOT NULL DEFAULT '',
  `choice4` VARCHAR(255) NOT NULL DEFAULT '',
  `choice5` VARCHAR(255) NOT NULL DEFAULT '',
  `choice6` VARCHAR(255) NOT NULL DEFAULT '',
  `choice7` VARCHAR(255) NOT NULL DEFAULT '',
  `choice8` VARCHAR(255) NOT NULL DEFAULT '',
  `choice9` VARCHAR(255) NOT NULL DEFAULT '',
  `choice10` VARCHAR(255) NOT NULL DEFAULT '',
  `voted1` INT(11) NOT NULL DEFAULT '0',
  `voted2` INT(11) NOT NULL DEFAULT '0',
  `voted3` INT(11) NOT NULL DEFAULT '0',
  `voted4` INT(11) NOT NULL DEFAULT '0',
  `voted5` INT(11) NOT NULL DEFAULT '0',
  `voted6` INT(11) NOT NULL DEFAULT '0',
  `voted7` INT(11) NOT NULL DEFAULT '0',
  `voted8` INT(11) NOT NULL DEFAULT '0',
  `voted9` INT(11) NOT NULL DEFAULT '0',
  `voted10` INT(11) NOT NULL DEFAULT '0',
  `votes` INT(11) NOT NULL DEFAULT '0',
  `winner` INT(11) NOT NULL DEFAULT '0',
  `hidden` TINYINT(4) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`id`)
) engine=myisam ;

--
-- Dumping data for table `polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `preports`
--CREATE TABLE `preports` (
  `prid` INT(11) NOT NULL auto_increment,
  `prreporter` INT(11) NOT NULL DEFAULT '0',
  `prreported` INT(11) NOT NULL DEFAULT '0',
  `prtext` LONGTEXT NOT NULL,
  PRIMARY KEY  (`prid`)
) engine=myisam ;

--
-- Dumping data for table `preports`
--


-- --------------------------------------------------------

--
-- Table structure for table `referals`
--CREATE TABLE `referals` (
  `refid` INT(11) NOT NULL auto_increment,
  `refrefer` INT(11) NOT NULL DEFAULT '0',
  `refrefed` INT(11) NOT NULL DEFAULT '0',
  `reftime` INT(11) NOT NULL DEFAULT '0',
  `refreferip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  `refrefedip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
  PRIMARY KEY  (`refid`)
) engine=myisam ;

--
-- Dumping data for table `referals`
--


-- --------------------------------------------------------

--
-- Table structure for table `settings`
--CREATE TABLE `settings` (
  `conf_id` INT(11) NOT NULL auto_increment,
  `conf_name` VARCHAR(255) NOT NULL DEFAULT '',
  `conf_value` TEXT NOT NULL,
  PRIMARY KEY  (`conf_id`)
) engine=myisam ;INSERT INTO `settings` VALUES (NULL, 'validate_period', '15');INSERT INTO `settings` VALUES (NULL, 'validate_on', '0');INSERT INTO `settings` VALUES (NULL, 'regcap_on', '0');INSERT INTO `settings` VALUES (NULL, 'hospital_count', '0');INSERT INTO `settings` VALUES (NULL, 'jail_count', '0');INSERT INTO `settings` VALUES (NULL, 'sendcrys_on', '1');INSERT INTO `settings` VALUES (NULL, 'sendbank_on', '1');INSERT INTO `settings` VALUES (NULL, 'ct_refillprice', '12');INSERT INTO `settings` VALUES (NULL, 'ct_iqpercrys', '5');INSERT INTO `settings` VALUES (NULL, 'ct_moneypercrys', '200');INSERT INTO `settings` VALUES (NULL, 'staff_pad', 'Here you can store notes for all staff to see.');INSERT INTO `settings` VALUES (NULL, 'willp_item', '0');INSERT INTO `settings` VALUES (NULL, 'jquery_location', 'js/jquery-1.7.1.min.js');


-- --------------------------------------------------------

--
-- Table structure for table `shopitems`
--CREATE TABLE `shopitems` (
  `sitemid` INT(11) NOT NULL auto_increment,
  `sitemshop` INT(11) NOT NULL DEFAULT '0',
  `sitemitemid` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`sitemid`)
) engine=myisam ;

--
-- Dumping data for table `shopitems`
--


-- --------------------------------------------------------

--
-- Table structure for table `shops`
--CREATE TABLE `shops` (
  `shopid` INT(11) NOT NULL auto_increment,
  `shoplocation` INT(11) NOT NULL DEFAULT '0',
  `shopname` VARCHAR(255) NOT NULL DEFAULT '',
  `shopdescription` TEXT NOT NULL,
  PRIMARY KEY  (`shopid`)
) engine=myisam ;

--
-- Dumping data for table `shops`
--


-- --------------------------------------------------------

--
-- Table structure for table `stafflog`
--CREATE TABLE `stafflog` (
  `id` INT(11) NOT NULL auto_increment,
  `user` INT(11) NOT NULL DEFAULT '0',
  `time` INT(11) NOT NULL DEFAULT '0',
  `action` VARCHAR(255) NOT NULL DEFAULT '',
  `ip` VARCHAR(15) NOT NULL DEFAULT '',
  PRIMARY KEY  (`id`)
) engine=myisam ;

--
-- Dumping data for table `stafflog`
--


-- --------------------------------------------------------

--
-- Table structure for table `staffnotelogs`
--CREATE TABLE `staffnotelogs` (
  `snid` INT(11) NOT NULL auto_increment,
  `snchanger` INT(11) NOT NULL DEFAULT '0',
  `snchanged` INT(11) NOT NULL DEFAULT '0',
  `sntime` INT(11) NOT NULL DEFAULT '0',
  `snold` LONGTEXT NOT NULL,
  `snnew` LONGTEXT NOT NULL,
  PRIMARY KEY  (`snid`)
) engine=myisam ;

--
-- Dumping data for table `staffnotelogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `surrenders`
--CREATE TABLE `surrenders` (
  `surid` INT(11) NOT NULL auto_increment,
  `surwar` INT(11) NOT NULL DEFAULT '0',
  `surwho` INT(11) NOT NULL DEFAULT '0',
  `surto` INT(11) NOT NULL DEFAULT '0',
  `surmsg` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`surid`)
) engine=myisam ;

--
-- Dumping data for table `surrenders`
--


-- --------------------------------------------------------

--
-- Table structure for table `unjaillogs`
--CREATE TABLE `unjaillogs` (
  `ujaid` INT(11) NOT NULL auto_increment,
  `ujajailer` INT(11) NOT NULL DEFAULT '0',
  `ujajailed` INT(11) NOT NULL DEFAULT '0',
  `ujatime` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY  (`ujaid`)
) engine=myisam ;

--
-- Dumping data for table `unjaillogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--CREATE TABLE IF NOT EXISTS `users` (
  `userid` INT(11) NOT NULL auto_increment,
  `username` VARCHAR(255) NOT NULL DEFAULT '',
  `userpass` VARCHAR(255) NOT NULL DEFAULT '',
  `level` INT(11) NOT NULL DEFAULT '0',
  `exp` DECIMAL(11,4) NOT NULL DEFAULT '0.0000',
  `money` INT(11) NOT NULL DEFAULT '0',
  `crystals` INT(11) NOT NULL DEFAULT '0',
  `laston` INT(11) NOT NULL DEFAULT '0',
  `lastip` VARCHAR(255) NOT NULL DEFAULT '',
  `job` INT(11) NOT NULL DEFAULT '0',
  `energy` INT(11) NOT NULL DEFAULT '0',
  `will` INT(11) NOT NULL DEFAULT '0',
  `maxwill` INT(11) NOT NULL DEFAULT '0',
  `brave` INT(11) NOT NULL DEFAULT '0',
  `maxbrave` INT(11) NOT NULL DEFAULT '0',
  `maxenergy` INT(11) NOT NULL DEFAULT '0',
  `hp` INT(11) NOT NULL DEFAULT '0',
  `maxhp` INT(11) NOT NULL DEFAULT '0',
  `lastrest_life` INT(11) NOT NULL DEFAULT '0',
  `lastrest_other` INT(11) NOT NULL DEFAULT '0',
  `location` INT(11) NOT NULL DEFAULT '0',
  `hospital` INT(11) NOT NULL DEFAULT '0',
  `jail` INT(11) NOT NULL DEFAULT '0',
  `jail_reason` VARCHAR(255) NOT NULL DEFAULT '',
  `fedjail` INT(11) NOT NULL DEFAULT '0',
  `user_level` INT(11) NOT NULL DEFAULT '1',
  `gender` ENUM('Male','Female') NOT NULL DEFAULT 'Male',
  `daysold` INT(11) NOT NULL DEFAULT '0',
  `signedup` INT(11) NOT NULL DEFAULT '0',
  `gang` INT(11) NOT NULL DEFAULT '0',
  `daysingang` INT(11) NOT NULL DEFAULT '0',
  `course` INT(11) NOT NULL DEFAULT '0',
  `cdays` INT(11) NOT NULL DEFAULT '0',
  `jobrank` INT(11) NOT NULL DEFAULT '0',
  `donatordays` INT(11) NOT NULL DEFAULT '0',
  `email` VARCHAR(255) NOT NULL DEFAULT '',
  `login_name` VARCHAR(255) NOT NULL DEFAULT '',
  `display_pic` TEXT NOT NULL,
  `duties` VARCHAR(255) NOT NULL DEFAULT 'N/A',
  `bankmoney` INT(11) NOT NULL DEFAULT '0',
  `cybermoney` INT(11) NOT NULL DEFAULT '-1',
  `staffnotes` LONGTEXT NOT NULL,
  `mailban` INT(11) NOT NULL DEFAULT '0',
  `mb_reason` VARCHAR(255) NOT NULL DEFAULT '',
  `hospreason` VARCHAR(255) NOT NULL DEFAULT '',
  `lastip_login` VARCHAR(255) NOT NULL DEFAULT '127.0.0.1',
  `lastip_signup` VARCHAR(255) NOT NULL DEFAULT '127.0.0.1',
  `last_login` INT(11) NOT NULL DEFAULT '0',
  `voted` TEXT NOT NULL,
  `crimexp` INT(11) NOT NULL DEFAULT '0',
  `attacking` INT(11) NOT NULL DEFAULT '0',
  `verified` INT(11) NOT NULL DEFAULT '0',
  `forumban` INT(11) NOT NULL DEFAULT '0',
  `fb_reason` VARCHAR(255) NOT NULL DEFAULT '',
  `posts` INT(11) NOT NULL DEFAULT '0',
  `forums_avatar` VARCHAR(255) NOT NULL DEFAULT '',
  `forums_signature` VARCHAR(250) NOT NULL DEFAULT '',
  `new_events` INT(11) NOT NULL DEFAULT '0',
  `new_mail` INT(11) NOT NULL DEFAULT '0',
  `friend_count` INT(11) NOT NULL DEFAULT '0',
  `enemy_count` INT(11) NOT NULL DEFAULT '0',
  `new_announcements` INT(11) NOT NULL DEFAULT '0',
  `boxes_opened` INT(11) NOT NULL DEFAULT '0',
  `user_notepad` TEXT NOT NULL,
  `equip_primary` INT(11) NOT NULL DEFAULT '0',
  `equip_secondary` INT(11) NOT NULL DEFAULT '0',
  `equip_armor` INT(11) NOT NULL DEFAULT '0',
  `force_logout` TINYINT(4) NOT NULL DEFAULT '0',
  `pass_salt` VARCHAR(8) NOT NULL DEFAULT '',
  PRIMARY KEY  (`userid`)
) engine=myisam ;
--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `userstats`
--CREATE TABLE `userstats` (
  `userid` INT(11) NOT NULL DEFAULT '0',
  `strength` FLOAT NOT NULL DEFAULT '0',
  `agility` FLOAT NOT NULL DEFAULT '0',
  `guard` FLOAT NOT NULL DEFAULT '0',
  `labour` FLOAT NOT NULL DEFAULT '0',
  `iq` FLOAT NOT NULL DEFAULT '0',
  PRIMARY KEY  (`userid`)
) engine=myisam ;

--
-- Dumping data for table `userstats`
--


-- --------------------------------------------------------

--
-- Table structure for table `votes`
--CREATE TABLE `votes` (
  `userid` INT(11) NOT NULL DEFAULT '0',
  `list` VARCHAR(255) NOT NULL DEFAULT ''
) engine=myisam ;

--
-- Dumping data for table `votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `willps_accepted`
--CREATE TABLE `willps_accepted` (
  `dpid` INT(11) NOT NULL auto_increment,
  `dpbuyer` INT(11) NOT NULL DEFAULT '0',
  `dpfor` INT(11) NOT NULL DEFAULT '0',
  `dpamnt` VARCHAR(255) NOT NULL DEFAULT '',
  `dptime` INT(11) NOT NULL DEFAULT '0',
  `dptxn` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`dpid`)
) engine=myisam ;

--
-- Dumping data for table `willps_accepted`
--
