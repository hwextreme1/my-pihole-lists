PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS 'domainlist_by_group';
DROP TABLE IF EXISTS 'group';
DROP TABLE IF EXISTS 'domainlist';
DROP TABLE IF EXISTS 'adlist';
CREATE TABLE IF NOT EXISTS "group"
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    name TEXT UNIQUE NOT NULL,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    description TEXT
);
INSERT INTO "group" VALUES(0,1,'Default',1703273898,1703273898,'The default group');
CREATE TABLE domainlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type INTEGER NOT NULL DEFAULT 0,
    domain TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    UNIQUE(domain, type)
);
INSERT INTO domainlist VALUES(1,3,'(\.|^)wechat\.com$',1,1737991209,1737991209,NULL);
INSERT INTO domainlist VALUES(2,3,'(\.|^)wx\.qq\.com$',1,1737991209,1737991209,NULL);
INSERT INTO domainlist VALUES(3,3,'(\.|^)weixin\.qq\.com$',1,1737991209,1737991209,NULL);
INSERT INTO domainlist VALUES(4,3,'(\.|^)weixin\.qq\.com\.cn$',1,1737991209,1737991209,NULL);
INSERT INTO domainlist VALUES(5,3,'(\.|^)weixinbridge\.com$',1,1737991209,1737991209,NULL);
INSERT INTO domainlist VALUES(6,3,'(\.|^)weibo\.com$',1,1737991212,1737991212,NULL);
INSERT INTO domainlist VALUES(7,3,'(\.|^)weibo\.cn$',1,1737991212,1737991212,NULL);
INSERT INTO domainlist VALUES(8,3,'(\.|^)wcdn\.cn$',1,1737991212,1737991212,NULL);
INSERT INTO domainlist VALUES(9,3,'(\.|^)weibo\.com\.cn$',1,1737991212,1737991212,NULL);
INSERT INTO domainlist VALUES(10,3,'(\.|^)weibocdn\.com$',1,1737991212,1737991212,NULL);
INSERT INTO domainlist VALUES(11,3,'(\.|^)betway\.be$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(12,3,'(\.|^)betway\.bet\.ar$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(13,3,'(\.|^)betway\.co\.za$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(14,3,'(\.|^)betway\.com\.gh$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(15,3,'(\.|^)betway\.com\.ng$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(16,3,'(\.|^)betway\.com$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(17,3,'(\.|^)betway\.de$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(18,3,'(\.|^)betway\.es$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(19,3,'(\.|^)betway\.fr$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(20,3,'(\.|^)betway\.it$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(21,3,'(\.|^)betway\.mx$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(22,3,'(\.|^)betway\.pl$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(23,3,'(\.|^)betway\.se$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(24,3,'(\.|^)betwaygroup\.com$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(25,3,'(\.|^)betwaysatta\.com$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(26,3,'(\.|^)vietnambetway88\.com$',1,1738147152,1738147152,NULL);
INSERT INTO domainlist VALUES(27,3,'(\.|^)betfair\.com\.au$',1,1738147154,1738147154,NULL);
INSERT INTO domainlist VALUES(28,3,'(\.|^)betfair\.com$',1,1738147154,1738147154,NULL);
INSERT INTO domainlist VALUES(29,3,'(\.|^)betfair\.es$',1,1738147154,1738147154,NULL);
INSERT INTO domainlist VALUES(30,3,'(\.|^)betfair\.it$',1,1738147154,1738147154,NULL);
INSERT INTO domainlist VALUES(31,3,'(\.|^)betfair\.ro$',1,1738147154,1738147154,NULL);
INSERT INTO domainlist VALUES(32,3,'(\.|^)betfair\.se$',1,1738147154,1738147154,NULL);
INSERT INTO domainlist VALUES(33,3,'(\.|^)betano\.bg$',1,1738147155,1738147155,NULL);
INSERT INTO domainlist VALUES(34,3,'(\.|^)betano\.ca$',1,1738147155,1738147155,NULL);
INSERT INTO domainlist VALUES(35,3,'(\.|^)betano\.com$',1,1738147155,1738147155,NULL);
INSERT INTO domainlist VALUES(36,3,'(\.|^)betano\.cz$',1,1738147156,1738147156,NULL);
INSERT INTO domainlist VALUES(37,3,'(\.|^)betano\.de$',1,1738147156,1738147156,NULL);
INSERT INTO domainlist VALUES(38,3,'(\.|^)betano\.ng$',1,1738147156,1738147156,NULL);
INSERT INTO domainlist VALUES(39,3,'(\.|^)betano\.pt$',1,1738147156,1738147156,NULL);
INSERT INTO domainlist VALUES(40,3,'(\.|^)imgsmail\.ru$',1,1738147171,1738147171,NULL);
INSERT INTO domainlist VALUES(41,3,'(\.|^)mail\.ru$',1,1738147171,1738147171,NULL);
INSERT INTO domainlist VALUES(42,3,'(\.|^)mycdn\.me$',1,1738147172,1738147172,NULL);
INSERT INTO domainlist VALUES(43,3,'(\.|^)ok\.ru$',1,1738147177,1738147177,NULL);
INSERT INTO domainlist VALUES(44,2,'(\.|^)homedomain\.lan$',1,1738350712,1738350712,NULL);
CREATE TABLE adlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address TEXT UNIQUE NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    date_updated INTEGER,
    number INTEGER NOT NULL DEFAULT 0,
    invalid_domains INTEGER NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT 0
);
INSERT INTO adlist VALUES(2,'https://github.com/easylist/easylist/blob/master/easylist/easylist_adservers.txt',1,1738183420,1738183420,'easylist adservers',1739619681,0,1392,1);
INSERT INTO adlist VALUES(4,'https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts',1,1738183866,1738183866,NULL,1739619682,126262,1,1);
INSERT INTO adlist VALUES(5,'https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt',1,1738184758,1738184758,'windows spylists',1739619682,347,0,2);
INSERT INTO adlist VALUES(6,'https://adguardteam.github.io/HostlistsRegistry/assets/filter_9.txt',1,1738184867,1738184867,'The Big List of Hacked Malware Web Sites',1739619683,13467,1,2);
INSERT INTO adlist VALUES(7,'https://v.firebog.net/hosts/Easyprivacy.txt',1,1738186530,1738186530,NULL,1739619683,41448,0,1);
INSERT INTO adlist VALUES(8,'https://lists.cyberhost.uk/malware.txt',1,1738186720,1738186720,NULL,1739619684,10814,36,2);
CREATE TABLE domainlist_by_group
(
    domainlist_id INTEGER NOT NULL REFERENCES domainlist (id),
    group_id INTEGER NOT NULL REFERENCES "group" (id),
    PRIMARY KEY (domainlist_id, group_id)
);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(1,1,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(2,2,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(3,3,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(4,4,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(5,5,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(6,6,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(7,7,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(8,8,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(9,9,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(10,10,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(11,11,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(12,12,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(13,13,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(14,14,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(15,15,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(16,16,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(17,17,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(18,18,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(19,19,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(20,20,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(21,21,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(22,22,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(23,23,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(24,24,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(25,25,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(26,26,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(27,27,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(28,28,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(29,29,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(30,30,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(31,31,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(32,32,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(33,33,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(34,34,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(35,35,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(36,36,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(37,37,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(38,38,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(39,39,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(40,40,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(41,41,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(42,42,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(43,43,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(44,44,0);
COMMIT;
