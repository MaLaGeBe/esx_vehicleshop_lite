USE `essentialmode`;

CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(30) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
  `job` VARCHAR(20) NOT NULL DEFAULT '',
	`stored` TINYINT(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `name_zh` varchar(120) NOT NULL,
  `name_cn` varchar(120) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `vehicles` (`name`, `name_zh`, `name_cn`, `model`, `price`, `category`) VALUES
('Adder', '特盧菲 靈蛇', '特卢菲 灵蛇', 'adder', 900000, 'super'),
('Akuma', '卡丁 街頭惡魔', '卡丁 街头恶魔', 'AKUMA', 7500, 'motorcycles'),
('Alpha', '亞班尼 阿爾法', '亚班尼 阿尔法', 'alpha', 60000, 'sports'),
('Ardent', '歐斯洛 熾焰', '欧斯洛 炽焰', 'ardent', 1150000, 'sportsclassics'),
('Asea', '絕致 海致', '绝致 海致', 'asea', 5500, 'sedans'),
('Autarch', '傲弗拉 獨裁者', '傲弗拉 独裁者', 'autarch', 1955000, 'super'),
('Avarus', 'LCC 阿瓦魯斯', 'LCC 阿瓦鲁斯', 'avarus', 18000, 'motorcycles'),
('Bagger', '西部 馱獸', '西部 驮兽', 'bagger', 13500, 'motorcycles'),
('Baller', '悠遊 行者', '悠游 行者', 'baller2', 40000, 'suvs'),
('Baller Sport', '悠遊行者 行者 LE', '悠游行者 行者 LE', 'baller3', 60000, 'suvs'),
('Banshee', '冒險家 女妖', '冒险家 女妖', 'banshee', 70000, 'sports'),
('Banshee 900R', '冒險家 女妖 900R', '冒险家 女妖 900R', 'banshee2', 255000, 'super'),
('Bati 801', '佩嘉西 801 巴提', '佩嘉西 801 巴提', 'bati', 12000, 'motorcycles'),
('Bati 801RR', '佩嘉西 801RR 巴提', '佩嘉西 801RR 巴提', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', '古羅帝 野獸 GTS', '古罗帝 野兽 GTS', 'bestiagts', 55000, 'sports'),
('BF400', '長崎 BF400', '长崎 BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', '畢福 沙丘征服者', '毕福 沙丘征服者', 'bfinjection', 16000, 'offroad'),
('Bifta', '畢福 必浮塔', '毕福 必浮塔', 'bifta', 12000, 'offroad'),
('Bison', '冒險家 野牛', '冒险家 野牛', 'bison', 45000, 'vans'),
('Blade', '威皮 刀片', '威皮 刀片', 'blade', 15000, 'muscle'),
('Blazer', '長崎 烈焰', '长崎 烈焰', 'blazer', 6500, 'offroad'),
('Blazer Sport', '長崎 街頭烈焰', '长崎 街头烈焰', 'blazer4', 8500, 'offroad'),
('blazer5', '長崎 水陸烈焰騎士', '长崎 水陆烈焰骑士', 'blazer5', 1755600, 'offroad'),
('Blista', '卡丁 旅行家', '卡丁 旅行家', 'blista', 8000, 'compacts'),
('BMX (velo)', 'BMX', 'BMX', 'bmx', 160, 'bicycle'),
('Bobcat XL', '威皮 雄貓 XL', '威皮 雄猫 XL', 'bobcatxl', 32000, 'vans'),
('Brawler', '旋風 鬥毆者', '旋风 斗殴者', 'brawler', 45000, 'offroad'),
('Brioso R/A', '古羅帝 精力霸 R/A', '古罗帝 精力霸 R/A', 'brioso', 18000, 'compacts'),
('Btype', '亞班尼 羅斯福', '亚班尼 罗斯福', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', '亞班尼 科學怪人', '亚班尼 科学怪人', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', '亞班尼 羅斯福勇氣', '亚班尼 罗斯福勇气', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', '亞班尼 風流海盜', '亚班尼 风流海盗', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', '亞班尼 風流海盜改裝版', '亚班尼 风流海盗改装版', 'buccaneer2', 24000, 'muscle'),
('Buffalo', '冒險家 猛牛', '冒险家 猛牛', 'buffalo', 12000, 'sports'),
('Buffalo S', '冒險家 猛牛 S', '冒险家 猛牛 S', 'buffalo2', 20000, 'sports'),
('Bullet', '威皮 子彈', '威皮 子弹', 'bullet', 90000, 'super'),
('Burrito', '絕致 屌客', '绝致 屌客', 'burrito3', 19000, 'vans'),
('Camper', '威霸 露營車', '威霸 露营车', 'camper', 42000, 'vans'),
('Carbonizzare', '古羅帝 汗血寶馬', '古罗帝 汗血宝马', 'carbonizzare', 75000, 'sports'),
('Carbon RS', '長崎 碳釬 RS型', '长崎 碳钎 RS型', 'carbonrs', 18000, 'motorcycles'),
('Casco', '蘭帕達提 卡斯科', '兰帕达提 卡斯科', 'casco', 30000, 'sportsclassics'),
('Cavalcade', '亞班尼 騎兵', '亚班尼 骑兵', 'cavalcade2', 55000, 'suvs'),
('Cheetah', '古羅帝 獵豹', '古罗帝 猎豹', 'cheetah', 375000, 'super'),
('Chimera', '長崎 奇美拉', '长崎 奇美拉', 'chimera', 38000, 'motorcycles'),
('Chino', '威皮 奇諾', '威皮 奇诺', 'chino', 15000, 'muscle'),
('Chino Luxe', '威皮 奇諾改裝版', '威皮 奇诺改装版', 'chino2', 19000, 'muscle'),
('Cliffhanger', '西部 高潮', '西部 高潮', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', '埃努斯 至尊彗星', '埃努斯 至尊彗星', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', '埃努斯 至尊慧眼', '埃努斯 至尊慧眼', 'cognoscenti', 55000, 'sedans'),
('Comet', '菲斯特 陸上彗星', '菲斯特 陆上彗星', 'comet2', 65000, 'sports'),
('Comet 5', '菲斯特 陸上彗星 SR', '菲斯特 陆上彗星 SR', 'comet5', 1145000, 'sports'),
('Contender', '威皮 爭奪者', '威皮 争夺者', 'contender', 70000, 'suvs'),
('Coquette', '非凡 艷婦', '非凡 艳妇', 'coquette', 65000, 'sports'),
('Coquette Classic', '非凡 艷婦經典版', '非凡 艳妇经典版', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', '非凡 艷婦黑鰭', '非凡 艳妇黑鳍', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', '巡航者', '巡航者', 'cruiser', 510, 'motorcycles'),
('Cyclone', '旋風 颶風', '旋风 飓风', 'cyclone', 1890000, 'super'),
('Daemon', '西部 惡魔', '西部 恶魔', 'daemon', 11500, 'motorcycles'),
('Daemon High', '西部 惡魔高配', '西部 恶魔高配', 'daemon2', 13500, 'motorcycles'),
('Defiler', '詩津 褻瀆者', '诗津 亵渎者', 'defiler', 9800, 'motorcycles'),
('Deluxo', '英龐提 德羅索', '英庞提 德罗索', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', '威皮 公路霸者', '威皮 公路霸者', 'dominator', 35000, 'muscle'),
('Double T', '卡丁 雙T', '卡丁 双T', 'double', 28000, 'motorcycles'),
('Dubsta', '貝飛特 迪布達', '贝飞特 迪布达', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', '貝飛特 迪布達', '贝飞特 迪布达', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', '貝飛特 迪布達 6x6', '贝飞特 迪布达 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', '英寵提 公爵', '英宠提 公爵', 'dukes', 28000, 'muscle'),
('Dune Buggy', '畢福 沙丘魔寶', '毕福 沙丘魔宝', 'dune', 8000, 'offroad'),
('Elegy', '哎尼仕 挽歌 RH8', '哎尼仕 挽歌 RH8', 'elegy2', 38500, 'sports'),
('Emperor', '亞班尼 黃霸天', '亚班尼 黄霸天', 'emperor', 8500, 'sedans'),
('Enduro', '卡丁 恩鬥羅', '卡丁 恩斗罗', 'enduro', 5500, 'motorcycles'),
('Entity XF', '傲弗拉 本質 XF', '傲弗拉 本质 XF', 'entityxf', 425000, 'super'),
('Esskey', '佩嘉西 愛時吉', '佩嘉西 爱时吉', 'esskey', 4200, 'motorcycles'),
('Exemplar', '浪子 典範', '浪子 典范', 'exemplar', 32000, 'coupes'),
('F620', '歐斯洛 F620', '欧斯洛 F620', 'f620', 40000, 'coupes'),
('Faction', '威拉德 宗派', '威拉德 宗派', 'faction', 20000, 'muscle'),
('Faction Rider', '威拉德 宗派改裝版', '威拉德 宗派改装版', 'faction2', 30000, 'muscle'),
('Faction XL', '威拉德 宗派改裝巨輪版', '威拉德 宗派改装巨轮版', 'faction3', 40000, 'muscle'),
('Faggio', '佩嘉西 費甲歐現代版', '佩嘉西 费甲欧现代版', 'faggio', 1900, 'motorcycles'),
('Vespa', '佩嘉西 費甲歐', '佩嘉西 费甲欧', 'faggio2', 2800, 'motorcycles'),
('Felon', '蘭帕達緹 惡龍', '兰帕达缇 恶龙', 'felon', 42000, 'coupes'),
('Felon GT', '蘭帕達緹 惡龍 GT', '兰帕达缇 恶龙 GT', 'felon2', 55000, 'coupes'),
('Feltzer', '貝飛特 飛特者', '贝飞特 飞特者', 'feltzer2', 55000, 'sports'),
('Stirling GT', '貝飛特 斯特林 GT', '贝飞特 斯特林 GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', '費斯特', '费斯特', 'fixter', 225, 'motorcycles'),
('FMJ', '威皮 FMJ', '威皮 FMJ', 'fmj', 185000, 'super'),
('Fhantom', '深水 FQ 2', '深水 FQ 2', 'fq2', 17000, 'suvs'),
('Fugitive', '雪佛 流星', '雪佛 流星', 'fugitive', 12000, 'sedans'),
('Furore GT', '蘭帕達緹 沸洛雷 GT', '兰帕达缇 沸洛雷 GT', 'furoregt', 45000, 'sports'),
('Fusilade', '賽樂斯特 眩光', '赛乐斯特 眩光', 'fusilade', 40000, 'sports'),
('Gargoyle', '西部 石像鬼', '西部 石像鬼', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', '冒險家 鐵腕', '冒险家 铁腕', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', '絕致 屌客幫派版', '绝致 屌客帮派版', 'gburrito', 45000, 'vans'),
('Burrito', '絕致 屌客幫派版', '绝致 屌客帮派版', 'gburrito2', 29000, 'vans'),
('Glendale', '貝飛特 格倫戴爾', '贝飞特 格伦戴尔', 'glendale', 6500, 'sedans'),
('Grabger', '絕致 屌王', '绝致 屌王', 'granger', 50000, 'suvs'),
('Gresley', '冒險家 情欲獵手', '冒险家 情欲猎手', 'gresley', 47500, 'suvs'),
('GT 500', '古羅帝 GT500', '古罗帝 GT500', 'gt500', 785000, 'sportsclassics'),
('Guardian', '威皮 守護者', '威皮 守护者', 'guardian', 45000, 'offroad'),
('Hakuchou', '詩津 白鳥', '诗津 白鸟', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', '詩津 白鳥競速版', '诗津 白鸟竞速版', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', '亞班尼 赫耳墨斯', '亚班尼 赫耳墨斯', 'hermes', 535000, 'muscle'),
('Hexer', 'LCC 迷魅光輪', 'LCC 迷魅光轮', 'hexer', 12000, 'motorcycles'),
('Hotknife', '威皮 熱情使徒', '威皮 热情使徒', 'hotknife', 125000, 'muscle'),
('Huntley S', '埃努斯 亨特利 S', '埃努斯 亨特利 S', 'huntley', 40000, 'suvs'),
('Hustler', '威皮 赫斯勒', '威皮 赫斯勒', 'hustler', 625000, 'muscle'),
('Infernus', '佩嘉西 煉獄魔', '佩嘉西 炼狱魔', 'infernus', 180000, 'super'),
('Innovation', 'LCC 創新', 'LCC 创新', 'innovation', 23500, 'motorcycles'),
('Intruder', '卡林 入侵者', '卡林 入侵者', 'intruder', 7500, 'sedans'),
('Issi', '威尼 天威', '威尼 天威', 'issi2', 10000, 'compacts'),
('Jackal', '歐斯洛 胡狼', '欧斯洛 胡狼', 'jackal', 38000, 'coupes'),
('Jester', '卡丁 弄臣', '卡丁 弄臣', 'jester', 65000, 'sports'),
('Jester(Racecar)', '卡丁 弄臣競賽版', '卡丁 弄臣竞赛版', 'jester2', 135000, 'sports'),
('Journey', '賽柯尼 安旅者', '赛柯尼 安旅者', 'journey', 6500, 'vans'),
('Kamacho', '卡尼斯 卡馬喬', '卡尼斯 卡马乔', 'kamacho', 345000, 'offroad'),
('Khamelion', '海岬 變色龍', '海岬 变色龙', 'khamelion', 38000, 'sports'),
('Kuruma', '卡林 骷髏馬', '卡林 骷髅马', 'kuruma', 30000, 'sports'),
('Landstalker', '敦追裏 追捕者', '敦追里 追捕者', 'landstalker', 35000, 'suvs'),
('RE-7B', '愛尼仕 RE-7B', '爱尼仕 RE-7B', 'le7b', 325000, 'super'),
('Lynx', '歐斯洛 山貓', '欧斯洛 山猫', 'lynx', 40000, 'sports'),
('Mamba', '絕致 曼巴', '绝致 曼巴', 'mamba', 70000, 'sports'),
('Manana', '亞班尼 明日之星', '亚班尼 明日之星', 'manana', 12800, 'sportsclassics'),
('Manchez', '麥霸子 曼切茲', '麦霸子 曼切兹', 'manchez', 5300, 'motorcycles'),
('Massacro', '浪子 馬薩克羅', '浪子 马萨克罗', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', '浪子 馬薩克羅（賽車）', '浪子 马萨克罗（赛车）', 'massacro2', 130000, 'sports'),
('Mesa', '卡尼斯 炎魔', '卡尼斯 炎魔', 'mesa', 16000, 'suvs'),
('Mesa Trail', '卡尼斯 炎魔', '卡尼斯 炎魔', 'mesa3', 40000, 'suvs'),
('Minivan', '威皮 迷妳廂型車', '威皮 迷你厢型车', 'minivan', 13000, 'vans'),
('Monroe', '佩嘉西 門羅', '佩嘉西 门罗', 'monroe', 55000, 'sportsclassics'),
('The Liberator', '威皮 解放者', '威皮 解放者', 'monster', 210000, 'offroad'),
('Moonbeam', '絕致 月光', '绝致 月光', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', '絕致 月光改裝版', '绝致 月光改装版', 'moonbeam2', 35000, 'vans'),
('Nemesis', '普林西比 復仇女神', '普林西比 复仇女神', 'nemesis', 5800, 'motorcycles'),
('Neon', '菲斯特 霓虹', '菲斯特 霓虹', 'neon', 1500000, 'sports'),
('Nightblade', '西部 夜刃', '西部 夜刃', 'nightblade', 35000, 'motorcycles'),
('Nightshade', '英龐提 暗夜魅影', '英庞提 暗夜魅影', 'nightshade', 65000, 'muscle'),
('9F', '奧北 9F', '奥北 9F', 'ninef', 65000, 'sports'),
('9F Cabrio', '奧北 9F 敞篷版', '奥北 9F 敞篷版', 'ninef2', 80000, 'sports'),
('Omnis', '奧北 奧姆尼斯', '奥北 奥姆尼斯', 'omnis', 35000, 'sports'),
('Oppressor', '佩嘉西 暴君', '佩嘉西 暴君', 'oppressor', 3524500, 'super'),
('Oracle XS', '絕品 先知', '绝品 先知', 'oracle2', 35000, 'coupes'),
('Osiris', '佩嘉西 奧西裏斯', '佩嘉西 奥西里斯', 'osiris', 160000, 'super'),
('Panto', '貝飛特 啞劇', '贝飞特 哑剧', 'panto', 10000, 'compacts'),
('Paradise', '冒險家 天堂', '冒险家 天堂', 'paradise', 19000, 'vans'),
('Pariah', '歐斯洛 放逐者', '欧斯洛 放逐者', 'pariah', 1420000, 'sports'),
('Patriot', '巨象 愛國者', '巨象 爱国者', 'patriot', 55000, 'suvs'),
('PCJ-600', '詩津 PCJ 600', '诗津 PCJ 600', 'pcj', 6200, 'motorcycles'),
('Penumbra', '麥霸子 半影使者', '麦霸子 半影使者', 'penumbra', 28000, 'sports'),
('Pfister', '菲斯特 811', '菲斯特 811', 'pfister811', 85000, 'super'),
('Phoenix', '英奔堤 不死鳥', '英奔堤 不死鸟', 'phoenix', 12500, 'muscle'),
('Picador', '雪佛 鬥牛士', '雪佛 斗牛士', 'picador', 18000, 'muscle'),
('Pigalle', '蘭帕達緹 皮卡樂', '兰帕达缇 皮卡乐', 'pigalle', 20000, 'sportsclassics'),
('Prairie', '包洛坎 原野行者', '包洛坎 原野行者', 'prairie', 12000, 'compacts'),
('Premier', '絕致 統領', '绝致 统领', 'premier', 8000, 'sedans'),
('Primo Custom', '亞班尼 初代改裝版', '亚班尼 初代改装版', 'primo2', 14000, 'sedans'),
('X80 Proto', '古羅帝 X80 原型', '古罗帝 X80 原型', 'prototipo', 2500000, 'super'),
('Radius', '威皮 輻光', '威皮 辐光', 'radi', 29000, 'suvs'),
('raiden', '旋風 雷電', '旋风 雷电', 'raiden', 1375000, 'sports'),
('Rapid GT', '浪子 疾速 GT', '浪子 疾速 GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', '浪子 疾速 GT', '浪子 疾速 GT', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', '浪子 疾速GT 經典版', '浪子 疾速GT 经典版', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', '佩嘉西 死神', '佩嘉西 死神', 'reaper', 150000, 'super'),
('Rebel', '卡林 叛逆男女', '卡林 叛逆男女', 'rebel2', 35000, 'offroad'),
('Regina', '敦追星 女皇', '敦追星 女皇', 'regina', 5000, 'sedans'),
('Retinue', '威皮 隨行者', '威皮 随行者', 'retinue', 615000, 'sportsclassics'),
('Revolter', '絕品 反叛者', '绝品 反叛者', 'revolter', 1610000, 'sports'),
('riata', '威皮 利雅塔', '威皮 利雅塔', 'riata', 380000, 'offroad'),
('Rocoto', '奧北 小辣椒', '奥北 小辣椒', 'rocoto', 45000, 'suvs'),
('Ruffian', '佩嘉西 惡霸', '佩嘉西 恶霸', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', '英龐提 滅世暴徒 2000', '英庞提 灭世暴徒 2000', 'ruiner2', 5745600, 'muscle'),
('Rumpo', '冒險家 瀾波', '冒险家 澜波', 'rumpo', 15000, 'vans'),
('Rumpo Trail', '冒險家 瀾波改裝版', '冒险家 澜波改装版', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', '絕致 軍刀渦輪', '绝致 军刀涡轮', 'sabregt', 20000, 'muscle'),
('Sabre GT', '絕致 軍刀渦輪改裝版', '绝致 军刀涡轮改装版', 'sabregt2', 25000, 'muscle'),
('Sanchez', '麥霸子 桑切斯（塗裝版）', '麦霸子 桑切斯（涂装版）', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', '麥霸子 桑切斯', '麦霸子 桑切斯', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'LCC聖狗', 'LCC圣狗', 'sanctus', 25000, 'motorcycles'),
('Sandking', '威皮 大腳霸王XL', '威皮 大脚霸王XL', 'sandking', 55000, 'offroad'),
('Savestra', '愛尼仕 薩維斯特拉', '爱尼仕 萨维斯特拉', 'savestra', 990000, 'sportsclassics'),
('SC 1', '絕品 SC 1', '绝品 SC 1', 'sc1', 1603000, 'super'),
('Schafter', '貝飛特 莎夫特', '贝飞特 莎夫特', 'schafter2', 25000, 'sedans'),
('Schafter V12', '貝飛特 莎夫特 V12', '贝飞特 莎夫特 V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', '先驅者', '先驱者', 'scorcher', 280, 'motorcycles'),
('Seminole', '卡尼斯 陸上專家', '卡尼斯 陆上专家', 'seminole', 25000, 'suvs'),
('Sentinel XS', '絕品 衛士 XS', '绝品 卫士 XS', 'sentinel', 32000, 'coupes'),
('Sentinel', '絕品 衛士', '绝品 卫士', 'sentinel2', 40000, 'coupes'),
('Sentinel3', '絕品 衛士經典版', '绝品 卫士经典版', 'sentinel3', 650000, 'sports'),
('Seven 70', '浪子 柒-70', '浪子 柒-70', 'seven70', 39500, 'sports'),
('ETR1', '黃霸天 ETR1', '黄霸天 ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', '長崎 聖太郎', '长崎 圣太郎', 'shotaro', 320000, 'motorcycles'),
('Slam Van', '威皮 大滿貫皮卡改裝版', '威皮 大满贯皮卡改装版', 'slamvan3', 11500, 'muscle'),
('Sovereign', '西部 君主', '西部 君主', 'sovereign', 22000, 'motorcycles'),
('Stinger', '古羅帝 史汀格', '古罗帝 史汀格', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', '古羅帝 史汀格 GT', '古罗帝 史汀格 GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', '貝飛特 斯垂特', '贝飞特 斯垂特', 'streiter', 500000, 'sports'),
('Stretch', '敦追裏 加長禮車', '敦追里 加长礼车', 'stretch', 90000, 'sedans'),
('Stromberg', '歐斯洛 斯特龍伯格', '欧斯洛 斯特龙伯格', 'stromberg', 3185350, 'sports'),
('Sultan', '卡林 王者', '卡林 王者', 'sultan', 15000, 'sports'),
('Sultan RS', '卡林 王者 RS', '卡林 王者 RS', 'sultanrs', 65000, 'super'),
('Super Diamond', '埃努斯 金鉆耀星', '埃努斯 金钻耀星', 'superd', 130000, 'sedans'),
('Surano', '貝飛特 速雷', '贝飞特 速雷', 'surano', 50000, 'sports'),
('Surfer', '畢福 乘風', '毕福 乘风', 'surfer', 12000, 'vans'),
('T20', '培羅 T20', '培罗 T20', 't20', 300000, 'super'),
('Tailgater', '奧北 密探', '奥北 密探', 'tailgater', 30000, 'sedans'),
('Tampa', '絕致 坦帕', '绝致 坦帕', 'tampa', 16000, 'muscle'),
('Drift Tampa', '絕致 漂移坦帕', '绝致 漂移坦帕', 'tampa2', 80000, 'sports'),
('Thrust', '丁卡 猛沖', '丁卡 猛冲', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', '特萊賽可競速自行車', '特莱赛可竞速自行车', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', '威皮 越野卡車', '威皮 越野卡车', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', '威皮 沙漠突擊', '威皮 沙漠突击', 'trophytruck2', 80000, 'offroad'),
('Tropos', '蘭帕達緹 逐波雷厲', '兰帕达缇 逐波雷厉', 'tropos', 40000, 'sports'),
('Turismo R', '古羅帝 遠途 R', '古罗帝 远途 R', 'turismor', 350000, 'super'),
('Tyrus', '培羅 泰勒斯', '培罗 泰勒斯', 'tyrus', 600000, 'super'),
('Vacca', '佩嘉西 狂牛', '佩嘉西 狂牛', 'vacca', 120000, 'super'),
('Vader', '詩津 威德', '诗津 威德', 'vader', 7200, 'motorcycles'),
('Verlierer', '冒險家 迷失者', '冒险家 迷失者', 'verlierer2', 70000, 'sports'),
('Vigero', '絕致 活力夠', '绝致 活力够', 'vigero', 12500, 'muscle'),
('Virgo', '亞班尼 室女座', '亚班尼 室女座', 'virgo', 14000, 'muscle'),
('Viseris', '蘭帕達緹 維瑟瑞斯', '兰帕达缇 维瑟瑞斯', 'viseris', 875000, 'sportsclassics'),
('Visione', '古羅帝 幻象', '古罗帝 幻象', 'visione', 2250000, 'super'),
('Voltic', '旋風 狂雷', '旋风 狂雷', 'voltic', 90000, 'super'),
('Voltic 2', '旋風 火箭狂雷', '旋风 火箭狂雷', 'voltic2', 3830400, 'super'),
('Voodoo', '絕致 巫毒改裝版', '绝致 巫毒改装版', 'voodoo', 7200, 'muscle'),
('Vortex', '佩嘉西 漩渦', '佩嘉西 漩涡', 'vortex', 9800, 'motorcycles'),
('Warrener', '副獅 守護星', '副狮 守护星', 'warrener', 4000, 'sedans'),
('Washington', '亞班尼 華盛頓', '亚班尼 华盛顿', 'washington', 9000, 'sedans'),
('Windsor', '埃努斯 溫莎', '埃努斯 温莎', 'windsor', 95000, 'coupes'),
('Windsor Drop', '埃努斯 溫莎敞篷版', '埃努斯 温莎敞篷版', 'windsor2', 125000, 'coupes'),
('Woflsbane', '西部 惡狼克星', '西部 恶狼克星', 'wolfsbane', 9000, 'motorcycles'),
('XLS', '貝飛特 XLS', '贝飞特 XLS', 'xls', 32000, 'suvs'),
('Yosemite', '絕致 約塞米蒂', '绝致 约塞米蒂', 'yosemite', 485000, 'muscle'),
('Youga', '冒險家 遊俠', '冒险家 游侠', 'youga', 10800, 'vans'),
('Youga Luxuary', '冒險家 遊俠經典', '冒险家 游侠经典', 'youga2', 14500, 'vans'),
('Z190', '卡林 190z', '卡林 190z', 'z190', 900000, 'sportsclassics'),
('Zentorno', '佩嘉西 桑托勞', '佩嘉西 桑托劳', 'zentorno', 1500000, 'super'),
('Zion', '絕品 絕品天堂', '绝品 绝品天堂', 'zion', 36000, 'coupes'),
('Zion Cabrio', '絕品 絕品天堂敞篷版', '绝品 绝品天堂敞篷版', 'zion2', 45000, 'coupes'),
('Zombie', '西部 鞭屍者', '西部 鞭尸者', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', '西部 碎屍者', '西部 碎尸者', 'zombieb', 12000, 'motorcycles'),
('Z-Type', '特盧菲 Z-TYPE', '特卢菲 Z-TYPE', 'ztype', 220000, 'sportsclassics');

CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  `label_zh` varchar(120) NOT NULL,
  `label_cn` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `vehicle_categories` (`name`, `label`, `label_zh`, `label_cn`) VALUES
('bicycle', 'Bicycle', '單車', '自行车'),
('compacts', 'Compacts', '小轎車', '小型汽车'),
('coupes', 'Coupes', '轎跑車', '轿跑车'),
('motorcycles', 'Motos', '機車', '摩托车'),
('muscle', 'Muscle', '肌肉車', '肌肉车'),
('offroad', 'Off Road', '越野車', '越野车'),
('sedans', 'Sedans', '轎車', '轿车'),
('sports', 'Sports', '跑車', '跑车'),
('sportsclassics', 'Sports Classics', '經典跑車', '经典跑车'),
('super', 'Super', '超級跑車', '超级跑车'),
('suvs', 'SUVs', 'SUV', 'SUV'),
('vans', 'Vans', '廂型車', '厢型车');

ALTER TABLE `owned_vehicles` ADD PRIMARY KEY (`plate`);
ALTER TABLE `rented_vehicles` ADD PRIMARY KEY (`plate`);
ALTER TABLE `vehicles` ADD PRIMARY KEY (`model`);
ALTER TABLE `vehicle_categories` ADD PRIMARY KEY (`name`);
