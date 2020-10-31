SET NAMES UTF8;

DROP DATABASE IF EXISTS dhsc;

CREATE DATABASE dhsc CHARSET=UTF8;

USE dhsc;

-- 轮播图
CREATE TABLE carousel(
    id INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64)
);
INSERT INTO carousel VALUES
(NULL,"/images/carousel/1.jpg"),
(NULL,"/images/carousel/2.jpg"),
(NULL,"/images/carousel/3.jpg"),
(NULL,"/images/carousel/4.jpg"),
(NULL,"/images/carousel/5.jpg"),
(NULL,"/images/carousel/6.jpg"),
(NULL,"/images/carousel/7.jpg");

-- 图标
CREATE TABLE icons(
    id INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO icons VALUES
(NULL,"/images/icons/1.png","机票"),
(NULL,"/images/icons/2.png","防疫"),
(NULL,"/images/icons/3.png","公交卡"),
(NULL,"/images/icons/4.png","云缴费"),
(NULL,"/images/icons/5.png","彩票"),
(NULL,"/images/icons/6.png","电影票"),
(NULL,"/images/icons/7.png","挑食"),
(NULL,"/images/icons/8.png","品牌店"),
(NULL,"/images/icons/9.png","扶贫专区"),
(NULL,"/images/icons/10.png","保险");

-- 旅行清单
CREATE TABLE classifydetails_a(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_a VALUES
(NULL,"0","/images/classifya/1.jpg","旅行箱包"),
(NULL,"0","/images/classifya/2.jpg","面部护理"),
(NULL,"0","/images/classifya/3.jpg","太阳镜"),
(NULL,"0","/images/classifya/4.jpg","防晒隔离"),
(NULL,"0","/images/classifya/5.jpg","U型枕"),
(NULL,"0","/images/classifya/6.jpg","旅行收纳"),
(NULL,"0","/images/classifya/7.jpg","纸品湿巾"),
(NULL,"0","/images/classifya/8.jpg","户外背包"),
(NULL,"0","/images/classifya/9.jpg","户外鞋靴"),
(NULL,"0","/images/classifya/10.jpg","户外服装"),
(NULL,"0","/images/classifya/11.jpg","户外工具"),
(NULL,"0","/images/classifya/12.jpg","帐篷"),
(NULL,"0","/images/classifya/13.jpg","滑雪装备"),
(NULL,"0","/images/classifya/14.jpg","户外服装"),
(NULL,"0","/images/classifya/15.jpg","移动电源");

-- 东航好物
CREATE TABLE classifydetails_b(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_b VALUES
(NULL,"1","/images/classifyb/1.jpg","机模"),
(NULL,"1","/images/classifyb/2.jpg","办公用品"),
(NULL,"1","/images/classifyb/3.jpg","数码周边"),
(NULL,"1","/images/classifyb/4.jpg","日用家居"),
(NULL,"1","/images/classifyb/5.jpg","旅行用品");

-- 手机
CREATE TABLE classifydetails_c(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_c VALUES
(NULL,"2","/images/classifyc/1.jpg","Apple"),
(NULL,"2","/images/classifyc/2.jpg","华为"),
(NULL,"2","/images/classifyc/3.jpg","三星"),
(NULL,"2","/images/classifyc/4.jpg","小米"),
(NULL,"2","/images/classifyc/5.jpg","VIVO"),
(NULL,"2","/images/classifyc/6.jpg","魅族");

-- 数码
CREATE TABLE classifydetails_d(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_d VALUES
(NULL,"3","/images/classifyd/1.jpg","座机"),
(NULL,"3","/images/classifyd/2.jpg","数码相机"),
(NULL,"3","/images/classifyd/3.jpg","单反相机"),
(NULL,"3","/images/classifyd/4.jpg","单电/微单相机"),
(NULL,"3","/images/classifyd/5.jpg","拍立得"),
(NULL,"3","/images/classifyd/6.jpg","照片打印机"),
(NULL,"3","/images/classifyd/7.jpg","摄像机"),
(NULL,"3","/images/classifyd/8.jpg","镜头");

-- 电器
CREATE TABLE classifydetails_e(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_e VALUES
(NULL,"4","/images/classifye/1.jpg","电风扇"),
(NULL,"4","/images/classifye/2.jpg","冷风扇"),
(NULL,"4","/images/classifye/3.jpg","空气净化机"),
(NULL,"4","/images/classifye/4.jpg","加湿器"),
(NULL,"4","/images/classifye/5.jpg","扫地机器人"),
(NULL,"4","/images/classifye/6.jpg","吸尘器"),
(NULL,"4","/images/classifye/7.jpg","挂烫机/电熨斗"),
(NULL,"4","/images/classifye/8.jpg","除湿机");

-- 电脑
CREATE TABLE classifydetails_f(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_f VALUES
(NULL,"5","/images/classifyf/1.jpg","笔记本"),
(NULL,"5","/images/classifyf/2.jpg","平板电脑"),
(NULL,"5","/images/classifyf/3.jpg","显示器"),
(NULL,"5","/images/classifyf/4.jpg","一体机"),
(NULL,"5","/images/classifyf/5.jpg","游戏机"),
(NULL,"5","/images/classifyf/6.jpg","电脑配件"),
(NULL,"5","/images/classifyf/7.jpg","鼠标"),
(NULL,"5","/images/classifyf/8.jpg","键盘");

-- 食品
CREATE TABLE classifydetails_g(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_g VALUES
(NULL,"6","/images/classifyg/1.jpg","米面杂粮"),
(NULL,"6","/images/classifyg/2.jpg","食用油"),
(NULL,"6","/images/classifyg/3.jpg","南北干货"),
(NULL,"6","/images/classifyg/4.jpg","调味品"),
(NULL,"6","/images/classifyg/5.jpg","方便食品"),
(NULL,"6","/images/classifyg/6.jpg","坚果肉干"),
(NULL,"6","/images/classifyg/7.jpg","糖果糕点"),
(NULL,"6","/images/classifyg/8.jpg","代餐/冲调品");

-- 家居
CREATE TABLE classifydetails_h(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_h VALUES
(NULL,"7","/images/classifyh/1.jpg","宠物主粮"),
(NULL,"7","/images/classifyh/2.jpg","烹饪锅具"),
(NULL,"7","/images/classifyh/3.jpg","刀剪菜板"),
(NULL,"7","/images/classifyh/4.jpg","保鲜收纳"),
(NULL,"7","/images/classifyh/5.jpg","水具餐具"),
(NULL,"7","/images/classifyh/6.jpg","酒具"),
(NULL,"7","/images/classifyh/7.jpg","厨房配件"),
(NULL,"7","/images/classifyh/8.jpg","茶具咖啡具");

-- 美妆
CREATE TABLE classifydetails_i(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(8)
);
INSERT INTO classifydetails_i VALUES
(NULL,"8","/images/classifyi/1.jpg","面部护理套装 "),
(NULL,"8","/images/classifyi/2.jpg","乳液面霜"),
(NULL,"8","/images/classifyi/3.jpg","精华露 "),
(NULL,"8","/images/classifyi/4.jpg","防晒隔离 "),
(NULL,"8","/images/classifyi/5.jpg","眼部护理 "),
(NULL,"8","/images/classifyi/6.jpg","爽肤水"),
(NULL,"8","/images/classifyi/7.jpg","面膜 "),
(NULL,"8","/images/classifyi/8.jpg","洁面");

-- 首页1
CREATE TABLE indexfloora(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(8),
    ftitle VARCHAR(8),
    src VARCHAR(64)
);
INSERT INTO indexfloora VALUES
(NULL,"买金块送积分","黄金钜惠","/images/indexfloor/1.jpg"),
(NULL,"东航优选","爆款特惠","/images/indexfloor/2.jpg");

-- 首页2
CREATE TABLE indexfloorb(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(8),
    ftitle VARCHAR(8),
    src VARCHAR(64)
);
INSERT INTO indexfloorb VALUES
(NULL,"玩转智能穿戴","数码抢先购","/images/indexfloor/3.jpg"),
(NULL,"电器特惠清单","什么值得买","/images/indexfloor/4.png"),
(NULL,"双立人美厨礼谢","食力宠粉","/images/indexfloor/5.jpg"),
(NULL,"畅游欢乐假期","乐高玩具","/images/indexfloor/6.jpg");

-- 首页3
CREATE TABLE indexfloorc(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(8),
    src VARCHAR(64)
);
INSERT INTO indexfloorc VALUES
(NULL,"人气推荐","/images/indexad/1.jpg"),
(NULL,"科技好礼","/images/indexad/2.jpg"),
(NULL,"品质生活","/images/indexad/3.jpg"),
(NULL,"好货探索","/images/indexad/4.jpg"),
(NULL,"轻奢时尚","/images/indexad/5.jpg");

-- 首页4轮播
CREATE TABLE indexcs(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(8),
    src VARCHAR(64)
);
INSERT INTO indexcs VALUES
(NULL,"苏泊尔精致厨房","/images/indexcs/1.jpg"),
(NULL,"美妆护肤精选","/images/indexcs/2.jpg"),
(NULL,"卡券专区","/images/indexcs/3.jpg"),
(NULL,"体检套餐","/images/indexcs/4.jpg"),
(NULL,"美的钜惠来袭","/images/indexcs/5.jpg"),
(NULL,"电脑办公合集","/images/indexcs/6.jpg"),
(NULL,"双肩包专场","/images/indexcs/7.jpg"),
(NULL,"花样畅跑","/images/indexcs/8.jpg"),
(NULL,"健康生活好粮油","/images/indexcs/9.jpg"),
(NULL,"萌宝好物清单","/images/indexcs/10.jpg"),

(NULL,"耳机音箱合集","/images/indexcs/11.jpg"),
(NULL,"玩转数码新机惠","/images/indexcs/12.jpg"),
(NULL,"数码畅销星品","/images/indexcs/13.jpg"),
(NULL,"潮流好物换新","/images/indexcs/14.jpg"),
(NULL,"佳明新品上市","/images/indexcs/15.jpg"),
(NULL,"汽车用品特惠","/images/indexcs/16.jpg"),
(NULL,"数码配件专区","/images/indexcs/17.jpg"),
(NULL,"TCL家电","/images/indexcs/18.jpg"),

(NULL,"品质粮油精选","/images/indexcs/19.jpg"),
(NULL,"中粮食间到","/images/indexcs/20.jpg"),
(NULL,"纸巾合集","/images/indexcs/21.jpg"),
(NULL,"张小泉实力厨房","/images/indexcs/22.jpg"),
(NULL,"傲胜健康生活","/images/indexcs/23.jpg"),
(NULL,"母婴好物一站购","/images/indexcs/24.jpg"),
(NULL,"YONEX运动","/images/indexcs/25.jpg"),
(NULL,"金秋运动健身季","/images/indexcs/26.jpg"),
(NULL,"科沃斯&海尔","/images/indexcs/27.jpg"),

(NULL,"松下&膳魔师","/images/indexcs/28.jpg"),
(NULL,"途帮&爱华仕","/images/indexcs/29.jpg"),
(NULL,"小熊电器","/images/indexcs/30.jpg"),
(NULL,"厨电馆","/images/indexcs/31.jpg"),
(NULL,"欧乐B&拜耳","/images/indexcs/32.jpg"),
(NULL,"母婴玩具钜惠","/images/indexcs/33.jpg"),
(NULL,"外交官箱遇","/images/indexcs/34.jpg"),
(NULL,"美容仪礼赠","/images/indexcs/35.jpg"),
(NULL,"笔墨盛宴","/images/indexcs/36.jpg"),
(NULL,"户外装备合集","/images/indexcs/37.jpg"),

(NULL,"欧舒丹植愈之旅","/images/indexcs/38.jpg"),
(NULL,"秋季洗护精选","/images/indexcs/39.jpg"),
(NULL,"卡西欧好物上新","/images/indexcs/40.jpg"),
(NULL,"MK&ARMANI","/images/indexcs/41.jpg"),
(NULL,"金秋金饰直降","/images/indexcs/42.jpg"),
(NULL,"欧莱雅护肤盛典","/images/indexcs/43.jpg"),
(NULL,"秋季美肤星品","/images/indexcs/44.jpg"),
(NULL,"太阳镜直降","/images/indexcs/45.jpg"),
(NULL,"换季补水护肤","/images/indexcs/46.jpg"),
(NULL,"MANITO礼遇","/images/indexcs/47.jpg"),
(NULL,"天梭精选礼遇","/images/indexcs/48.jpg"),
(NULL,"香水彩妆合集","/images/indexcs/49.jpg");


-- 详情
CREATE TABLE details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    carousel1 VARCHAR(64),
    carousel2 VARCHAR(64),
    carousel3 VARCHAR(64),
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    price DECIMAL(18,2),
    search VARCHAR(128)
);
INSERT INTO details VALUES
(NULL,"0","/images/details/1.jpg","/images/details/2.jpg","/images/details/3.jpg","Y6 时尚潮流ABS拉杆箱 24寸","GO ON A TRIP","4999","旅行箱包"),
(NULL,"1","/images/details/10.jpg","/images/details/11.jpg","/images/details/12.jpg","东方航空 定制版 进博号 波音777飞机模型","东方航空定制版进博号飞机模型，做工精良，还原度高。","80","机模"),
(NULL,"2","/images/details/13.jpg","/images/details/14.jpg","/images/details/15.jpg","Apple iPhone SE 移动联通电信4G手机","新一代iPhone SE拥有超强的芯片和惹人喜爱的尺寸，价格更是让人动心，你期待的它来了。","3299","Apple"),
(NULL,"3","/images/details/16.jpg","/images/details/17.jpg","/images/details/18.jpg","TCL HA868(9A) 挂壁电话机","一键拨号 座式 可壁挂","49","座机"),
(NULL,"4","/images/details/19.jpg","/images/details/20.jpg","/images/details/21.jpg","Bear 小熊 遇见夏日 3档可调台立两用电风扇 DFS-A50C1","强风对流循环 台地两用 简洁安装 易清洗","199","电风扇"),
(NULL,"5","/images/details/22.jpg","/images/details/23.jpg","/images/details/24.jpg","MI 便携轻薄笔记本 RedmiBook 14 II 锐龙版","极窄边框","3799","笔记本"),
(NULL,"6","/images/details/25.jpg","/images/details/26.jpg","/images/details/27.jpg","十月稻田 长粒香米 1kg","米粒饱满 油光透亮","25","米面杂粮"),
(NULL,"7","/images/details/28.jpg","/images/details/29.jpg","/images/details/30.jpg","冠能 成年期全价猫粮 2.5/7kg","添加益肾因子 良好消化","150","宠物主粮"),
(NULL,"8","/images/details/31.jpg","/images/details/32.jpg","/images/details/33.jpg","网易严选 creamy blue系列 粉底液刷","10万根巴斯纤维 打造无痕底妆","39","美妆");

-- 注册
CREATE TABLE reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    upwd   VARCHAR(32)
);