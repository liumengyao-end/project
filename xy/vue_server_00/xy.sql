SET NAMES UTF8;
DROP DATABASE IF EXISTS xy;
CREATE DATABASE xy CHARSET=UTF8;
USE xy;
/*用户登录*/
CREATE TABLE user_login(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  uphone CHAR(11), /*登录手机*/
  upwd  VARCHAR(32)
);
INSERT INTO user_login VALUES(1,'15388886666',md5('123'));
INSERT INTO user_login VALUES(2,'19977776666',md5('123'));
INSERT INTO user_login VALUES(3,'18855556666',md5('123'));
/*用户信息*/
CREATE TABLE user_info(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128), /*用户头像*/
    nickname VARCHAR(24),/*昵称*/
    uname VARCHAR(56),/*用户名 自动生成*/
    phone CHAR(11),/*手机号*/
    loginId INT,/*外键 同登录id*/
    FOREIGN KEY(loginId) REFERENCES user_login(lid)
);
INSERT INTO user_info VALUES(null,'','','tom','15388886666',1);
INSERT INTO user_info VALUES(null,'','','tom','19977776666',2);
INSERT INTO user_info VALUES(null,'','','tom','18855556666',3);
/*相寓购物车*/
CREATE TABLE cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  img_url0 VARCHAR(128),/*图片*/
  location VARCHAR(255),/*地址*/
  village VARCHAR(255),/*小区*/
  price DECIMAL(10,2),/*价格*/
  housetype VARCHAR(255),/*户型*/
  area VARCHAR(128),/*面积*/
  orient VARCHAR(128)/*朝向*/
);
/*相寓首页轮播图*/
CREATE TABLE index_carousel(
    ic_id INT PRIMARY KEY AUTO_INCREMENT,
    ic_img VARCHAR(128),
    title VARCHAR(64)
);
/*寓家风采*/
CREATE TABLE story(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(66),
    details VARCHAR(128)
);
/*相寓合租*/
CREATE TABLE rent_sharing(
   fid INT PRIMARY KEY AUTO_INCREMENT,
   price DECIMAL(10,2),/*价格*/
   img_url0 VARCHAR(128),/*图片*/
   img_url1 VARCHAR(128),
   img_url2 VARCHAR(128),
   img_url3 VARCHAR(128),
   rent_who VARCHAR(123),/*合租*/
   housetype VARCHAR(255),/*户型*/
   bedroom VARCHAR(255),/*卧室*/
   address VARCHAR(255),/*定位*/
   area VARCHAR(128),/*面积*/
   orient VARCHAR(128),/*朝向*/
   location VARCHAR(255),/*地址*/
   storey VARCHAR(255),/*楼层*/
   village VARCHAR(255)/*小区*/
);
INSERT INTO rent_sharing VALUES(null,4500,'00a67f850c984d938eb4e8665f145a28.jpg','00a44341b9b54936b8f885300846b7fc.jpg','00c9119117dd4454b8ffe1c925d5319c-1.jpg','00d37c7007cc4a8994036407d5a66555.jpg','合租','4室1厅1卫','卧室3','距离地铁西直门站905米','18','--','西城区-西直门','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,1800,'00dd6cfca14c4214ae3b3776168065a6.jpg','00e2e7570f9b4a4394845e5fa8f10ad6.jpg','00ff75402ce94469ad6d1d3ff462a169.jpg','0a6e06b7035f403aa5456f2a9609d8ea.jpg','合租','8室1厅1卫','卧室8','距离地铁成寿寺站536米','15','南','朝阳区-朝阳大悦城','低楼层/共12层','中海城-风情园');
INSERT INTO rent_sharing VALUES(null,2550,'0a26bfddb7614993aa6984a0aea44464.jpg','0a26bfddb7614993aa6984a0aea44464.jpg','0ad74638e7bd4e40954b698104dd50cd.jpg','0b7dd1259e2849868a43e63cc418b7df.jpg','合租','4室1厅1卫','次卧','距离地铁西直门站1116米','20','北','朝阳区-朝阳大悦城','中楼层/共10层','林傲家园');
INSERT INTO rent_sharing VALUES(null,2500,'0b4795ac02d743258435a8e35c67f00f.jpg','0b28153d57a341a5aaeb00e86d7ab73f.jpg','0c7ece1ca28145f28694b1a01fa24a7c.jpg','0c47f16fe7c7447597210e610c99e9d3.jpg','合租','7室1厅1卫','卧室3','距离地铁管庄站754米','15','西','朝阳区-朝阳大悦城','高楼层/共12层','世纪村');
INSERT INTO rent_sharing VALUES(null,2500,'0c762f2a627c4476807b241588b02588-1.jpg','0c2781f9655d491baa7215a7bd3fb578.jpg','0c68152a8eda4ea6bdf8eb343b6d0139.jpg','0cd634127eee47c69adda0c82036be9b-1.jpg','合租','4室1厅2卫','卧室2','距离地铁回龙观站620米','15','南','昌平区-北苑','中楼层/共6层','慧龙居');
INSERT INTO rent_sharing VALUES(null,2500,'0d8e8ec8ee684f98a044b4ddaad63bdd.jpg','0d303e7192c642c5890045727e9996a1.jpg','0d356c771e3247f38c6223adc25f544a.jpg','0e1c398b826749dbbc114a4f5c4bb6bd.jpg','合租','4室1厅1卫','小次卧1','距离地铁积水潭站614米','10','--','海淀区-西三旗','高楼层/共6层','志强小区');
INSERT INTO rent_sharing VALUES(null,2500,'0e3a6fca66474a1aa2cda121429f162e.jpg','0e4bc2bef1744c10b4a68cdfda7090fb.jpg','0e9cd0246a954817b4cec199cbb2a894.jpg','0e95d100d2014effa06eec1ef8582f3b-1.jpg','合租','5室1厅1卫','大次卧','距离地铁积水潭站614米','15','南','昌平区-北苑','高楼层/共10层','紫金新干线');
INSERT INTO rent_sharing VALUES(null,2600,'0ead90f43c1f488bb7527d739bdd10bb.jpg','0ebde2993a664def800f13937e6ebb0d-1.jpg','0ebea7ed5f5d4ace84cb853fe141cfdc.jpg','0f0de417beb44565aed2337ff966cc93-1.jpg','合租','5室1厅2卫','次卧2','距离地铁积水潭站614米','15','--','海淀区-西三旗','低楼层/共6层','观林园');
INSERT INTO rent_sharing VALUES(null,4400,'0f0e838375274e29b201a647fa7fb754.jpg','0f4d665fa5f24df5b1b90661326b0ec2.jpg','0f06b2bfef174faaaf17fb18c6f19bd4-1.jpg','0f36a2246ca44213b6dc24fcc96cae4d.jpg','合租','3室1厅1卫','主卧','距离地铁西直门站842米','20','--','西城区-西直门','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,4500,'0f80f8017fb84bfbb3503aae594a067d.jpg','0f812ea72827430cae7f03decc572036.jpg','0f586385d7e349c3acb2cb5bb897ab53.jpg','0fe66bced1bf4a6ba41d709a6793baed.jpg','合租','4室1厅1卫','卧室3','距离地铁万寿路站905米','18','--','东城区-北苑','低楼层/共16层','和平里东街');
INSERT INTO rent_sharing VALUES(null,1800,'0fe429c78efb40f8a70160fd39c7ca6b.jpg','0ffe71416fc145229f5fa8c1ecaad1d0.jpg','001e5a0340314fc091c1677ce34f105c.jpg','1a6c2c63274541c7a50e01ca95dc8420-1.jpg','合租','4室1厅1卫','次卧1','距离地铁白堆子站662米','8','--','海淀区-西三旗','低楼层/共6层','后白堆子');
INSERT INTO rent_sharing VALUES(null,1500,'1a0b0dd11e9947c4a8ef02bc31670c94.jpg','1a8ab63df6074754aae3fd4fc32e1428.jpg','1a9c565265c74af89156d7c9215728c7.jpg','1a22042b1da9480b8babfa4c45264bbe.jpg','合租','3室1厅1卫','次卧3','距离地铁西直门站1416米','18','--','大兴区-北苑','高楼层/共6层','育龙家园');
INSERT INTO rent_sharing VALUES(null,3000,'1ad56904f92347baaac847d5ec4e2b44.jpg','1aeb8705cf844a0ca1daa9e5b4e26fe2.jpg','1b97c284ce0341a7bb5aad86a73b72ab.jpg','1bc15ca58e60440c9b955efdab93e44d.jpg','合租','5室1厅1卫','次卧2','距离地铁积水潭站1395米','15','--','海淀区-西三旗','低楼层/共21层','今典花园');
INSERT INTO rent_sharing VALUES(null,1700,'1bd34049b31b49b1a848b8ad1dc44b9c-1.jpg','1be153fd628040398f1a55e2d24319b1.jpg','1beb7b3202894062a69b19309ba0aaf3.jpg','1c4e1d0eef894b51a482ff01076039c5.jpg','合租','4室1厅2卫','卧室3','距离地铁西直门站905米','15','南','昌平区-天通苑','高楼层/共6层','天通苑东一区');
INSERT INTO rent_sharing VALUES(null,4500,'00a67f850c984d938eb4e8665f145a28.jpg','00a44341b9b54936b8f885300846b7fc.jpg','00c9119117dd4454b8ffe1c925d5319c-1.jpg','00d37c7007cc4a8994036407d5a66555.jpg','合租','4室1厅1卫','卧室3','距离地铁西直门站905米','18','--','西城区-望京','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,1800,'00dd6cfca14c4214ae3b3776168065a6.jpg','00e2e7570f9b4a4394845e5fa8f10ad6.jpg','00ff75402ce94469ad6d1d3ff462a169.jpg','0a6e06b7035f403aa5456f2a9609d8ea.jpg','合租','8室1厅1卫','卧室8','距离地铁成寿寺站536米','15','南','朝阳区-朝阳大悦城','低楼层/共12层','中海城-风情园');
INSERT INTO rent_sharing VALUES(null,2550,'0a26bfddb7614993aa6984a0aea44464.jpg','0a26bfddb7614993aa6984a0aea44464.jpg','0ad74638e7bd4e40954b698104dd50cd.jpg','0b7dd1259e2849868a43e63cc418b7df.jpg','合租','4室1厅1卫','次卧','距离地铁西直门站1116米','20','北','朝阳区-奥林匹克公园','中楼层/共10层','林傲家园');
INSERT INTO rent_sharing VALUES(null,2500,'0b4795ac02d743258435a8e35c67f00f.jpg','0b28153d57a341a5aaeb00e86d7ab73f.jpg','0c7ece1ca28145f28694b1a01fa24a7c.jpg','0c47f16fe7c7447597210e610c99e9d3.jpg','合租','7室1厅1卫','卧室3','距离地铁管庄站754米','15','西','朝阳区-朝阳大悦城','高楼层/共12层','世纪村');
INSERT INTO rent_sharing VALUES(null,2500,'0c762f2a627c4476807b241588b02588-1.jpg','0c2781f9655d491baa7215a7bd3fb578.jpg','0c68152a8eda4ea6bdf8eb343b6d0139.jpg','0cd634127eee47c69adda0c82036be9b-1.jpg','合租','4室1厅2卫','卧室2','距离地铁回龙观站620米','15','南','昌平区-立水桥','中楼层/共6层','慧龙居');
INSERT INTO rent_sharing VALUES(null,2500,'0d8e8ec8ee684f98a044b4ddaad63bdd.jpg','0d303e7192c642c5890045727e9996a1.jpg','0d356c771e3247f38c6223adc25f544a.jpg','0e1c398b826749dbbc114a4f5c4bb6bd.jpg','合租','4室1厅1卫','小次卧1','距离地铁积水潭站614米','10','--','海淀区-西三旗','高楼层/共6层','志强小区');
INSERT INTO rent_sharing VALUES(null,2500,'0e3a6fca66474a1aa2cda121429f162e.jpg','0e4bc2bef1744c10b4a68cdfda7090fb.jpg','0e9cd0246a954817b4cec199cbb2a894.jpg','0e95d100d2014effa06eec1ef8582f3b-1.jpg','合租','5室1厅1卫','大次卧','距离地铁积水潭站614米','15','南','昌平区-望京','高楼层/共10层','紫金新干线');
INSERT INTO rent_sharing VALUES(null,2600,'0ead90f43c1f488bb7527d739bdd10bb.jpg','0ebde2993a664def800f13937e6ebb0d-1.jpg','0ebea7ed5f5d4ace84cb853fe141cfdc.jpg','0f0de417beb44565aed2337ff966cc93-1.jpg','合租','5室1厅2卫','次卧2','距离地铁积水潭站614米','15','--','海淀区-西三旗','低楼层/共6层','观林园');
INSERT INTO rent_sharing VALUES(null,4400,'0f0e838375274e29b201a647fa7fb754.jpg','0f4d665fa5f24df5b1b90661326b0ec2.jpg','0f06b2bfef174faaaf17fb18c6f19bd4-1.jpg','0f36a2246ca44213b6dc24fcc96cae4d.jpg','合租','3室1厅1卫','主卧','距离地铁西直门站842米','20','--','西城区-西直门','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,4500,'0f80f8017fb84bfbb3503aae594a067d.jpg','0f812ea72827430cae7f03decc572036.jpg','0f586385d7e349c3acb2cb5bb897ab53.jpg','0fe66bced1bf4a6ba41d709a6793baed.jpg','合租','4室1厅1卫','卧室3','距离地铁万寿路站905米','18','--','东城区-回龙观','低楼层/共16层','和平里东街');
INSERT INTO rent_sharing VALUES(null,1800,'0fe429c78efb40f8a70160fd39c7ca6b.jpg','0ffe71416fc145229f5fa8c1ecaad1d0.jpg','001e5a0340314fc091c1677ce34f105c.jpg','1a6c2c63274541c7a50e01ca95dc8420-1.jpg','合租','4室1厅1卫','次卧1','距离地铁白堆子站662米','8','--','海淀区-西三旗','低楼层/共6层','后白堆子');
INSERT INTO rent_sharing VALUES(null,1500,'1a0b0dd11e9947c4a8ef02bc31670c94.jpg','1a8ab63df6074754aae3fd4fc32e1428.jpg','1a9c565265c74af89156d7c9215728c7.jpg','1a22042b1da9480b8babfa4c45264bbe.jpg','合租','3室1厅1卫','次卧3','距离地铁西直门站1416米','18','--','大兴区-立水桥','高楼层/共6层','育龙家园');
INSERT INTO rent_sharing VALUES(null,3000,'1ad56904f92347baaac847d5ec4e2b44.jpg','1aeb8705cf844a0ca1daa9e5b4e26fe2.jpg','1b97c284ce0341a7bb5aad86a73b72ab.jpg','1bc15ca58e60440c9b955efdab93e44d.jpg','合租','5室1厅1卫','次卧2','距离地铁积水潭站1395米','15','--','海淀区-小西天','低楼层/共21层','今典花园');
INSERT INTO rent_sharing VALUES(null,1700,'1bd34049b31b49b1a848b8ad1dc44b9c-1.jpg','1be153fd628040398f1a55e2d24319b1.jpg','1beb7b3202894062a69b19309ba0aaf3.jpg','1c4e1d0eef894b51a482ff01076039c5.jpg','合租','4室1厅2卫','卧室3','距离地铁西直门站905米','15','南','昌平区-天通苑','高楼层/共6层','天通苑东一区');
INSERT INTO rent_sharing VALUES(null,4500,'00a67f850c984d938eb4e8665f145a28.jpg','00a44341b9b54936b8f885300846b7fc.jpg','00c9119117dd4454b8ffe1c925d5319c-1.jpg','00d37c7007cc4a8994036407d5a66555.jpg','合租','4室1厅1卫','卧室3','距离地铁西直门站905米','18','--','西城区-立水桥','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,1800,'00dd6cfca14c4214ae3b3776168065a6.jpg','00e2e7570f9b4a4394845e5fa8f10ad6.jpg','00ff75402ce94469ad6d1d3ff462a169.jpg','0a6e06b7035f403aa5456f2a9609d8ea.jpg','合租','8室1厅1卫','卧室8','距离地铁成寿寺站536米','15','南','朝阳区-朝阳大悦城','低楼层/共12层','中海城-风情园');
INSERT INTO rent_sharing VALUES(null,2550,'0a26bfddb7614993aa6984a0aea44464.jpg','0a26bfddb7614993aa6984a0aea44464.jpg','0ad74638e7bd4e40954b698104dd50cd.jpg','0b7dd1259e2849868a43e63cc418b7df.jpg','合租','4室1厅1卫','次卧','距离地铁西直门站1116米','20','北','朝阳区-CBD','中楼层/共10层','林傲家园');
INSERT INTO rent_sharing VALUES(null,2500,'0b4795ac02d743258435a8e35c67f00f.jpg','0b28153d57a341a5aaeb00e86d7ab73f.jpg','0c7ece1ca28145f28694b1a01fa24a7c.jpg','0c47f16fe7c7447597210e610c99e9d3.jpg','合租','7室1厅1卫','卧室3','距离地铁管庄站754米','15','西','朝阳区-CBD','高楼层/共12层','世纪村');
INSERT INTO rent_sharing VALUES(null,2500,'0c762f2a627c4476807b241588b02588-1.jpg','0c2781f9655d491baa7215a7bd3fb578.jpg','0c68152a8eda4ea6bdf8eb343b6d0139.jpg','0cd634127eee47c69adda0c82036be9b-1.jpg','合租','4室1厅2卫','卧室2','距离地铁回龙观站620米','15','南','昌平区-回龙观','中楼层/共6层','慧龙居');
INSERT INTO rent_sharing VALUES(null,2500,'0d8e8ec8ee684f98a044b4ddaad63bdd.jpg','0d303e7192c642c5890045727e9996a1.jpg','0d356c771e3247f38c6223adc25f544a.jpg','0e1c398b826749dbbc114a4f5c4bb6bd.jpg','合租','4室1厅1卫','小次卧1','距离地铁积水潭站614米','10','--','海淀区-西三旗','高楼层/共6层','志强小区');
INSERT INTO rent_sharing VALUES(null,2500,'0e3a6fca66474a1aa2cda121429f162e.jpg','0e4bc2bef1744c10b4a68cdfda7090fb.jpg','0e9cd0246a954817b4cec199cbb2a894.jpg','0e95d100d2014effa06eec1ef8582f3b-1.jpg','合租','5室1厅1卫','大次卧','距离地铁积水潭站614米','15','南','昌平区-霍营','高楼层/共10层','紫金新干线');
INSERT INTO rent_sharing VALUES(null,2600,'0ead90f43c1f488bb7527d739bdd10bb.jpg','0ebde2993a664def800f13937e6ebb0d-1.jpg','0ebea7ed5f5d4ace84cb853fe141cfdc.jpg','0f0de417beb44565aed2337ff966cc93-1.jpg','合租','5室1厅2卫','次卧2','距离地铁积水潭站614米','15','--','海淀区-西三旗','低楼层/共6层','观林园');
INSERT INTO rent_sharing VALUES(null,4400,'0f0e838375274e29b201a647fa7fb754.jpg','0f4d665fa5f24df5b1b90661326b0ec2.jpg','0f06b2bfef174faaaf17fb18c6f19bd4-1.jpg','0f36a2246ca44213b6dc24fcc96cae4d.jpg','合租','3室1厅1卫','主卧','距离地铁西直门站842米','20','--','西城区-西直门','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,4500,'0f80f8017fb84bfbb3503aae594a067d.jpg','0f812ea72827430cae7f03decc572036.jpg','0f586385d7e349c3acb2cb5bb897ab53.jpg','0fe66bced1bf4a6ba41d709a6793baed.jpg','合租','4室1厅1卫','卧室3','距离地铁万寿路站905米','18','--','东城区-回龙观','低楼层/共16层','和平里东街');
INSERT INTO rent_sharing VALUES(null,1800,'0fe429c78efb40f8a70160fd39c7ca6b.jpg','0ffe71416fc145229f5fa8c1ecaad1d0.jpg','001e5a0340314fc091c1677ce34f105c.jpg','1a6c2c63274541c7a50e01ca95dc8420-1.jpg','合租','4室1厅1卫','次卧1','距离地铁白堆子站662米','8','--','海淀区-西三旗','低楼层/共6层','后白堆子');
INSERT INTO rent_sharing VALUES(null,1500,'1a0b0dd11e9947c4a8ef02bc31670c94.jpg','1a8ab63df6074754aae3fd4fc32e1428.jpg','1a9c565265c74af89156d7c9215728c7.jpg','1a22042b1da9480b8babfa4c45264bbe.jpg','合租','3室1厅1卫','次卧3','距离地铁西直门站1416米','18','--','大兴区-回龙观','高楼层/共6层','育龙家园');
INSERT INTO rent_sharing VALUES(null,3000,'1ad56904f92347baaac847d5ec4e2b44.jpg','1aeb8705cf844a0ca1daa9e5b4e26fe2.jpg','1b97c284ce0341a7bb5aad86a73b72ab.jpg','1bc15ca58e60440c9b955efdab93e44d.jpg','合租','5室1厅1卫','次卧2','距离地铁积水潭站1395米','15','--','海淀区-回龙观','低楼层/共21层','今典花园');
INSERT INTO rent_sharing VALUES(null,1700,'1bd34049b31b49b1a848b8ad1dc44b9c-1.jpg','1be153fd628040398f1a55e2d24319b1.jpg','1beb7b3202894062a69b19309ba0aaf3.jpg','1c4e1d0eef894b51a482ff01076039c5.jpg','合租','4室1厅2卫','卧室3','距离地铁西直门站905米','15','南','昌平区-天通苑','高楼层/共6层','天通苑东一区');
INSERT INTO rent_sharing VALUES(null,4500,'00a67f850c984d938eb4e8665f145a28.jpg','00a44341b9b54936b8f885300846b7fc.jpg','00c9119117dd4454b8ffe1c925d5319c-1.jpg','00d37c7007cc4a8994036407d5a66555.jpg','合租','4室1厅1卫','卧室3','距离地铁西直门站905米','18','--','西城区-西直门','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,1800,'00dd6cfca14c4214ae3b3776168065a6.jpg','00e2e7570f9b4a4394845e5fa8f10ad6.jpg','00ff75402ce94469ad6d1d3ff462a169.jpg','0a6e06b7035f403aa5456f2a9609d8ea.jpg','合租','8室1厅1卫','卧室8','距离地铁成寿寺站536米','15','南','朝阳区-CBD','低楼层/共12层','中海城-风情园');
INSERT INTO rent_sharing VALUES(null,2550,'0a26bfddb7614993aa6984a0aea44464.jpg','0a26bfddb7614993aa6984a0aea44464.jpg','0ad74638e7bd4e40954b698104dd50cd.jpg','0b7dd1259e2849868a43e63cc418b7df.jpg','合租','4室1厅1卫','次卧','距离地铁西直门站1116米','20','北','朝阳区-CBD','中楼层/共10层','林傲家园');
INSERT INTO rent_sharing VALUES(null,2500,'0b4795ac02d743258435a8e35c67f00f.jpg','0b28153d57a341a5aaeb00e86d7ab73f.jpg','0c7ece1ca28145f28694b1a01fa24a7c.jpg','0c47f16fe7c7447597210e610c99e9d3.jpg','合租','7室1厅1卫','卧室3','距离地铁管庄站754米','15','西','朝阳区-CBD','高楼层/共12层','世纪村');
INSERT INTO rent_sharing VALUES(null,2500,'0c762f2a627c4476807b241588b02588-1.jpg','0c2781f9655d491baa7215a7bd3fb578.jpg','0c68152a8eda4ea6bdf8eb343b6d0139.jpg','0cd634127eee47c69adda0c82036be9b-1.jpg','合租','4室1厅2卫','卧室2','距离地铁回龙观站620米','15','南','昌平区-望京','中楼层/共6层','慧龙居');
INSERT INTO rent_sharing VALUES(null,2500,'0d8e8ec8ee684f98a044b4ddaad63bdd.jpg','0d303e7192c642c5890045727e9996a1.jpg','0d356c771e3247f38c6223adc25f544a.jpg','0e1c398b826749dbbc114a4f5c4bb6bd.jpg','合租','4室1厅1卫','小次卧1','距离地铁积水潭站614米','10','--','海淀区-回龙观','高楼层/共6层','志强小区');
INSERT INTO rent_sharing VALUES(null,2500,'0e3a6fca66474a1aa2cda121429f162e.jpg','0e4bc2bef1744c10b4a68cdfda7090fb.jpg','0e9cd0246a954817b4cec199cbb2a894.jpg','0e95d100d2014effa06eec1ef8582f3b-1.jpg','合租','5室1厅1卫','大次卧','距离地铁积水潭站614米','15','南','昌平区-望京','高楼层/共10层','紫金新干线');
INSERT INTO rent_sharing VALUES(null,2600,'0ead90f43c1f488bb7527d739bdd10bb.jpg','0ebde2993a664def800f13937e6ebb0d-1.jpg','0ebea7ed5f5d4ace84cb853fe141cfdc.jpg','0f0de417beb44565aed2337ff966cc93-1.jpg','合租','5室1厅2卫','次卧2','距离地铁积水潭站614米','15','--','海淀区-回龙观','低楼层/共6层','观林园');
INSERT INTO rent_sharing VALUES(null,4400,'0f0e838375274e29b201a647fa7fb754.jpg','0f4d665fa5f24df5b1b90661326b0ec2.jpg','0f06b2bfef174faaaf17fb18c6f19bd4-1.jpg','0f36a2246ca44213b6dc24fcc96cae4d.jpg','合租','3室1厅1卫','主卧','距离地铁西直门站842米','20','--','西城区-西直门','低楼层/共21层','西晴公寓');
INSERT INTO rent_sharing VALUES(null,4500,'0f80f8017fb84bfbb3503aae594a067d.jpg','0f812ea72827430cae7f03decc572036.jpg','0f586385d7e349c3acb2cb5bb897ab53.jpg','0fe66bced1bf4a6ba41d709a6793baed.jpg','合租','4室1厅1卫','卧室3','距离地铁万寿路站905米','18','--','东城区-望京','低楼层/共16层','和平里东街');
INSERT INTO rent_sharing VALUES(null,1800,'0fe429c78efb40f8a70160fd39c7ca6b.jpg','0ffe71416fc145229f5fa8c1ecaad1d0.jpg','001e5a0340314fc091c1677ce34f105c.jpg','1a6c2c63274541c7a50e01ca95dc8420-1.jpg','合租','4室1厅1卫','次卧1','距离地铁白堆子站662米','8','--','海淀区-天通苑','低楼层/共6层','后白堆子');
INSERT INTO rent_sharing VALUES(null,1500,'1a0b0dd11e9947c4a8ef02bc31670c94.jpg','1a8ab63df6074754aae3fd4fc32e1428.jpg','1a9c565265c74af89156d7c9215728c7.jpg','1a22042b1da9480b8babfa4c45264bbe.jpg','合租','3室1厅1卫','次卧3','距离地铁西直门站1416米','18','--','大兴区-天通苑','高楼层/共6层','育龙家园');
INSERT INTO rent_sharing VALUES(null,3000,'1ad56904f92347baaac847d5ec4e2b44.jpg','1aeb8705cf844a0ca1daa9e5b4e26fe2.jpg','1b97c284ce0341a7bb5aad86a73b72ab.jpg','1bc15ca58e60440c9b955efdab93e44d.jpg','合租','5室1厅1卫','次卧2','距离地铁积水潭站1395米','15','--','海淀区-回龙观','低楼层/共21层','今典花园');
INSERT INTO rent_sharing VALUES(null,1700,'1bd34049b31b49b1a848b8ad1dc44b9c-1.jpg','1be153fd628040398f1a55e2d24319b1.jpg','1beb7b3202894062a69b19309ba0aaf3.jpg','1c4e1d0eef894b51a482ff01076039c5.jpg','合租','4室1厅2卫','卧室3','距离地铁西直门站905米','15','南','昌平区-天通苑','高楼层/共6层','天通苑东一区');
/*房间入住情况*/
CREATE TABLE room_info(
    rid INT PRIMARY KEY AUTO_INCREMENT,
    rname VARCHAR(128),/*卧室类型*/
    img VARCHAR(128),/*卧室图片*/
    sex VARCHAR(10),/*入住性别*/
    star_sign VARCHAR(24),/*星座*/
    duration VARCHAR(12),/*入住时间*/
    area VARCHAR(128),/*面积*/
    orient VARCHAR(128)/*朝向*/
);
/*整租一居*/
CREATE TABLE whole_rent1(
   fid INT PRIMARY KEY AUTO_INCREMENT,
   price DECIMAL(10,2),/*价格*/
   img_url0 VARCHAR(128),/*图片*/
   img_url1 VARCHAR(128),
   img_url2 VARCHAR(128),
   img_url3 VARCHAR(128),
   rent_who VARCHAR(128),/*合租*/
   housetype VARCHAR(255),/*户型*/
   address VARCHAR(255),/*定位*/
   area VARCHAR(128),/*面积*/
   orient VARCHAR(128),/*朝向*/
   location VARCHAR(255),/*地址*/
   storey VARCHAR(255),/*楼层*/
   village VARCHAR(255)/*小区*/
);
INSERT INTO whole_rent1 VALUES(null,5500,'4a78e12bd76146f3acc9611eb8dd5711.jpg','4b66462cbc85428ea4a936248127a864.jpg','4ba1c419f2944d0fa011298812c5aacc-1.jpg','4df7d2adb5c2463c8a3f6a4671966337.jpg','合租','1室1厅1卫','距离地铁方庄站直线距离1176米','26','南','丰台区-宋家庄','中楼层/共6层','南方庄69号院(相寓PARK)');
INSERT INTO whole_rent1 VALUES(null,5400,'4a741d12be944e86b7639b214a16132a.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁方庄站直线距离1176米','26','北','丰台区-宋家庄','中楼层/共6层','南方庄69号院(相寓PARK)');
INSERT INTO whole_rent1 VALUES(null,6300,'10babe652f874975ba9e55b0db84ef4b.jpg','10c10a07d62142fa9f3cbe7481ea3059.jpg','12ba464905934c6abb0b668b97f2bfac.jpg','16fd0a6596c040948f5918b413e9a7ba.jpg','合租','1室1厅1卫','距离地铁百子湾站直线距离834米','70','西','朝阳区-百子湾','高楼层/共24层','沿海赛洛城四期');
INSERT INTO whole_rent1 VALUES(null,4900,'10fd1d78ceca4012aba1fae25889067a.jpg','4b66462cbc85428ea4a936248127a864.jpg','4ba1c419f2944d0fa011298812c5aacc-1.jpg','4df7d2adb5c2463c8a3f6a4671966337.jpg','合租','1室1厅1卫','距离地铁亦庄文化园站直线距离849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent1 VALUES(null,3000,'43e75de580914b6fbae3ceacdabfb213.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁果园站直线距离891米','58','北','通州区-果园','低楼层/共6层','巴克寓所');
INSERT INTO whole_rent1 VALUES(null,3000,'38f45142ff8541ba90f2c3b26a1ea7ed.jpg','10c10a07d62142fa9f3cbe7481ea3059.jpg','12ba464905934c6abb0b668b97f2bfac.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁果园站直线距离891米','58','北','通州区-果园','低楼层/共6层','巴克寓所');
INSERT INTO whole_rent1 VALUES(null,4900,'52e76597cee747578633934b58322448.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁金台夕照站直线距离715米','50','南','朝阳区-红庙','高楼层/共18层','呼家楼新街大院');
INSERT INTO whole_rent1 VALUES(null,7500,'62db1d911f95443db1b2405628188e4c.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁圆明园站直线距离1423米','45','东','海淀区-圆明园','低楼层/共14层','芙蓉里小区');
INSERT INTO whole_rent1 VALUES(null,7500,'66c1efa2b100419a97c6f0ff02a17443.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁圆明园站直线距离1423米','45','东','海淀区-圆明园','低楼层/共14层','芙蓉里小区');
INSERT INTO whole_rent1 VALUES(null,5400,'59d89e799cda4681a826438c6263e4e8.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁方庄站直线距离1176米','26','北','丰台区-宋家庄','中楼层/共6层','南方庄69号院(相寓PARK)');
INSERT INTO whole_rent1 VALUES(null,6300,'73b5ac8401e246cca6cadf34e6eabee7.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁百子湾站直线距离834米','70','西','朝阳区-百子湾','高楼层/共24层','沿海赛洛城四期');
INSERT INTO whole_rent1 VALUES(null,4900,'71b5ff370f914ac5acee1c70b6caf520.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁亦庄文化园站直线距离849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent1 VALUES(null,4900,'075d8d9f01f548e292a0ad03ff5cbe89-1.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁双井站站直线距离409米','55','北','朝阳区-双井','低楼层/共21层','时代国际');
INSERT INTO whole_rent1 VALUES(null,6300,'81a7bf0e771440c3a58492bac07a0d90.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁亦庄文化园站直线距离849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent1 VALUES(null,5800,'80c9a5863dac475f817b2556266bcb63.jpg','4a49696a15b24bf28e6cca07cb982a0d.jpg','4dcd1426317c43498ba8ab30e393c1b0-1.jpg','4e8f7c3f62e4406998e24b52dcb21629-1.jpg','合租','1室1厅1卫','距离地铁亦庄文化园站直线距离849米','79','东西','大兴区-亦庄','低楼层/共21层','中海苏黎世家');

/*整租二居*/
CREATE TABLE whole_rent2(
   fid INT PRIMARY KEY AUTO_INCREMENT,
   price DECIMAL(10,2),/*价格*/
   img_url0 VARCHAR(128),/*图片*/
   img_url1 VARCHAR(128),
   img_url2 VARCHAR(128),
   img_url3 VARCHAR(128),
   rent_who VARCHAR(128),
   housetype VARCHAR(255),/*户型*/
   address VARCHAR(255),/*定位*/
   area VARCHAR(128),/*面积*/
   orient VARCHAR(128),/*朝向*/
   location VARCHAR(255),/*地址*/
   storey VARCHAR(255),/*楼层*/
   village VARCHAR(255)/*小区*/
);
INSERT INTO whole_rent2 VALUES(null,8000,'','','','','合租','2室1厅1卫','距离地铁四惠东站1276米','81','南北','朝阳区-百子湾','中楼层/共6层','百子湾家园C区');
INSERT INTO whole_rent2 VALUES(null,5550,'','','','','合租','2室1厅1卫','距离地铁立水桥站1176米','63','东','昌平区-立水桥','高楼层/共6层','佳运园一期');
INSERT INTO whole_rent2 VALUES(null,3960,'','','','','合租','2室1厅1卫','距离地铁旧宫站834米','37','东','大兴区','低楼层/共5层','宣颐家园');
INSERT INTO whole_rent2 VALUES(null,4900,'','','','','合租','2室1厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent2 VALUES(null,6200,'','','','','合租','2室1厅1卫','距离地铁果园站891米','58','北','通州区-果园','低楼层/共6层','巴克寓所');
INSERT INTO whole_rent2 VALUES(null,5800,'','','','','合租','2室1厅1卫','距离地铁马坡站891米','70','南北','顺义区-马坡','低楼层/共6层','马坡花园一区');
INSERT INTO whole_rent2 VALUES(null,4900,'','','','','合租','2室1厅1卫','距离地铁金台夕照站715米','50','南','朝阳区-红庙','高楼层/共18层','呼家楼新街大院');
INSERT INTO whole_rent2 VALUES(null,7500,'','','','','合租','2室1厅1卫','距离地铁圆明园站1423米','69','东','海淀区-圆明园','低楼层/共14层','青年湖东里');
INSERT INTO whole_rent2 VALUES(null,7500,'','','','','合租','2室1厅1卫','距离地铁圆明园站1423米','45','东','海淀区-圆明园','低楼层/共14层','芙蓉里小区');
INSERT INTO whole_rent2 VALUES(null,5400,'','','','','合租','2室1厅1卫','距离地铁方庄站1176米','67','北','丰台区-宋家庄','中楼层/共6层','德茂小区');
INSERT INTO whole_rent2 VALUES(null,6300,'','','','','合租','2室1厅1卫','距离地铁百子湾站834米','70','西','朝阳区-百子湾','高楼层/共24层','沿海赛洛城四期');
INSERT INTO whole_rent2 VALUES(null,4900,'','','','','合租','2室1厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent2 VALUES(null,8900,'','','','','合租','2室1厅1卫','距离地铁双井站站409米','95','北','朝阳区-双井','低楼层/共21层','时代国际');
INSERT INTO whole_rent2 VALUES(null,6300,'','','','','合租','2室1厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent2 VALUES(null,5800,'','','','','合租','2室1厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','中海苏黎世家');

/*整租三居*/
CREATE TABLE whole_rent3(
   fid INT PRIMARY KEY AUTO_INCREMENT,
   price DECIMAL(10,2),/*价格*/
   img_url0 VARCHAR(128),/*图片*/
   img_url1 VARCHAR(128),
   img_url2 VARCHAR(128),
   img_url3 VARCHAR(128),
   rent_who VARCHAR(128),
   housetype VARCHAR(255),/*户型*/
   address VARCHAR(255),/*定位*/
   area VARCHAR(128),/*面积*/
   orient VARCHAR(128),/*朝向*/
   location VARCHAR(255),/*地址*/
   storey VARCHAR(255),/*楼层*/
   village VARCHAR(255)/*小区*/
);
INSERT INTO whole_rent3 VALUES(null,8700,'','','','','合租','3室1厅2卫','距离地铁四惠东站1276米','81','南北','朝阳区-百子湾','中楼层/共6层','华藤轩');
INSERT INTO whole_rent3 VALUES(null,5550,'','','','','合租','3室2厅2卫','距离地铁立水桥站1176米','63','东','昌平区-立水桥','高楼层/共6层','佳运园一期');
INSERT INTO whole_rent3 VALUES(null,6960,'','','','','合租','3室1厅2卫','距离地铁旧宫站834米','110','东','大兴区','低楼层/共5层','宣颐家园');
INSERT INTO whole_rent3 VALUES(null,4900,'','','','','合租','3室2厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent3 VALUES(null,6200,'','','','','合租','3室1厅1卫','距离地铁果园站891米','105','北','通州区-果园','低楼层/共6层','三山新新家园一区');
INSERT INTO whole_rent3 VALUES(null,5800,'','','','','合租','3室1厅2卫','距离地铁马坡站891米','70','南北','顺义区-马坡','低楼层/共6层','马坡花园一区');
INSERT INTO whole_rent3 VALUES(null,4900,'','','','','合租','3室2厅2卫','距离地铁金台夕照站715米','90','南','朝阳区-红庙','高楼层/共18层','呼家楼新街大院');
INSERT INTO whole_rent3 VALUES(null,7500,'','','','','合租','3室1厅1卫','距离地铁圆明园站1423米','79','东','海淀区-圆明园','低楼层/共14层','青年湖东里');
INSERT INTO whole_rent3 VALUES(null,7500,'','','','','合租','3室1厅1卫','距离地铁圆明园站1423米','95','东','海淀区-圆明园','低楼层/共14层','芙蓉里小区');
INSERT INTO whole_rent3 VALUES(null,5400,'','','','','合租','3室2厅2卫','距离地铁方庄站1176米','67','北','丰台区-宋家庄','中楼层/共6层','德茂小区');
INSERT INTO whole_rent3 VALUES(null,6300,'','','','','合租','3室1厅1卫','距离地铁百子湾站834米','70','西','朝阳区-百子湾','高楼层/共24层','沿海赛洛城四期');
INSERT INTO whole_rent3 VALUES(null,4900,'','','','','合租','3室2厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','江山赋');
INSERT INTO whole_rent3 VALUES(null,8900,'','','','','合租','3室1厅2卫','距离地铁双井站站409米','95','北','朝阳区-双井','低楼层/共21层','时代国际');
INSERT INTO whole_rent3 VALUES(null,6300,'','','','','合租','3室1厅2卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent3 VALUES(null,5800,'','','','','合租','3室2厅2卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','中海苏黎世家');

/*整租四居*/
CREATE TABLE whole_rent4(
   fid INT PRIMARY KEY AUTO_INCREMENT,
   price DECIMAL(10,2),/*价格*/
   img_url0 VARCHAR(128),/*图片*/
   img_url1 VARCHAR(128),
   img_url2 VARCHAR(128),
   img_url3 VARCHAR(128),
   rent_who VARCHAR(128),
   housetype VARCHAR(255),/*户型*/
   address VARCHAR(255),/*定位*/
   area VARCHAR(128),/*面积*/
   orient VARCHAR(128),/*朝向*/
   location VARCHAR(255),/*地址*/
   storey VARCHAR(255),/*楼层*/
   village VARCHAR(255)/*小区*/
);
INSERT INTO whole_rent4 VALUES(null,8700,'','','','','合租','4室1厅2卫','距离地铁四惠东站1276米','81','南北','朝阳区-百子湾','中楼层/共6层','华藤轩');
INSERT INTO whole_rent4 VALUES(null,15550,'','','','','合租','4室2厅2卫','距离地铁立水桥站1176米','63','东','昌平区-立水桥','高楼层/共6层','佳运园一期');
INSERT INTO whole_rent4 VALUES(null,6960,'','','','','合租','4室1厅2卫','距离地铁旧宫站834米','110','东','大兴区','低楼层/共5层','宣颐家园');
INSERT INTO whole_rent4 VALUES(null,10400,'','','','','合租','4室2厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','华芳嘉园');
INSERT INTO whole_rent4 VALUES(null,6200,'','','','','合租','4室1厅1卫','距离地铁果园站891米','105','北','通州区-果园','低楼层/共6层','三山新新家园一区');
INSERT INTO whole_rent4 VALUES(null,22000,'','','','','合租','4室1厅2卫','距离地铁马坡站891米','70','南北','顺义区-马坡','低楼层/共6层','马坡花园一区');
INSERT INTO whole_rent4 VALUES(null,9900,'','','','','合租','4室2厅2卫','距离地铁金台夕照站715米','90','南','朝阳区-红庙','高楼层/共18层','呼家楼新街大院');
INSERT INTO whole_rent4 VALUES(null,9800,'','','','','合租','4室1厅1卫','距离地铁圆明园站1423米','79','东','海淀区-圆明园','低楼层/共14层','马坡花园二区');
INSERT INTO whole_rent4 VALUES(null,7500,'','','','','合租','4室1厅1卫','距离地铁圆明园站1423米','95','东','海淀区-圆明园','低楼层/共14层','芙蓉里小区');
INSERT INTO whole_rent4 VALUES(null,8900,'','','','','合租','4室2厅2卫','距离地铁方庄站1176米','67','北','丰台区-宋家庄','中楼层/共6层','德茂小区');
INSERT INTO whole_rent4 VALUES(null,16300,'','','','','合租','4室1厅1卫','距离地铁百子湾站834米','70','西','朝阳区-百子湾','高楼层/共24层','沿海赛洛城四期');
INSERT INTO whole_rent4 VALUES(null,10400,'','','','','合租','4室2厅1卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','江山赋');
INSERT INTO whole_rent4 VALUES(null,8900,'','','','','合租','4室1厅2卫','距离地铁双井站站409米','95','北','朝阳区-双井','低楼层/共21层','时代国际');
INSERT INTO whole_rent4 VALUES(null,6300,'','','','','合租','4室1厅2卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','东晶国际公寓');
INSERT INTO whole_rent4 VALUES(null,8500,'','','','','合租','4室2厅2卫','距离地铁亦庄文化园站849米','79','东西','大兴区-亦庄','低楼层/共21层','中海苏黎世家');


/*PARK*/
CREATE TABLE park(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   price DECIMAL(10,2),/*价格*/
   img_url0 VARCHAR(128),/*图片*/
   img_url1 VARCHAR(128),
   img_url2 VARCHAR(128),
   location VARCHAR(255),/*地址*/
   village VARCHAR(255),/*小区*/
   metro VARCHAR(255),/*地铁*/
   transit VARCHAR(500),/*公交*/
   periph VARCHAR(500),/*周边*/
   trait1 VARCHAR(50),/*特点*/
   trait2 VARCHAR(50),/*特点*/
   trait3 VARCHAR(50)/*特点*/
);
INSERT INTO park VALUES(null,4700,'8176a9a3858649ec8edc327e7bb565f2.jpg','9336ab4d407c4ed4acf8f6334dd83127.jpg','86ec200778e04fcb93871d1c2cfb61a7.jpg','北京朝阳区北花园街艺水芳园一区一号楼','艺水芳园','距八通线传媒大学站800米','茶家坟-397路/475路/728路/666路','超市发，北京通双里农贸市场，杜仲公园。紧邻传媒大学和北京第二外国语学院','超大公区','通透明亮','观景阳台');
INSERT INTO park VALUES(null,3550,'82f7494f33c14cae82e28e8021b3652d.jpg','66c1efa2b100419a97c6f0ff02a17443.jpg','4b4dd7afcbee4f538ab29a36c383945b.jpg','北京朝阳区后现代城A区18号楼','后现代城','1号线大望路/7号线大郊亭/14号线九龙山/八通线四惠','百子湾桥西31路/865路/夜34路/35路/大郊亭路11路','7-11便利店楼下即是，京客隆超市距离公寓100米，物美超市300米。多家健身房游泳馆各种美食旺铺会所','时尚轻奢','CBD','极简工业风');
INSERT INTO park VALUES(null,4000,'4a741d12be944e86b7639b214a16132a.jpg','anbpopmobda4c7e3.jpg','apojgfglf3c0f052.jpg','北京昌平区回龙观二拨子公交站','回龙观mini','昌平区龙泽路地铁站200米','运通114路/专103路/昌31路/昌21路','超市发，北京通双里农贸市场，杜仲公园。紧邻传媒大学和北京第二外国语学院','北欧风','户型方正','贴心服务');
INSERT INTO park VALUES(null,4350,'5f049a60cc2c400da3eadee875a46086.jpg','5e194f555cae4339ad6efd26d27ddd37-1.jpg','73b5ac8401e246cca6cadf34e6eabee7.jpg','杭州市滨江区江南商业大厦1号楼9-11层','滨江63客','1号线大望路/7号线大郊亭','茶家坟-397路/475路/728路/666路','浙江中医药大学旁，紧邻阿里巴巴、华为、网易等高新企业园','临江观景','暖心小资','大开间');
CREATE TABLE history(
    hid INT PRIMARY KEY AUTO_INCREMENT,
    hname VARCHAR(50)
);
INSERT INTO history VALUES(null,"回龙观");