DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;

CREATE TABLE comprador (
  idCom INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreCom VARCHAR(99) NOT NULL,
  ap1Com VARCHAR(99) NOT NULL,
  ap2Com VARCHAR(99),
  ciudad VARCHAR(99),
  categoria INT UNSIGNED
);

CREATE TABLE vendedor (
  idVen INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreVen VARCHAR(99) NOT NULL,
  ap1Ven VARCHAR(99) NOT NULL,
  ap2Ven VARCHAR(99),
  comision FLOAT
);

CREATE TABLE venta (
  idVenta INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  totalVenta DOUBLE NOT NULL,
  fechaVenta DATE,
  idComprador INT UNSIGNED NOT NULL,
  idVendedor INT UNSIGNED NOT NULL,
  FOREIGN KEY (idComprador) REFERENCES comprador(idCom),
  FOREIGN KEY (idVendedor) REFERENCES vendedor(idVen)
);

INSERT INTO `comprador` (`idCom`,`nombreCom`,`ap1Com`,`ap2Com`,`ciudad`,`categoria`)
VALUES
  (1,"Marsden","Jimenez","Schroeder","Arequipa",2),
  (2,"Gavin","Mayo","Pierce","Tanjung Pinang",6),
  (3,"Kyle","Moses","Gonzalez","Kavaratti",4),
  (4,"Chaney","Perez","Larson","Oslo",7),
  (5,"Nissim","Barton","Johns","Sanquhar",9),
  (6,"Kamal","Chan","Daugherty","Buôn Ma Thuột",10),
  (7,"Caesar","Ferguson","Snyder","Hualañé",6),
  (8,"Louis","Andrews","Terrell","Bhubaneswar",3),
  (9,"Cole","Holder","Mitchell","Chiclayo",9),
  (10,"Nicholas","Lloyd","Walker","Aguacaliente (San Francisco]",7),
  (11,"Declan","Knox","Bradley","Veere",10),
  (12,"Thor","Randolph","O'brien","Douai",6),
  (13,"Brett","Key","Sanchez","Hong Kong",7),
  (14,"Joshua","Mcdaniel","Marsh","Bạc Liêu",2),
  (15,"Brian","Everett","Melton","Seogwipo",9),
  (16,"William","Carey","Jones","Kỳ Sơn",1),
  (17,"Sylvester","Mcbride","Lara","Bandar Lampung",2),
  (18,"Lawrence","Dickerson","Gomez","Kielce",4),
  (19,"Lane","Barber","Peterson","Galway",4),
  (20,"Dane","Rosales","Cross","Macclesfield",7),
  (21,"Eagan","Sanchez","Sanders","Valparai",8),
  (22,"Alden","Mayo","Beach","Heilbronn",8),
  (23,"Arthur","Lang","Mcpherson","Stratford",2),
  (24,"Kennedy","Shannon","Thomas","Sulzano",9),
  (25,"Erasmus","Franklin","Craig","Hastings",9),
  (26,"Felix","Cox","Conner","Akşehir",1),
  (27,"Rudyard","Hyde","Gill","Tongyeong",5),
  (28,"Yasir","Black","Macias","Newcastle",7),
  (29,"Arthur","Chapman","Mckenzie","Okigwe",3),
  (30,"Noah","Tate","Becker","Tuy Hòa",4),
  (31,"Channing","Stafford","Carrillo","Nicoya",4),
  (32,"Evan","Reynolds","Henderson","Istanbul",10),
  (33,"Christopher","Cooper","Morgan","Puntarenas",6),
  (34,"Wesley","Sherman","Hawkins","Florø",5),
  (35,"Kieran","Smith","Travis","Arequipa",4),
  (36,"Chancellor","Long","Mosley","Puntarenas",8),
  (37,"Lester","Allen","Jefferson","Nicoya",1),
  (38,"Wade","Bowen","Butler","North Waziristan",8),
  (39,"Kevin","Cook","Gordon","Lelystad",2),
  (40,"Chancellor","Blevins","Le","Lidingo",10),
  (41,"Ian","Williams","Santiago","Mâcon",4),
  (42,"Aristotle","Glover","Gilbert","Wonju",9),
  (43,"Cameron","Day","Gillespie","Aguachica",8),
  (44,"Justin","Barlow","Wilkinson","Pamplona",10),
  (45,"Elvis","Roman","Elliott","Cádiz",8),
  (46,"Carlos","May","Odom","Seydişehir",3),
  (47,"Kibo","Burks","House","Anklam",3),
  (48,"Zahir","Lindsey","Lindsey","Muiden",9),
  (49,"Noble","Prince","Townsend","Yekaterinburg",4),
  (50,"Hilel","Gray","Merrill","Parramatta",9);
INSERT INTO `comprador` (`idCom`,`nombreCom`,`ap1Com`,`ap2Com`,`ciudad`,`categoria`)
VALUES
  (51,"Akeem","Sampson","Doyle","Dapitan",5),
  (52,"Timothy","Crawford","Barr","Okpoko",4),
  (53,"Keefe","Holloway","Burks","Palu",10),
  (54,"Damian","Salazar","Puckett","Barnstaple",9),
  (55,"Barry","Conrad","Roy","Shimanovsk",8),
  (56,"Geoffrey","Strickland","Green","Pontarlier",6),
  (57,"Allistair","Peterson","Talley","Gore",5),
  (58,"Luke","Watson","Crawford","Lạng Sơn",1),
  (59,"Martin","Yang","Spencer","Koszalin",7),
  (60,"Caldwell","Vasquez","Frank","Turgutlu",8),
  (61,"Jonas","Weber","Carr","Nuevo Laredo",3),
  (62,"Rudyard","Kelly","Rodgers","Pedace",3),
  (63,"Rafael","Sykes","Miller","Lachine",10),
  (64,"Leo","Huffman","Callahan","Gölcük",4),
  (65,"Macon","Garcia","Dunn","Yopal",6),
  (66,"Baxter","Dorsey","Sheppard","Invercargill",5),
  (67,"Herrod","Mason","Barker","Nonsan",7),
  (68,"Kevin","Pugh","Vega","Arrah",2),
  (69,"David","Hartman","Carver","Orvault",3),
  (70,"Gage","Justice","Daniel","Assen",3),
  (71,"Kelly","Clayton","Roberson","Valenciennes",2),
  (72,"Ryan","Love","Grimes","Bear",8),
  (73,"Harrison","Yang","Brewer","Pangkalpinang",9),
  (74,"Geoffrey","Hill","Pope","Bear",4),
  (75,"Axel","Lucas","Bernard","Châlons-en-Champagne",6),
  (76,"Tanner","Blair","Snow","Güstrow",2),
  (77,"Branden","Joseph","Mullins","Cartago",5),
  (78,"Raphael","Gardner","Forbes","Manavgat",9),
  (79,"Timon","Hahn","Walton","Iguala",3),
  (80,"Colton","Donovan","Whitley","Sokoto",8),
  (81,"Samuel","Hansen","Bean","Stirling",7),
  (82,"Price","Fischer","Guerrero","Cumaribo",4),
  (83,"Porter","Mathis","Rodriguez","Elbląg",3),
  (84,"Rooney","Burks","Avila","Coalville",7),
  (85,"Palmer","Ratliff","Massey","Purmerend",2),
  (86,"Amir","Contreras","Tate","Galashiels",4),
  (87,"Kato","Villarreal","Munoz","Ulloa (Barrial]",1),
  (88,"Herrod","Richard","Calderon","Timon",10),
  (89,"Dale","Mayer","Rowland","Gisborne",1),
  (90,"Jared","Howard","Garner","Kempten",10),
  (91,"Burton","Pruitt","Hancock","Bauchi",1),
  (92,"Elliott","Weiss","Espinoza","Upplands Väsby",10),
  (93,"Omar","Kelly","Hicks","Jecheon",3),
  (94,"Harper","Duncan","Reynolds","Belém",9),
  (95,"Andrew","Collins","Johnson","Mespelare",5),
  (96,"Alec","Salinas","Baker","Canberra",8),
  (97,"Herrod","Hebert","Tucker","Araban",4),
  (98,"Rigel","Byrd","Aguilar","Massemen",8),
  (99,"Gavin","Dawson","Payne","Joué-lès-Tours",3),
  (100,"Ulric","Gallegos","Hoffman","Legnica",1);
INSERT INTO `comprador` (`idCom`,`nombreCom`,`ap1Com`,`ap2Com`,`ciudad`,`categoria`)
VALUES
  (101,"Bernard","Pearson","Ellis","Ajaccio",4),
  (102,"Tad","Aguirre","Downs","Nagar",8),
  (103,"Ulric","Fitzpatrick","Middleton","Ciudad Madero",9),
  (104,"Steel","Evans","Hopper","Hubei",10),
  (105,"Philip","Alexander","Rivas","Pakpatan",4),
  (106,"Omar","Brooks","Carpenter","Galway",3),
  (107,"Edward","Santos","Huffman","Genzano di Lucania",5),
  (108,"Felix","Nolan","Reynolds","Chełm",8),
  (109,"Brandon","Nicholson","Ellis","Flint",10),
  (110,"Timon","Walters","Sampson","Cuenca",7),
  (111,"Brent","Hewitt","Hale","Saalfelden am Steinernen Meer",8),
  (112,"Joseph","Mercer","Perry","Traun",2),
  (113,"Alfonso","Moon","Kelley","Tula",3),
  (114,"Jamal","Waters","Miller","Terneuzen",8),
  (115,"Stuart","Burks","English","Holmestrand",8),
  (116,"Kirk","Ramos","Schultz","Belfast",5),
  (117,"Alexander","Francis","Dorsey","Lillehammer",1),
  (118,"Plato","Delaney","Chaney","Rechnitz",3),
  (119,"Ethan","Harrington","Sweet","Kano",7),
  (120,"Elijah","England","Sherman","Tejar",5),
  (121,"Scott","Luna","Kelley","Nedlands",7),
  (122,"Grant","Hutchinson","Salinas","Badin",6),
  (123,"Ivan","Pollard","White","San Donato di Ninea",2),
  (124,"Dane","Burt","Rogers","Leke",9),
  (125,"Jameson","Langley","Pratt","Seogwipo",2),
  (126,"Kareem","Pruitt","Long","Medemblik",3),
  (127,"Moses","Aguirre","Zimmerman","Boignee",10),
  (128,"Zahir","Noble","Underwood","San Pedro",4),
  (129,"Zachary","Baldwin","Bailey","Tam Kỳ",5),
  (130,"Palmer","Cline","Patrick","Galway",2),
  (131,"Chaney","Young","Cote","Belfast",8),
  (132,"Blaze","Watson","Burgess","Dijon",5),
  (133,"Elliott","Holder","Garcia","Tokoroa",10),
  (134,"Ray","Melton","Watts","Dublin",2),
  (135,"Rafael","Padilla","Barnett","Mazatlán",9),
  (136,"Lyle","Cochran","Vaughn","Cork",2),
  (137,"Cedric","Goff","Dawson","Dangjin",3),
  (138,"Melvin","Cannon","Brewer","Port Pirie",2),
  (139,"Ray","Vasquez","Weiss","Riosucio",3),
  (140,"Kato","Molina","Barker","Ripabottoni",8),
  (141,"Channing","Tyler","Simon","Yeosu",2),
  (142,"Xander","Castaneda","Brown","Chiclayo",6),
  (143,"Rashad","Herrera","Wise","Kasur",6),
  (144,"Simon","Love","Miles","Oberpullendorf",10),
  (145,"Christian","Miles","Wright","Dutse",4),
  (146,"Deacon","Franklin","Melendez","Phan Thiết",9),
  (147,"Anthony","Pratt","Sparks","Ashburton",3),
  (148,"Wing","Levy","Neal","Oslo",5),
  (149,"Kaseem","Spencer","Grant","León",8),
  (150,"Isaac","Rose","Dillard","Mattersburg",6);
INSERT INTO `comprador` (`idCom`,`nombreCom`,`ap1Com`,`ap2Com`,`ciudad`,`categoria`)
VALUES
  (151,"Edan","Townsend","Padilla","Delhi",7),
  (152,"Donovan","Irwin","Rios","Manukau",5),
  (153,"Grant","Michael","Holman","Pontboset",9),
  (154,"Tucker","Armstrong","Dunlap","Port Blair",5),
  (155,"Victor","Knowles","Landry","Wals-Siezenheim",5),
  (156,"Bruce","Gordon","Hancock","Winnipeg",4),
  (157,"Ryder","Cross","Mclean","Tianjin",5),
  (158,"Axel","Nielsen","Sellers","Sarpsborg",4),
  (159,"Judah","Hobbs","Avila","Soledad de Graciano Sánchez",9),
  (160,"Cain","Case","Leblanc","Lerum",5),
  (161,"Oleg","Ramos","Abbott","Pontevedra",6),
  (162,"Raymond","Wong","Guerra","Henan",7),
  (163,"Preston","Molina","Velez","Diego de Almagro",8),
  (164,"Reece","Ballard","Christensen","Bangor",6),
  (165,"Keefe","Jacobs","Montgomery","Hengelo",4),
  (166,"Jin","Snider","Shelton","Calais",3),
  (167,"Jonah","Harrington","Sosa","Neustadt",4),
  (168,"Phelan","Ferguson","Case","Serang",1),
  (169,"Lewis","Leonard","Melton","Singkawang",2),
  (170,"Reed","Case","Owen","Saint-Étienne-du-Rouvray",6),
  (171,"Hall","Knox","Diaz","Białystok",6),
  (172,"Quinlan","Holman","Gates","El Retorno",1),
  (173,"Lester","Valenzuela","Chaney","Odda",2),
  (174,"Erich","Bray","Pate","Stilo",7),
  (175,"Chancellor","Harmon","Wilkinson","Avesta",2),
  (176,"Kuame","Anthony","Flynn","Manavgat",2),
  (177,"Burke","Justice","Romero","Baguio",6),
  (178,"Jonah","Mclaughlin","Haley","Sauda",6),
  (179,"Yuli","Brady","Cotton","Tanjay",6),
  (180,"Connor","Ray","Nash","Troyes",1),
  (181,"Ray","Williamson","Walsh","Than Uyên",5),
  (182,"Clarke","Jacobs","Parker","Florencia",3),
  (183,"Zachery","Cherry","Gilbert","Pamplona",7),
  (184,"Ulric","Hensley","Berg","Vĩnh Long",2),
  (185,"Kane","Valdez","Nolan","Caloocan",3),
  (186,"Cadman","Donaldson","Weaver","Morwell",4),
  (187,"Jelani","Brock","Lynch","Okpoko",2),
  (188,"Akeem","Gross","Pate","Pohang",8),
  (189,"Alfonso","Hobbs","Nichols","Newtonmore",10),
  (190,"Salvador","Lara","Randall","Legnica",4),
  (191,"Fritz","Cantu","Sheppard","Hamburg",5),
  (192,"Quinlan","Lambert","Morrow","Guadalupe",8),
  (193,"Jamal","Chang","Cabrera","Boo",9),
  (194,"Ishmael","Cohen","Baker","Güssing",4),
  (195,"Yoshio","Hensley","Abbott","Oslo",10),
  (196,"Logan","Best","Osborne","Sète",6),
  (197,"Louis","Wilson","Dotson","Völkermarkt",8),
  (198,"Phelan","Sykes","Sharpe","Pskov",6),
  (199,"Rigel","Jensen","Malone","Kamyzyak",4),
  (200,"Yuli","Kinney","Morse","Stonehaven",3);
INSERT INTO `comprador` (`idCom`,`nombreCom`,`ap1Com`,`ap2Com`,`ciudad`,`categoria`)
VALUES
  (201,"Stewart","Garrett","Finley","Tuglie",6),
  (202,"Victor","Hooper","Kemp","Cork",6),
  (203,"Avram","Blackburn","Buck","Brandon",5),
  (204,"Lewis","Larson","Hebert","Vezirköprü",8),
  (205,"Rooney","Cook","Patel","Ingooigem",6),
  (206,"Cadman","Gill","Boyer","Jaén",8),
  (207,"Amir","Murphy","Meyer","Fossato di Vico",8),
  (208,"Troy","Newton","Pratt","North Shore",1),
  (209,"Alfonso","Flores","Pruitt","Ijebu Ode",3),
  (210,"Tobias","Banks","Kramer","Galway",8),
  (211,"Brent","Salas","Blair","Chambave",7),
  (212,"Castor","Bryant","Guerrero","Chełm",9),
  (213,"Wade","O'donnell","Franklin","Palembang",5),
  (214,"Fuller","Mccarthy","Sanchez","Nha Trang",3),
  (215,"Jelani","Pratt","Zamora","Cali",1),
  (216,"Nasim","Mcleod","Hurley","Onitsha",2),
  (217,"Mannix","Bonner","Harrison","Denver",1),
  (218,"Tarik","Shaw","Lloyd","Maiduguri",4),
  (219,"Sean","Hughes","Aguirre","Alto del Carmen",6),
  (220,"Simon","Phillips","Hess","Kaduna",2),
  (221,"Ralph","Hart","Maldonado","Indianapolis",5),
  (222,"Rashad","Townsend","Byers","Mühlheim am Main",3),
  (223,"Marvin","Roy","Dejesus","Amersfoort",9),
  (224,"Austin","Ashley","Henson","Galway",5),
  (225,"Matthew","Cote","Hudson","Wonju",1),
  (226,"Daquan","Oneil","Guy","Penrith",2),
  (227,"Ferdinand","Blackwell","Le","Ficarolo",2),
  (228,"Orlando","Hodges","Scott","Gdynia",3),
  (229,"Amos","Rodriguez","Monroe","Pondicherry",7),
  (230,"Marvin","Yates","Merrill","Rock Springs",8),
  (231,"Hayes","Wynn","Boone","Landelies",5),
  (232,"Chaim","Weiss","Boyle","Bastia",1),
  (233,"Aristotle","Ramsey","Hanson","Itanagar",9),
  (234,"Hayes","Potter","Figueroa","Barghe",10),
  (235,"Tyrone","Cannon","Lawrence","Saint-Louis",2),
  (236,"Harper","Roy","Battle","Dessau",2),
  (237,"Matthew","Livingston","Cantu","Yunnan",7),
  (238,"Shad","Gibson","Alexander","Kendari",2),
  (239,"Bruno","Oneil","Reeves","Tillicoultry",5),
  (240,"Walter","Lynn","Sexton","Ciudad Real",9),
  (241,"Herman","Mann","Bates","Antofagasta",6),
  (242,"Zephania","Charles","Wong","Edam",7),
  (243,"Talon","Cote","Lara","Klabbeek",4),
  (244,"Prescott","Poole","Hahn","Palma de Mallorca",2),
  (245,"Jerry","Holland","Larson","Katsina",8),
  (246,"Reese","Foster","Berger","Oberursel",7),
  (247,"Edan","Grant","Neal","Almere",7),
  (248,"Orson","Ashley","Fields","Wonju",4),
  (249,"David","Grimes","Tucker","Aberystwyth",2),
  (250,"Kelly","Branch","Vaughan","Nedlands",4);
INSERT INTO `comprador` (`idCom`,`nombreCom`,`ap1Com`,`ap2Com`,`ciudad`,`categoria`)
VALUES
  (251,"Adrian","Hooper","Blair","Neustrelitz",2),
  (252,"Jermaine","Robertson","Cole","Te Awamutu",9),
  (253,"Palmer","Copeland","Guy","Duisburg",9),
  (254,"Brennan","Crosby","Robertson","Novo Hamburgo",8),
  (255,"Stewart","Bullock","Pollard","Enkhuizen",1),
  (256,"Igor","Salas","Melton","Helmond",8),
  (257,"Gannon","Alvarado","Faulkner","Xinjiang",10),
  (258,"Rahim","Hurley","Nicholson","Rawalakot",5),
  (259,"Hector","Holland","Finley","Srinagar",3),
  (260,"Troy","Mills","Francis","Dublin",3),
  (261,"Camden","Bolton","Huffman","Dordrecht",10),
  (262,"Demetrius","Collier","Flynn","Porirua",10),
  (263,"Barrett","Buckley","Marquez","Waitakere",9),
  (264,"Louis","Reid","Weeks","Waasmunster",9),
  (265,"Gregory","Frye","Edwards","Liberia",7),
  (266,"Channing","Cooper","Wallace","Torghar",3),
  (267,"Adam","Curtis","Page","Wilmington",5),
  (268,"Clinton","Ferguson","Holland","Fujian",7),
  (269,"Kirk","Bullock","Mckee","Verdalsøra",4),
  (270,"Thane","Lara","Winters","Notodden",4),
  (271,"Nissim","Roberson","Mercer","Santander",9),
  (272,"Daquan","Knowles","Mcfarland","Presles",5),
  (273,"Kyle","Rivers","Rush","La Unión",8),
  (274,"Brock","Adkins","Daugherty","Bon Accord",9),
  (275,"Theodore","Freeman","David","Port Moody",2),
  (276,"Avram","Stewart","Owen","Pontianak",4),
  (277,"Hector","Kelley","Mccray","Mo i Rana",2),
  (278,"Jason","Livingston","Gaines","Ansfelden",9),
  (279,"Judah","Mercer","Booker","McCallum",8),
  (280,"Zeus","Woodard","Kaufman","Creil",1),
  (281,"Knox","King","Valdez","Guizhou",4),
  (282,"Zeus","Hunter","Case","Hard",2),
  (283,"Keane","Beach","Fletcher","Galway",7),
  (284,"Isaac","Martin","Strong","Hainan",3),
  (285,"Myles","Hickman","Murray","Ourense",10),
  (286,"Herrod","Cannon","Underwood","Masone",5),
  (287,"Hilel","Gutierrez","Gonzales","Rankweil",2),
  (288,"Jameson","Duke","Conway","Anamur",8),
  (289,"Clarke","Figueroa","Pate","Belfast",2),
  (290,"Octavius","Chan","Ellis","Paradise",8),
  (291,"Vincent","Pitts","Medina","Lanco",10),
  (292,"Acton","Brennan","Carter","Ukkel",5),
  (293,"Lev","Tyler","Stanton","Saint-Nazaire",9),
  (294,"Basil","Bowen","Ramsey","Mandal",8),
  (295,"Lamar","Hunter","Berger","Katowice",2),
  (296,"Graiden","Wilcox","Estrada","Sankt Ingbert",7),
  (297,"Lee","Faulkner","Key","Kędzierzyn-Koźle",4),
  (298,"Todd","Thornton","Ortega","Tynda",3),
  (299,"Jarrod","Quinn","Arnold","Te Puke",10),
  (300,"Henry","Hamilton","Best","Novosibirsk",6);
  
  
  INSERT INTO `vendedor` (`idVen`,`nombreVen`,`ap1Ven`,`ap2Ven`,`comision`)
VALUES
  (1,"Branden","Levy","Adkins","1.77"),
  (2,"Gary","Oneil","Aguilar","1.78"),
  (3,"Hamilton","Gross","Mayer","1.94"),
  (4,"Zeus","Cantrell","Kaufman","2.00"),
  (5,"Jakeem","Bradford","Beach","1.92"),
  (6,"Joseph","Donovan","Duran","1.81"),
  (7,"Duncan","Waters","Armstrong","1.91"),
  (8,"Walter","Neal","Patrick","2.19"),
  (9,"Felix","Burris","Glass","1.68"),
  (10,"Beck","Mcclure","Figueroa","1.89"),
  (11,"Tiger","Bruce","Talley","2.00"),
  (12,"Wayne","Farrell","Warner","2.12"),
  (13,"Zeph","Evans","Petty","2.28"),
  (14,"Marshall","Decker","Booker","2.03"),
  (15,"Mannix","Gibson","Woodard","1.79"),
  (16,"Maxwell","Hopper","Hurst","2.23"),
  (17,"Henry","Cooley","Martinez","1.71"),
  (18,"Gil","Wyatt","Bridges","1.87"),
  (19,"Nasim","Stark","Richardson","2.29"),
  (20,"Macaulay","Rivas","Key","2.16"),
  (21,"Zachery","Tucker","Alvarado","2.35"),
  (22,"Herman","Delacruz","Duncan","2.06"),
  (23,"Rajah","Kent","George","1.94"),
  (24,"Dante","Pate","Lowe","2.23"),
  (25,"Ivan","Martin","Mathews","2.07"),
  (26,"Neil","Hanson","Fuller","2.10"),
  (27,"Brennan","Holder","Hinton","2.23"),
  (28,"Kyle","Middleton","Bonner","2.06"),
  (29,"Orlando","Levine","Barron","2.29"),
  (30,"Kirk","Dennis","Cabrera","2.08"),
  (31,"Ashton","Myers","Delacruz","1.93"),
  (32,"Warren","Robertson","Barr","1.85"),
  (33,"Curran","Watkins","Raymond","2.00"),
  (34,"Reese","Bean","Porter","2.28"),
  (35,"Malachi","Lott","Hudson","2.04"),
  (36,"Deacon","Sanford","Madden","1.64"),
  (37,"Thor","Knapp","Lopez","1.76"),
  (38,"Theodore","Graves","Richards","2.05"),
  (39,"Chadwick","Valdez","Aguirre","1.62"),
  (40,"August","Smith","Berger","2.03"),
  (41,"Cedric","Valentine","Haley","1.58"),
  (42,"Chandler","Trevino","Malone","2.24"),
  (43,"Upton","Copeland","Tanner","2.24"),
  (44,"Octavius","Riggs","Malone","2.03"),
  (45,"Cade","Mccray","Cervantes","1.56"),
  (46,"Odysseus","Spence","Kane","2.32"),
  (47,"Lucius","Singleton","Alexander","1.60"),
  (48,"Colorado","Bonner","Horne","2.24"),
  (49,"Xanthus","Jenkins","Keller","1.39"),
  (50,"Calvin","Michael","Goodman","1.73");
INSERT INTO `vendedor` (`idVen`,`nombreVen`,`ap1Ven`,`ap2Ven`,`comision`)
VALUES
  (51,"Keaton","Navarro","Gibbs","1.75"),
  (52,"Abbot","Kline","Nielsen","2.23"),
  (53,"Bert","Case","Villarreal","1.92"),
  (54,"Gavin","Small","Holt","1.99"),
  (55,"Ezra","Pierce","George","2.07"),
  (56,"Adam","Warren","Walsh","2.02"),
  (57,"Lester","Roberts","Young","1.65"),
  (58,"Dillon","Franks","Cameron","1.62"),
  (59,"Amery","Schmidt","Cherry","1.86"),
  (60,"Michael","Chaney","Alston","1.97"),
  (61,"Kareem","Barr","Melton","1.68"),
  (62,"Aquila","Rich","Collier","1.99"),
  (63,"Hedley","Lloyd","Moore","1.55"),
  (64,"Lee","Maxwell","Whitney","1.38"),
  (65,"Axel","Schultz","Berry","1.81"),
  (66,"Todd","Madden","Russell","1.78"),
  (67,"Patrick","Valentine","Glass","1.98"),
  (68,"Colorado","Lindsey","Sargent","2.24"),
  (69,"Craig","Merrill","Clements","2.02"),
  (70,"Micah","Kline","Barron","2.17"),
  (71,"Ali","Gay","Gutierrez","2.44"),
  (72,"Wing","Howell","Hicks","1.81"),
  (73,"Herman","Holland","Atkins","2.36"),
  (74,"Peter","Morton","Burris","1.86"),
  (75,"Norman","Mullen","Rodriguez","2.04"),
  (76,"Calvin","Webb","Hubbard","2.20"),
  (77,"Jakeem","Glover","Palmer","2.52"),
  (78,"Donovan","Snyder","Valdez","2.00"),
  (79,"Jonah","Washington","Mcneil","1.68"),
  (80,"Jonah","Cardenas","Burton","2.17"),
  (81,"Jerome","Calderon","Hopkins","1.66"),
  (82,"Aladdin","Fisher","Simon","2.39"),
  (83,"Oren","Duncan","Boyle","1.92"),
  (84,"Cairo","Mcmahon","Byrd","1.64"),
  (85,"Porter","Mason","Montgomery","2.32"),
  (86,"Garrison","Ortiz","Branch","2.04"),
  (87,"Coby","Herman","Blair","2.23"),
  (88,"Reece","Hopper","Aguilar","1.69"),
  (89,"Boris","Middleton","Mcfarland","2.15"),
  (90,"Jerome","Bentley","Sandoval","1.89"),
  (91,"Nolan","Shepherd","Henderson","1.73"),
  (92,"Gary","Schneider","Mercer","1.87"),
  (93,"Wing","Moon","Bruce","1.93"),
  (94,"Kaseem","Simon","Harding","1.65"),
  (95,"Igor","Patterson","James","2.06"),
  (96,"Tyler","Chen","Kemp","2.06"),
  (97,"Keefe","Howe","Phillips","1.99"),
  (98,"William","Chandler","Hinton","2.11"),
  (99,"Arthur","Stafford","Fisher","2.25"),
  (100,"Matthew","Rivera","Taylor","1.56");
  
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (1,"1071.00","2022-08-16",271,86),
  (2,"1423.51","2020-05-18",119,9),
  (3,"1559.24","2021-08-25",40,9),
  (4,"734.71","2020-10-06",116,23),
  (5,"997.21","2022-07-30",295,26),
  (6,"1071.33","2021-06-07",194,68),
  (7,"1386.46","2022-09-24",9,64),
  (8,"1158.40","2021-03-04",224,99),
  (9,"1341.21","2023-01-26",47,84),
  (10,"1057.26","2022-02-04",32,17);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (11,"1015.95","2020-12-25",34,13),
  (12,"809.84","2022-11-14",81,36),
  (13,"886.23","2022-10-12",170,94),
  (14,"1057.52","2020-07-03",53,35),
  (15,"831.74","2021-12-16",275,52),
  (16,"1077.01","2022-01-31",145,62),
  (17,"1001.01","2022-03-08",147,98),
  (18,"1359.42","2020-03-20",220,65),
  (19,"958.33","2021-07-14",166,28),
  (20,"1156.48","2020-07-13",232,33);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (21,"540.47","2021-11-30",252,80),
  (22,"1078.66","2022-12-25",159,9),
  (23,"1263.29","2021-08-12",185,53),
  (24,"536.41","2022-08-04",89,96),
  (25,"859.49","2020-11-25",127,23),
  (26,"1734.78","2022-11-27",228,40),
  (27,"1031.11","2021-06-15",74,25),
  (28,"808.12","2022-03-25",264,84),
  (29,"830.14","2022-09-10",161,16),
  (30,"856.53","2022-03-02",198,67);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (31,"1000.31","2020-12-13",103,63),
  (32,"1201.80","2021-07-06",194,93),
  (33,"1445.69","2022-11-12",29,63),
  (34,"1018.86","2021-04-20",163,47),
  (35,"1350.63","2022-12-23",296,68),
  (36,"1368.09","2022-01-25",131,16),
  (37,"1099.57","2020-11-07",295,24),
  (38,"1570.36","2023-01-04",34,96),
  (39,"1072.92","2020-11-01",296,3),
  (40,"1201.24","2020-09-22",157,21);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (41,"756.46","2020-06-15",133,6),
  (42,"1098.60","2021-07-01",61,54),
  (43,"898.72","2020-01-10",44,36),
  (44,"1011.10","2021-08-07",50,15),
  (45,"1165.26","2020-07-19",290,47),
  (46,"1064.36","2022-11-17",135,96),
  (47,"718.26","2020-11-28",260,21),
  (48,"1361.15","2022-11-17",158,17),
  (49,"1180.35","2022-05-11",260,65),
  (50,"1047.77","2022-10-18",288,99);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (51,"983.41","2022-01-29",151,80),
  (52,"1010.98","2022-11-14",172,97),
  (53,"987.75","2021-07-05",210,100),
  (54,"955.94","2021-03-25",18,45),
  (55,"1108.94","2022-01-17",198,60),
  (56,"993.44","2020-04-10",143,50),
  (57,"1051.62","2020-03-12",47,54),
  (58,"1212.10","2020-04-24",126,76),
  (59,"678.07","2020-07-12",41,7),
  (60,"1039.24","2022-10-13",238,30);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (61,"825.05","2020-12-31",237,54),
  (62,"1317.68","2020-05-29",4,14),
  (63,"521.82","2022-10-30",257,40),
  (64,"851.89","2020-02-17",226,94),
  (65,"999.10","2020-01-19",198,33),
  (66,"828.82","2020-03-11",282,7),
  (67,"1503.58","2021-02-17",267,79),
  (68,"857.47","2021-06-11",270,61),
  (69,"1129.67","2020-09-15",165,38),
  (70,"742.41","2022-11-25",48,46);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (71,"950.36","2021-07-07",74,46),
  (72,"1445.04","2022-09-29",180,73),
  (73,"967.15","2022-11-15",258,68),
  (74,"724.93","2020-08-19",177,3),
  (75,"1045.90","2021-12-08",216,83),
  (76,"680.09","2020-07-20",299,87),
  (77,"1039.55","2020-04-22",64,54),
  (78,"956.26","2020-09-12",298,7),
  (79,"563.52","2020-09-08",294,46),
  (80,"672.06","2022-12-14",186,82);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (81,"1259.72","2021-02-03",213,82),
  (82,"970.32","2020-09-08",129,73),
  (83,"859.67","2023-02-03",90,38),
  (84,"816.84","2022-02-16",83,97),
  (85,"319.72","2022-11-21",106,11),
  (86,"1168.56","2021-06-03",86,42),
  (87,"1195.61","2023-02-12",184,71),
  (88,"1317.01","2022-11-28",199,91),
  (89,"1045.59","2022-05-11",269,70),
  (90,"874.67","2020-05-16",42,7);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (91,"953.09","2020-10-06",163,41),
  (92,"1083.43","2022-10-31",115,3),
  (93,"1030.28","2020-10-28",212,41),
  (94,"922.56","2020-06-29",130,82),
  (95,"1254.86","2020-06-29",203,46),
  (96,"702.72","2022-07-05",176,46),
  (97,"1206.01","2021-05-22",55,71),
  (98,"854.95","2020-02-05",298,15),
  (99,"1356.56","2021-11-20",180,19),
  (100,"1012.16","2020-02-23",296,46);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (101,"376.53","2021-05-30",161,31),
  (102,"852.01","2020-03-01",186,27),
  (103,"1170.01","2022-10-29",46,43),
  (104,"1173.44","2023-01-12",198,71),
  (105,"795.44","2020-05-09",198,10),
  (106,"1394.38","2021-05-30",31,56),
  (107,"1106.57","2022-10-21",125,18),
  (108,"962.14","2021-11-10",108,2),
  (109,"599.43","2023-02-11",181,61),
  (110,"707.58","2022-08-08",74,64);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (111,"1353.58","2020-06-17",268,65),
  (112,"1326.03","2021-01-25",215,74),
  (113,"1110.64","2022-08-13",33,97),
  (114,"969.59","2020-04-08",90,13),
  (115,"1031.66","2022-11-09",276,46),
  (116,"969.82","2023-02-20",69,13),
  (117,"1273.28","2020-10-10",113,26),
  (118,"983.56","2022-06-05",113,64),
  (119,"1387.04","2023-01-20",92,30),
  (120,"1157.45","2022-07-22",159,85);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (121,"1435.20","2021-07-22",32,23),
  (122,"1216.28","2021-04-09",295,70),
  (123,"1036.57","2021-12-10",287,57),
  (124,"1231.75","2020-04-13",278,38),
  (125,"962.37","2022-11-24",148,11),
  (126,"1189.83","2020-03-06",148,5),
  (127,"1162.86","2020-08-28",52,49),
  (128,"1150.02","2021-05-03",283,32),
  (129,"372.72","2021-04-27",211,61),
  (130,"1217.06","2020-10-02",123,76);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (131,"991.62","2021-05-12",241,29),
  (132,"919.97","2022-01-12",80,14),
  (133,"1569.45","2021-11-27",72,39),
  (134,"964.75","2022-07-30",247,63),
  (135,"1014.48","2021-09-19",253,96),
  (136,"1178.66","2020-12-25",206,12),
  (137,"1369.44","2022-07-04",296,45),
  (138,"788.10","2023-01-07",220,26),
  (139,"1008.46","2021-09-23",73,54),
  (140,"1094.74","2020-01-16",54,29);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (141,"810.39","2020-10-13",212,40),
  (142,"1002.73","2021-09-08",96,40),
  (143,"697.66","2020-07-07",176,66),
  (144,"1362.84","2021-03-17",159,42),
  (145,"1013.75","2022-01-05",197,22),
  (146,"1200.76","2022-07-21",233,61),
  (147,"871.04","2022-07-29",144,49),
  (148,"1262.67","2020-05-24",299,79),
  (149,"918.12","2021-12-21",15,78),
  (150,"843.40","2022-11-16",277,95);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (151,"594.84","2021-05-09",72,37),
  (152,"1114.72","2022-10-27",208,47),
  (153,"1497.25","2021-06-04",288,93),
  (154,"1013.21","2020-05-04",98,47),
  (155,"1126.66","2022-07-14",194,23),
  (156,"915.99","2022-02-08",85,69),
  (157,"563.00","2021-12-28",133,66),
  (158,"902.54","2023-02-21",146,69),
  (159,"1077.48","2021-03-02",191,85),
  (160,"837.80","2022-06-13",183,53);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (161,"959.56","2021-05-15",44,24),
  (162,"965.80","2022-07-25",59,87),
  (163,"971.22","2022-10-18",110,17),
  (164,"926.41","2020-01-19",121,62),
  (165,"1021.63","2022-01-21",170,28),
  (166,"929.72","2021-09-10",104,31),
  (167,"751.63","2021-12-13",192,20),
  (168,"1157.23","2021-09-21",152,64),
  (169,"576.68","2020-08-23",27,32),
  (170,"770.41","2023-01-06",243,24);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (171,"1242.25","2022-09-28",279,80),
  (172,"951.37","2020-07-25",235,41),
  (173,"863.28","2021-05-16",16,41),
  (174,"1614.35","2020-12-22",145,6),
  (175,"626.72","2020-07-11",124,99),
  (176,"1251.07","2021-10-18",270,86),
  (177,"809.83","2020-06-24",256,54),
  (178,"948.72","2021-09-30",109,46),
  (179,"1311.35","2020-08-20",82,10),
  (180,"861.91","2021-11-20",45,32);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (181,"852.40","2022-12-13",173,71),
  (182,"799.41","2020-05-04",254,8),
  (183,"775.77","2020-09-24",256,99),
  (184,"1237.13","2020-09-24",24,53),
  (185,"1412.78","2020-03-15",11,87),
  (186,"1159.69","2022-07-30",119,27),
  (187,"992.98","2021-06-18",277,61),
  (188,"1165.32","2022-07-15",213,94),
  (189,"859.82","2021-09-04",171,43),
  (190,"876.69","2021-11-19",62,7);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (191,"1027.74","2021-10-10",228,96),
  (192,"1063.52","2021-12-02",155,97),
  (193,"1024.75","2020-01-26",260,24),
  (194,"1143.64","2021-06-13",45,37),
  (195,"951.75","2020-09-01",295,29),
  (196,"849.79","2020-02-23",268,51),
  (197,"1282.18","2022-05-30",169,45),
  (198,"1301.85","2022-12-20",33,15),
  (199,"1532.15","2022-08-01",122,40),
  (200,"888.22","2021-12-09",299,40);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (201,"1309.15","2022-10-29",232,71),
  (202,"607.63","2020-02-03",288,30),
  (203,"694.51","2023-02-14",174,17),
  (204,"1260.65","2020-06-17",249,7),
  (205,"1487.05","2022-11-09",286,78),
  (206,"1119.27","2020-01-24",21,92),
  (207,"1254.09","2022-11-16",251,49),
  (208,"753.12","2021-02-05",83,12),
  (209,"695.32","2022-03-20",282,82),
  (210,"1379.17","2021-03-12",141,18);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (211,"1540.05","2020-12-16",14,66),
  (212,"456.10","2020-05-01",196,95),
  (213,"972.29","2022-11-13",50,17),
  (214,"735.70","2022-01-06",83,23),
  (215,"756.40","2022-03-31",183,8),
  (216,"578.46","2021-10-23",142,2),
  (217,"843.13","2020-05-16",174,36),
  (218,"1016.94","2021-07-24",57,72),
  (219,"593.52","2021-11-23",26,9),
  (220,"1407.19","2022-07-23",271,15);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (221,"1016.06","2021-05-30",222,33),
  (222,"886.19","2021-01-02",9,52),
  (223,"629.50","2021-11-10",204,64),
  (224,"1309.29","2022-09-26",131,38),
  (225,"968.31","2020-04-11",162,99),
  (226,"820.57","2022-04-21",277,94),
  (227,"1282.39","2021-03-11",100,73),
  (228,"857.43","2022-08-18",182,79),
  (229,"698.42","2021-08-04",253,9),
  (230,"1006.44","2021-01-22",228,3);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (231,"1033.17","2023-01-04",165,4),
  (232,"838.43","2021-03-26",54,24),
  (233,"712.11","2020-09-29",230,96),
  (234,"1559.85","2021-04-25",156,18),
  (235,"975.19","2021-03-09",204,44),
  (236,"725.76","2022-09-15",258,15),
  (237,"1059.94","2022-09-19",242,8),
  (238,"748.72","2020-10-22",299,55),
  (239,"1333.60","2022-05-12",153,56),
  (240,"1091.27","2022-11-21",268,41);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (241,"832.12","2023-01-06",220,96),
  (242,"1201.43","2022-01-21",178,99),
  (243,"1459.94","2022-09-20",281,33),
  (244,"1210.84","2020-06-08",123,42),
  (245,"772.01","2021-09-22",83,59),
  (246,"837.03","2020-08-20",216,62),
  (247,"962.04","2020-10-30",8,16),
  (248,"915.12","2021-12-07",27,92),
  (249,"1212.50","2020-01-09",2,77),
  (250,"1041.94","2020-06-30",86,14);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (251,"937.90","2022-05-23",82,21),
  (252,"1447.52","2021-08-11",100,17),
  (253,"1161.97","2020-10-17",172,2),
  (254,"621.37","2020-07-26",136,60),
  (255,"686.85","2022-01-01",4,63),
  (256,"919.31","2022-03-26",275,13),
  (257,"1471.00","2022-08-11",109,59),
  (258,"1059.48","2022-07-22",218,95),
  (259,"1147.94","2020-07-03",93,25),
  (260,"995.32","2022-03-12",268,62);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (261,"1151.84","2022-08-11",54,71),
  (262,"933.16","2022-08-12",21,72),
  (263,"725.56","2021-10-14",142,9),
  (264,"1130.86","2022-06-18",25,68),
  (265,"1118.75","2022-07-05",190,36),
  (266,"1184.39","2020-07-18",296,68),
  (267,"683.30","2020-08-13",283,38),
  (268,"1332.09","2020-01-27",123,10),
  (269,"651.19","2020-09-10",212,30),
  (270,"1124.90","2022-01-27",14,36);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (271,"1208.84","2020-07-04",15,35),
  (272,"880.65","2022-05-13",235,65),
  (273,"1280.60","2021-12-03",84,19),
  (274,"549.77","2020-01-20",161,25),
  (275,"1039.36","2021-04-18",163,3),
  (276,"926.66","2020-02-14",161,39),
  (277,"1027.19","2021-05-26",45,85),
  (278,"685.73","2021-03-11",149,38),
  (279,"1210.75","2022-12-11",258,8),
  (280,"838.01","2022-06-27",106,83);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (281,"1094.11","2022-10-24",291,12),
  (282,"1382.90","2022-11-09",285,35),
  (283,"1158.63","2021-12-26",66,59),
  (284,"727.51","2021-09-27",72,28),
  (285,"1033.13","2021-09-29",168,19),
  (286,"1112.83","2021-09-05",78,30),
  (287,"1093.64","2022-07-31",35,37),
  (288,"1394.13","2022-09-27",7,39),
  (289,"667.77","2021-05-28",222,63),
  (290,"568.97","2021-03-23",169,52);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (291,"1080.98","2021-07-02",102,72),
  (292,"1174.29","2021-06-11",281,68),
  (293,"899.49","2021-12-15",76,15),
  (294,"933.44","2020-12-08",265,46),
  (295,"953.10","2020-09-29",45,53),
  (296,"903.44","2022-09-18",144,42),
  (297,"1160.03","2022-12-19",286,67),
  (298,"1104.92","2020-03-16",269,92),
  (299,"503.62","2023-02-11",136,86),
  (300,"1424.41","2020-05-04",282,24);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (301,"1205.25","2021-04-30",288,41),
  (302,"1009.10","2022-11-26",165,86),
  (303,"527.09","2022-10-11",248,84),
  (304,"1255.72","2023-01-10",226,40),
  (305,"954.67","2021-12-30",22,15),
  (306,"1371.15","2022-06-04",155,13),
  (307,"1499.97","2022-05-12",177,36),
  (308,"406.51","2022-10-31",290,63),
  (309,"1374.76","2022-07-14",130,7),
  (310,"964.78","2021-12-23",296,83);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (311,"1048.96","2020-10-29",105,64),
  (312,"760.03","2022-07-16",281,4),
  (313,"1201.07","2020-09-19",229,28),
  (314,"988.27","2021-08-26",181,78),
  (315,"1298.41","2021-07-13",153,64),
  (316,"875.70","2020-06-06",249,33),
  (317,"1015.12","2021-10-24",229,51),
  (318,"975.22","2023-02-03",239,52),
  (319,"1220.55","2020-03-26",69,3),
  (320,"1125.57","2021-02-09",7,36);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (321,"867.10","2022-10-05",166,56),
  (322,"761.51","2022-10-08",137,96),
  (323,"828.24","2020-05-26",11,58),
  (324,"808.00","2021-04-11",50,50),
  (325,"991.75","2022-01-24",215,17),
  (326,"1423.85","2020-04-07",98,33),
  (327,"1253.04","2021-08-13",33,73),
  (328,"612.67","2022-10-06",213,65),
  (329,"1420.08","2022-02-02",193,5),
  (330,"771.93","2022-04-16",166,61);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (331,"999.63","2021-05-13",272,94),
  (332,"1352.19","2021-08-09",195,37),
  (333,"933.69","2021-11-28",129,92),
  (334,"859.61","2021-07-20",105,97),
  (335,"642.04","2022-08-17",86,71),
  (336,"1145.56","2022-10-25",157,12),
  (337,"1202.10","2021-03-15",15,60),
  (338,"1030.28","2022-12-29",172,4),
  (339,"1508.73","2022-06-26",160,70),
  (340,"986.29","2020-09-20",70,71);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (341,"1173.91","2022-05-24",291,61),
  (342,"942.48","2023-01-31",285,28),
  (343,"1015.94","2020-04-15",220,81),
  (344,"677.07","2020-08-11",166,65),
  (345,"1402.61","2022-03-21",229,72),
  (346,"1279.43","2022-10-11",102,71),
  (347,"1165.26","2020-09-12",133,92),
  (348,"1132.21","2022-01-28",288,8),
  (349,"1268.71","2022-07-21",154,44),
  (350,"842.70","2021-10-08",110,100);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (351,"1201.87","2021-05-21",96,52),
  (352,"740.95","2022-06-10",258,27),
  (353,"1177.89","2022-09-20",176,63),
  (354,"990.87","2020-04-22",200,47),
  (355,"917.00","2020-04-25",139,25),
  (356,"730.86","2020-09-22",239,36),
  (357,"1356.78","2021-10-20",62,55),
  (358,"1330.55","2022-03-10",28,90),
  (359,"1055.36","2021-07-19",17,29),
  (360,"967.29","2022-10-23",197,64);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (361,"1015.69","2021-10-30",171,27),
  (362,"1033.12","2021-01-10",162,56),
  (363,"1008.18","2021-02-21",296,1),
  (364,"1040.93","2020-04-20",96,96),
  (365,"907.69","2021-07-20",198,98),
  (366,"1113.72","2020-06-28",47,75),
  (367,"1231.07","2020-04-17",72,17),
  (368,"1116.06","2022-05-23",56,28),
  (369,"1770.39","2022-12-13",188,44),
  (370,"403.38","2022-07-18",59,19);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (371,"1046.88","2022-05-04",258,88),
  (372,"1591.96","2021-03-05",191,22),
  (373,"1063.34","2022-06-11",130,52),
  (374,"1125.69","2022-01-05",204,93),
  (375,"747.17","2022-09-28",186,57),
  (376,"775.07","2021-05-15",91,82),
  (377,"712.88","2021-04-27",3,18),
  (378,"1134.12","2022-03-29",228,25),
  (379,"1239.85","2021-10-04",244,13),
  (380,"945.51","2022-11-11",22,15);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (381,"948.46","2022-06-27",154,15),
  (382,"544.04","2023-02-13",261,39),
  (383,"734.21","2022-01-23",12,82),
  (384,"987.18","2021-08-17",22,87),
  (385,"369.35","2022-12-10",250,56),
  (386,"924.04","2021-10-30",273,18),
  (387,"1052.43","2021-03-31",282,80),
  (388,"659.44","2020-03-24",283,92),
  (389,"850.44","2021-09-30",123,52),
  (390,"1461.31","2022-05-02",141,4);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (391,"799.23","2020-08-23",268,11),
  (392,"829.97","2020-11-21",174,7),
  (393,"889.54","2021-11-12",112,15),
  (394,"870.80","2022-11-13",135,2),
  (395,"1022.34","2020-09-28",173,19),
  (396,"395.88","2020-06-08",85,72),
  (397,"959.19","2022-10-27",38,65),
  (398,"1068.46","2021-06-29",233,13),
  (399,"740.99","2022-10-28",109,75),
  (400,"727.42","2022-03-05",26,61);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (401,"833.49","2021-06-14",165,43),
  (402,"955.14","2020-01-18",144,3),
  (403,"935.11","2021-10-28",59,83),
  (404,"1151.84","2022-08-17",265,19),
  (405,"814.85","2023-02-27",163,69),
  (406,"727.06","2022-09-12",38,82),
  (407,"953.71","2020-12-22",177,83),
  (408,"1001.82","2021-07-02",85,51),
  (409,"1241.12","2020-10-02",149,80),
  (410,"875.44","2021-03-14",233,2);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (411,"1170.20","2021-08-27",177,91),
  (412,"840.49","2022-01-01",145,49),
  (413,"1377.83","2021-10-20",246,76),
  (414,"958.52","2020-11-04",276,35),
  (415,"1129.61","2020-01-20",97,51),
  (416,"749.41","2022-11-05",180,21),
  (417,"765.19","2021-07-18",273,51),
  (418,"867.71","2022-04-08",43,25),
  (419,"1017.32","2020-12-11",24,15),
  (420,"767.18","2021-10-16",284,26);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (421,"933.85","2021-04-24",288,11),
  (422,"1152.61","2022-06-05",130,7),
  (423,"963.10","2020-06-27",299,67),
  (424,"804.40","2021-07-05",144,80),
  (425,"928.11","2021-04-23",32,67),
  (426,"1154.25","2020-11-11",155,78),
  (427,"737.49","2022-08-11",82,39),
  (428,"687.30","2022-10-01",71,10),
  (429,"669.32","2021-10-29",170,66),
  (430,"572.85","2022-12-08",125,26);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (431,"686.45","2021-04-06",6,57),
  (432,"1148.75","2021-02-28",200,66),
  (433,"1458.37","2020-05-11",192,98),
  (434,"1007.11","2020-12-26",224,43),
  (435,"697.64","2020-07-29",57,100),
  (436,"1515.06","2022-11-16",221,98),
  (437,"710.41","2022-08-01",31,45),
  (438,"873.35","2022-08-21",61,76),
  (439,"1102.65","2020-11-25",229,17),
  (440,"901.74","2022-01-30",269,86);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (441,"981.10","2021-10-05",125,87),
  (442,"878.91","2022-11-25",292,88),
  (443,"1105.99","2021-05-09",118,17),
  (444,"827.21","2021-09-23",62,39),
  (445,"1006.90","2021-09-12",181,18),
  (446,"679.06","2020-01-08",201,50),
  (447,"1085.58","2021-06-23",187,24),
  (448,"673.30","2020-05-11",17,2),
  (449,"985.89","2022-12-04",259,90),
  (450,"1059.53","2023-01-27",271,10);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (451,"1241.20","2021-04-08",216,23),
  (452,"1491.64","2020-01-03",211,98),
  (453,"1153.35","2022-06-25",241,91),
  (454,"1173.78","2020-05-25",94,46),
  (455,"1360.79","2022-06-04",268,46),
  (456,"775.25","2022-02-23",231,27),
  (457,"1053.70","2021-04-15",33,48),
  (458,"715.76","2022-09-15",170,28),
  (459,"1133.71","2022-04-01",159,14),
  (460,"939.29","2021-10-12",102,74);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (461,"1378.14","2020-11-19",11,50),
  (462,"1177.43","2021-10-06",276,53),
  (463,"880.22","2021-11-17",173,34),
  (464,"775.21","2022-05-28",273,80),
  (465,"1282.49","2022-08-16",92,79),
  (466,"1295.09","2021-01-14",46,98),
  (467,"1135.78","2020-05-02",242,29),
  (468,"1152.82","2021-12-10",50,22),
  (469,"758.17","2020-09-30",162,79),
  (470,"897.83","2020-07-28",234,7);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (471,"1419.50","2021-08-31",102,13),
  (472,"1275.37","2022-07-22",59,78),
  (473,"1180.09","2020-07-22",280,53),
  (474,"1002.51","2022-08-26",73,60),
  (475,"559.51","2020-11-25",205,31),
  (476,"1094.82","2021-01-10",228,73),
  (477,"1133.24","2021-05-14",124,77),
  (478,"1047.77","2022-01-17",71,32),
  (479,"1115.11","2020-06-02",48,37),
  (480,"481.99","2023-02-09",279,25);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (481,"1234.42","2022-06-07",48,94),
  (482,"1607.81","2020-11-14",148,36),
  (483,"1169.01","2021-12-15",90,33),
  (484,"1125.93","2021-08-25",212,47),
  (485,"1021.58","2020-09-07",127,30),
  (486,"1035.01","2022-12-27",95,74),
  (487,"1414.09","2022-05-26",87,87),
  (488,"1294.16","2021-06-21",206,35),
  (489,"1059.53","2021-07-06",193,86),
  (490,"973.12","2021-11-30",96,66);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (491,"803.26","2021-04-13",147,56),
  (492,"993.40","2020-11-08",70,11),
  (493,"969.71","2022-10-25",109,69),
  (494,"1341.86","2022-09-22",177,62),
  (495,"1473.54","2022-03-20",159,45),
  (496,"1438.36","2021-01-28",225,45),
  (497,"883.23","2020-11-24",14,12),
  (498,"1303.70","2022-11-20",197,16),
  (499,"1052.93","2021-11-07",25,78),
  (500,"917.86","2020-04-29",175,98);
  
  INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (501,"595.99","2020-05-04",111,50),
  (502,"917.94","2022-04-06",148,12),
  (503,"1244.42","2022-12-25",240,37),
  (504,"1176.12","2020-03-11",234,6),
  (505,"1310.30","2020-07-31",205,76),
  (506,"624.95","2020-08-26",182,62),
  (507,"1353.77","2020-11-13",276,69),
  (508,"1155.49","2020-01-28",256,62),
  (509,"907.17","2022-06-02",246,9),
  (510,"987.12","2020-09-28",262,11);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (511,"555.42","2021-05-03",105,24),
  (512,"967.41","2021-09-08",192,62),
  (513,"802.35","2020-03-30",193,72),
  (514,"670.58","2021-04-13",156,29),
  (515,"1136.21","2021-11-23",187,71),
  (516,"824.33","2021-05-13",250,33),
  (517,"690.42","2020-04-18",106,52),
  (518,"1137.41","2021-06-30",54,66),
  (519,"870.36","2021-04-03",216,86),
  (520,"890.69","2021-03-03",50,45);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (521,"1040.16","2020-01-10",89,57),
  (522,"961.52","2021-06-15",136,48),
  (523,"543.95","2020-12-29",163,84),
  (524,"806.63","2023-01-22",63,64),
  (525,"984.34","2022-06-12",21,17),
  (526,"1441.86","2020-10-06",59,40),
  (527,"1026.88","2022-08-13",140,86),
  (528,"931.56","2021-09-28",31,73),
  (529,"1227.44","2020-06-20",248,64),
  (530,"868.98","2021-09-21",129,95);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (531,"930.13","2020-12-23",127,80),
  (532,"1027.51","2020-09-19",277,23),
  (533,"825.88","2020-10-21",32,77),
  (534,"1057.62","2021-03-29",163,31),
  (535,"859.71","2021-12-07",184,29),
  (536,"843.66","2022-05-16",52,96),
  (537,"820.95","2022-09-11",260,23),
  (538,"1019.56","2023-01-03",33,51),
  (539,"1208.75","2021-01-26",209,53),
  (540,"939.07","2021-08-13",198,15);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (541,"759.25","2021-07-21",140,22),
  (542,"1133.91","2022-03-10",102,22),
  (543,"1244.44","2020-01-12",78,5),
  (544,"686.03","2022-07-17",279,72),
  (545,"1327.72","2022-09-17",195,16),
  (546,"665.57","2021-01-19",133,61),
  (547,"798.68","2022-03-16",256,19),
  (548,"1160.26","2022-04-03",297,26),
  (549,"1016.36","2022-02-10",212,27),
  (550,"1040.39","2021-03-27",268,12);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (551,"591.92","2022-07-18",294,97),
  (552,"1626.50","2022-07-10",254,61),
  (553,"732.54","2021-10-10",293,89),
  (554,"1096.24","2022-05-22",40,81),
  (555,"1194.66","2022-03-17",226,92),
  (556,"1244.89","2021-07-26",207,25),
  (557,"1080.31","2022-03-14",259,73),
  (558,"1135.54","2021-08-01",206,94),
  (559,"1003.06","2022-12-20",96,51),
  (560,"1422.05","2021-02-09",99,43);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (561,"983.37","2021-10-17",294,39),
  (562,"847.47","2021-12-13",29,5),
  (563,"1073.86","2020-03-13",258,23),
  (564,"720.78","2021-03-14",40,73),
  (565,"883.39","2021-11-09",205,14),
  (566,"351.45","2020-07-22",213,38),
  (567,"1206.18","2023-02-19",173,8),
  (568,"874.98","2021-11-26",76,64),
  (569,"1039.37","2022-02-20",159,25),
  (570,"1432.34","2022-04-10",268,59);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (571,"854.62","2022-08-31",263,77),
  (572,"662.62","2020-09-11",266,61),
  (573,"697.60","2021-03-16",279,10),
  (574,"1373.84","2021-11-17",120,16),
  (575,"820.41","2021-01-06",139,24),
  (576,"1167.46","2022-08-24",3,5),
  (577,"1226.53","2023-01-21",136,56),
  (578,"1518.15","2021-10-31",146,11),
  (579,"698.17","2020-01-22",123,11),
  (580,"1406.99","2021-05-23",46,97);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (581,"920.18","2022-01-05",208,92),
  (582,"1136.45","2022-03-30",60,8),
  (583,"1057.75","2021-10-28",147,50),
  (584,"853.81","2021-01-08",22,32),
  (585,"932.88","2021-07-29",46,43),
  (586,"895.32","2020-06-30",118,13),
  (587,"1024.30","2023-01-04",182,48),
  (588,"1439.98","2021-05-07",134,24),
  (589,"1322.56","2020-02-14",159,35),
  (590,"1156.62","2020-06-04",46,46);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (591,"1201.51","2022-07-22",207,57),
  (592,"1063.06","2021-03-09",266,68),
  (593,"870.13","2020-01-04",154,87),
  (594,"1020.21","2020-08-03",43,57),
  (595,"758.72","2021-08-25",208,36),
  (596,"987.39","2022-02-13",60,43),
  (597,"834.49","2020-01-21",231,17),
  (598,"1132.68","2021-09-16",188,33),
  (599,"752.35","2022-02-08",37,20),
  (600,"1200.63","2022-02-06",270,88);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (601,"486.22","2023-02-22",232,81),
  (602,"555.07","2022-10-01",141,34),
  (603,"1369.45","2020-02-17",23,96),
  (604,"823.07","2022-12-18",120,4),
  (605,"766.85","2022-10-13",30,51),
  (606,"749.06","2021-09-25",169,40),
  (607,"1469.87","2022-01-23",88,50),
  (608,"829.84","2020-01-30",226,89),
  (609,"700.67","2021-10-20",254,11),
  (610,"1144.48","2022-12-01",227,58);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (611,"381.78","2021-02-20",157,26),
  (612,"700.74","2020-12-20",104,17),
  (613,"967.64","2021-01-03",91,66),
  (614,"1032.92","2022-03-25",8,87),
  (615,"1134.49","2020-02-19",284,35),
  (616,"1127.38","2023-02-12",212,79),
  (617,"945.05","2021-07-17",62,90),
  (618,"649.05","2020-01-02",249,72),
  (619,"820.87","2020-11-21",9,21),
  (620,"1149.95","2020-07-15",261,69);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (621,"1431.10","2021-02-22",181,18),
  (622,"957.08","2020-02-11",85,49),
  (623,"948.90","2020-01-19",39,64),
  (624,"831.39","2022-05-29",158,76),
  (625,"1127.99","2022-05-16",91,88),
  (626,"955.02","2020-01-18",9,33),
  (627,"687.91","2020-01-21",237,44),
  (628,"707.89","2023-02-13",188,1),
  (629,"1616.71","2020-09-29",288,80),
  (630,"1381.04","2022-06-09",121,17);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (631,"1121.46","2022-01-24",50,54),
  (632,"958.97","2021-06-11",112,94),
  (633,"869.19","2020-07-15",246,42),
  (634,"840.92","2023-02-05",201,41),
  (635,"1075.43","2021-03-15",284,88),
  (636,"1277.13","2022-12-18",15,2),
  (637,"919.51","2020-03-01",8,16),
  (638,"1071.62","2020-04-16",10,70),
  (639,"1102.42","2020-06-10",44,80),
  (640,"545.85","2021-07-14",22,10);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (641,"771.65","2022-09-30",103,88),
  (642,"588.14","2021-10-19",205,92),
  (643,"1059.15","2020-08-06",66,86),
  (644,"824.63","2020-03-23",188,41),
  (645,"813.06","2022-06-13",67,99),
  (646,"1158.71","2022-07-03",17,52),
  (647,"1100.40","2020-02-09",290,79),
  (648,"1014.31","2020-04-29",71,85),
  (649,"1152.05","2021-05-29",241,12),
  (650,"832.24","2022-10-31",176,11);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (651,"889.69","2021-04-19",147,93),
  (652,"1336.64","2020-02-03",242,13),
  (653,"926.92","2020-02-19",29,37),
  (654,"710.03","2022-02-08",216,52),
  (655,"1180.92","2021-09-26",247,36),
  (656,"926.10","2023-02-10",210,86),
  (657,"849.94","2022-11-12",10,98),
  (658,"818.07","2020-03-11",37,63),
  (659,"1379.16","2022-02-04",206,48),
  (660,"1014.97","2022-02-13",42,66);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (661,"973.41","2021-08-31",221,64),
  (662,"464.59","2022-01-17",134,85),
  (663,"1024.47","2021-10-02",286,94),
  (664,"1215.98","2021-07-30",294,36),
  (665,"585.14","2020-09-03",283,14),
  (666,"1077.37","2020-01-24",202,90),
  (667,"564.74","2020-01-24",82,46),
  (668,"1012.13","2020-08-31",36,50),
  (669,"714.79","2021-01-02",110,75),
  (670,"1445.95","2022-03-28",142,100);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (671,"750.75","2022-07-13",266,89),
  (672,"1027.21","2020-05-09",44,94),
  (673,"1186.47","2021-11-15",51,30),
  (674,"1006.47","2020-04-04",29,33),
  (675,"1341.84","2022-06-01",102,49),
  (676,"1241.10","2022-02-01",262,27),
  (677,"1053.19","2020-07-11",129,82),
  (678,"852.80","2022-04-03",277,13),
  (679,"912.57","2022-07-19",104,9),
  (680,"1022.64","2021-11-27",227,85);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (681,"874.16","2021-09-04",214,84),
  (682,"1299.20","2021-02-05",149,72),
  (683,"1509.87","2022-08-03",176,30),
  (684,"1170.16","2020-08-14",26,21),
  (685,"846.31","2022-07-24",119,33),
  (686,"1055.05","2021-09-17",13,26),
  (687,"1070.26","2021-05-11",85,100),
  (688,"1176.40","2022-01-23",180,16),
  (689,"579.66","2020-04-06",66,81),
  (690,"1001.29","2022-01-14",207,10);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (691,"876.39","2021-08-18",187,37),
  (692,"1031.45","2022-02-04",181,3),
  (693,"1108.39","2020-10-31",62,90),
  (694,"1061.04","2021-08-02",164,89),
  (695,"1288.15","2022-02-22",197,93),
  (696,"999.55","2022-12-21",172,80),
  (697,"1029.67","2022-04-11",183,40),
  (698,"804.92","2022-02-02",107,97),
  (699,"1351.00","2021-02-13",74,25),
  (700,"862.10","2021-03-22",88,37);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (701,"1101.35","2022-12-12",164,64),
  (702,"899.24","2020-02-18",184,21),
  (703,"1076.05","2020-10-28",205,78),
  (704,"1125.34","2021-06-19",264,4),
  (705,"804.56","2022-05-20",163,60),
  (706,"718.86","2020-05-19",153,3),
  (707,"1154.64","2021-08-12",44,73),
  (708,"1027.35","2020-11-05",122,96),
  (709,"1241.34","2022-05-19",22,73),
  (710,"1530.05","2020-12-15",114,37);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (711,"1283.92","2021-04-26",294,19),
  (712,"1493.42","2020-10-06",102,44),
  (713,"1179.23","2021-11-07",188,67),
  (714,"1224.43","2020-04-12",262,37),
  (715,"737.78","2021-01-09",125,22),
  (716,"1135.28","2020-12-13",164,2),
  (717,"785.22","2021-06-16",236,23),
  (718,"954.28","2021-02-22",214,93),
  (719,"625.42","2020-01-21",156,28),
  (720,"1163.98","2020-06-29",45,57);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (721,"717.84","2020-06-10",55,56),
  (722,"848.39","2021-02-15",75,5),
  (723,"924.31","2022-08-24",12,93),
  (724,"1097.32","2021-05-06",267,28),
  (725,"493.46","2021-10-05",55,9),
  (726,"1224.56","2021-12-09",232,40),
  (727,"1300.81","2021-08-08",222,55),
  (728,"1089.69","2021-05-26",117,14),
  (729,"1012.91","2021-01-14",63,9),
  (730,"1509.64","2021-12-17",282,69);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (731,"1195.20","2022-10-08",179,22),
  (732,"874.80","2020-10-06",133,6),
  (733,"1120.68","2020-11-20",281,63),
  (734,"734.55","2022-05-04",228,36),
  (735,"1070.72","2023-01-07",49,23),
  (736,"379.51","2020-12-28",138,68),
  (737,"814.01","2021-05-24",270,75),
  (738,"1249.49","2022-07-16",289,73),
  (739,"1209.06","2022-08-10",165,37),
  (740,"1018.37","2020-12-01",199,24);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (741,"1217.71","2020-08-26",29,49),
  (742,"1329.84","2020-07-08",206,65),
  (743,"994.26","2021-02-13",68,16),
  (744,"1036.41","2022-02-19",136,38),
  (745,"1251.01","2020-05-14",242,29),
  (746,"872.53","2021-10-19",34,64),
  (747,"815.20","2020-03-12",126,99),
  (748,"1054.05","2021-04-20",170,78),
  (749,"591.51","2023-02-24",129,59),
  (750,"906.59","2022-07-02",265,56);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (751,"843.85","2020-05-16",181,10),
  (752,"686.51","2020-06-23",118,13),
  (753,"1034.22","2020-02-25",3,88),
  (754,"932.68","2021-11-16",211,79),
  (755,"1004.78","2021-06-13",155,33),
  (756,"1016.41","2021-10-13",272,49),
  (757,"845.27","2020-05-18",78,63),
  (758,"806.57","2022-10-26",15,80),
  (759,"830.19","2021-07-05",20,16),
  (760,"1073.63","2021-07-06",74,25);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (761,"862.14","2022-05-17",17,88),
  (762,"257.34","2022-08-10",208,44),
  (763,"681.08","2020-06-14",294,29),
  (764,"1107.17","2020-12-15",170,65),
  (765,"961.37","2022-07-12",86,97),
  (766,"1253.58","2021-03-01",269,93),
  (767,"1091.65","2020-06-15",122,39),
  (768,"1338.77","2022-07-29",216,32),
  (769,"903.25","2022-01-19",108,82),
  (770,"957.06","2022-01-20",2,4);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (771,"1323.14","2022-06-04",32,3),
  (772,"721.93","2022-02-12",102,57),
  (773,"967.98","2020-11-06",299,60),
  (774,"1243.82","2022-01-20",298,23),
  (775,"887.32","2020-06-09",254,59),
  (776,"1532.97","2023-01-31",21,50),
  (777,"1276.87","2021-01-23",245,28),
  (778,"718.19","2020-01-08",159,84),
  (779,"1050.11","2020-02-15",82,48),
  (780,"1224.41","2023-02-27",215,88);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (781,"902.32","2022-11-30",281,100),
  (782,"1032.75","2022-04-03",134,84),
  (783,"978.78","2021-11-21",39,58),
  (784,"979.85","2021-01-16",112,3),
  (785,"1046.55","2022-11-14",263,23),
  (786,"863.32","2020-04-01",252,27),
  (787,"1267.52","2022-11-16",145,34),
  (788,"1501.33","2020-06-20",73,100),
  (789,"1167.37","2021-01-16",191,67),
  (790,"996.38","2021-03-10",190,24);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (791,"973.64","2021-11-25",224,68),
  (792,"1028.42","2022-04-28",110,77),
  (793,"976.63","2022-10-13",104,24),
  (794,"778.09","2022-05-30",281,71),
  (795,"789.23","2020-04-18",3,69),
  (796,"1300.67","2021-11-27",39,41),
  (797,"1061.54","2022-08-30",205,46),
  (798,"1444.39","2020-05-14",155,8),
  (799,"745.00","2020-01-23",74,60),
  (800,"1002.70","2021-03-15",297,91);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (801,"989.61","2020-07-29",150,32),
  (802,"723.42","2021-05-21",33,3),
  (803,"1327.78","2021-12-19",245,17),
  (804,"907.20","2021-05-08",128,37),
  (805,"692.71","2021-02-06",64,52),
  (806,"1410.72","2020-08-11",14,45),
  (807,"1409.73","2022-10-19",201,71),
  (808,"1097.45","2022-09-19",58,61),
  (809,"762.18","2022-09-14",249,48),
  (810,"938.69","2020-10-31",112,22);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (811,"661.01","2021-07-03",160,23),
  (812,"1070.61","2022-06-10",238,18),
  (813,"715.73","2021-07-24",7,68),
  (814,"681.96","2022-01-16",132,35),
  (815,"892.07","2022-08-22",57,70),
  (816,"690.76","2022-01-18",196,86),
  (817,"1155.18","2021-03-23",41,52),
  (818,"657.05","2022-11-17",102,70),
  (819,"669.24","2021-04-21",258,96),
  (820,"1235.98","2022-02-03",255,15);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (821,"903.79","2020-07-06",143,17),
  (822,"993.19","2023-02-05",193,84),
  (823,"818.66","2020-12-04",183,9),
  (824,"1052.94","2020-08-04",44,14),
  (825,"655.91","2020-09-02",222,65),
  (826,"1003.94","2020-09-17",33,56),
  (827,"975.25","2022-09-17",167,82),
  (828,"1004.68","2021-03-06",181,64),
  (829,"1237.23","2022-05-13",80,44),
  (830,"856.95","2021-05-16",287,76);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (831,"544.45","2020-12-04",277,30),
  (832,"606.06","2020-08-09",47,54),
  (833,"886.12","2022-05-17",248,58),
  (834,"1115.61","2023-02-16",297,12),
  (835,"814.32","2021-04-16",279,29),
  (836,"786.76","2021-08-28",293,41),
  (837,"760.37","2022-03-09",296,5),
  (838,"874.13","2020-02-05",6,1),
  (839,"1077.27","2023-01-04",245,69),
  (840,"1199.99","2020-05-01",193,46);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (841,"1190.22","2021-11-16",252,15),
  (842,"1182.04","2022-11-21",199,10),
  (843,"1075.97","2021-03-22",290,18),
  (844,"1025.50","2020-04-29",56,70),
  (845,"1195.23","2022-05-17",12,58),
  (846,"1246.56","2020-11-07",190,27),
  (847,"665.95","2020-07-29",287,43),
  (848,"858.51","2021-09-29",165,37),
  (849,"961.19","2021-04-22",124,76),
  (850,"1167.51","2022-02-10",43,61);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (851,"1111.65","2020-12-05",255,44),
  (852,"992.47","2022-08-08",160,78),
  (853,"1052.10","2020-11-16",40,80),
  (854,"882.53","2022-02-18",164,97),
  (855,"1235.93","2020-01-02",198,92),
  (856,"1103.03","2020-03-03",143,37),
  (857,"599.54","2022-03-02",113,27),
  (858,"663.08","2021-06-11",169,49),
  (859,"1106.88","2020-10-02",198,8),
  (860,"926.16","2020-12-06",237,79);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (861,"995.23","2020-09-23",259,50),
  (862,"977.86","2021-11-11",147,25),
  (863,"875.85","2021-10-19",262,67),
  (864,"1019.94","2023-01-24",280,62),
  (865,"883.97","2022-09-22",185,49),
  (866,"791.40","2021-07-11",158,15),
  (867,"1616.86","2022-08-19",2,63),
  (868,"1034.08","2021-05-10",286,30),
  (869,"1202.84","2020-06-29",17,53),
  (870,"934.71","2020-03-08",132,3);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (871,"1239.81","2022-04-17",4,3),
  (872,"754.19","2021-04-20",51,31),
  (873,"1031.82","2021-08-18",181,27),
  (874,"945.72","2022-11-06",297,44),
  (875,"1608.01","2020-02-03",181,14),
  (876,"1012.46","2022-04-15",136,93),
  (877,"705.66","2020-04-04",206,32),
  (878,"985.61","2022-06-30",281,45),
  (879,"1515.62","2022-10-16",104,17),
  (880,"1128.81","2021-09-02",300,23);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (881,"970.23","2022-11-14",260,74),
  (882,"855.91","2020-02-26",252,20),
  (883,"1337.59","2022-01-27",115,73),
  (884,"1315.88","2020-05-24",36,89),
  (885,"666.44","2021-09-18",234,77),
  (886,"783.10","2021-10-07",155,91),
  (887,"928.24","2021-02-27",94,46),
  (888,"950.15","2023-02-22",25,91),
  (889,"1083.89","2022-05-03",38,44),
  (890,"1454.18","2021-08-09",131,4);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (891,"1085.59","2021-06-06",34,55),
  (892,"831.10","2020-08-01",60,56),
  (893,"1104.84","2022-02-14",79,22),
  (894,"1063.28","2021-04-23",278,74),
  (895,"768.05","2020-08-05",118,99),
  (896,"863.91","2022-12-08",115,25),
  (897,"1176.18","2020-05-22",270,46),
  (898,"804.21","2020-02-14",118,25),
  (899,"1180.58","2020-11-10",101,2),
  (900,"1033.35","2021-07-28",51,74);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (901,"1281.14","2020-03-04",297,85),
  (902,"713.54","2023-02-07",190,89),
  (903,"1136.09","2022-06-29",9,2),
  (904,"899.50","2022-07-23",265,5),
  (905,"1131.54","2022-09-08",21,36),
  (906,"1102.35","2020-12-16",233,29),
  (907,"1186.19","2022-08-06",168,55),
  (908,"903.27","2021-10-16",19,36),
  (909,"853.17","2021-01-24",43,7),
  (910,"1227.83","2022-04-16",163,38);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (911,"1171.53","2020-08-20",252,57),
  (912,"1273.67","2022-04-28",205,25),
  (913,"1277.77","2022-06-25",199,40),
  (914,"731.79","2021-09-11",191,61),
  (915,"1352.83","2020-05-27",250,99),
  (916,"1123.92","2021-01-05",51,40),
  (917,"1210.37","2021-07-21",270,58),
  (918,"1251.37","2022-06-16",115,67),
  (919,"1230.16","2021-08-27",129,51),
  (920,"1105.17","2022-03-15",81,3);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (921,"1028.61","2020-04-12",71,65),
  (922,"965.64","2022-02-27",166,45),
  (923,"1184.45","2021-04-18",208,86),
  (924,"900.34","2022-08-14",70,28),
  (925,"959.32","2022-05-03",177,59),
  (926,"1034.79","2020-08-26",31,73),
  (927,"783.76","2022-05-29",27,37),
  (928,"1049.77","2020-07-17",82,3),
  (929,"1144.12","2022-08-08",103,83),
  (930,"1149.58","2022-02-19",247,30);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (931,"1206.44","2022-02-07",50,37),
  (932,"876.69","2022-06-11",125,4),
  (933,"582.78","2022-02-16",173,76),
  (934,"719.74","2020-02-25",141,96),
  (935,"896.32","2021-03-24",125,43),
  (936,"909.37","2020-12-14",29,85),
  (937,"927.36","2022-11-03",239,59),
  (938,"1559.80","2022-07-31",88,82),
  (939,"685.46","2023-01-14",262,3),
  (940,"868.25","2020-07-11",281,68);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (941,"1516.42","2020-07-31",140,28),
  (942,"892.10","2020-04-16",92,47),
  (943,"1005.73","2021-03-31",151,54),
  (944,"1375.17","2021-01-02",148,36),
  (945,"1096.44","2022-10-04",86,67),
  (946,"1234.45","2022-08-13",168,38),
  (947,"1107.53","2022-12-04",71,81),
  (948,"927.90","2020-07-06",55,35),
  (949,"1170.25","2021-09-16",118,27),
  (950,"700.01","2021-05-23",208,90);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (951,"1246.02","2021-11-14",289,83),
  (952,"92.57","2020-07-23",165,96),
  (953,"1021.26","2022-06-12",22,29),
  (954,"669.15","2020-05-20",12,49),
  (955,"1410.47","2020-06-01",137,54),
  (956,"883.07","2020-09-03",124,10),
  (957,"638.77","2020-10-17",31,83),
  (958,"1429.39","2021-02-22",184,15),
  (959,"860.18","2021-05-03",232,97),
  (960,"1100.39","2021-04-07",16,2);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (961,"1000.27","2020-05-05",290,100),
  (962,"1077.67","2022-06-29",89,77),
  (963,"1065.63","2020-11-15",291,91),
  (964,"753.10","2022-05-09",63,9),
  (965,"773.66","2020-09-01",142,48),
  (966,"1070.80","2022-01-15",134,51),
  (967,"937.79","2022-10-19",113,84),
  (968,"1270.41","2022-10-28",28,81),
  (969,"970.52","2021-06-19",70,77),
  (970,"910.90","2021-06-04",26,14);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (971,"1197.55","2020-07-28",122,14),
  (972,"1015.24","2021-08-04",37,22),
  (973,"1109.54","2020-08-21",282,40),
  (974,"1068.42","2021-11-09",245,5),
  (975,"702.64","2021-04-18",261,78),
  (976,"926.65","2021-09-11",199,14),
  (977,"1194.34","2020-02-22",57,56),
  (978,"1432.42","2022-04-24",246,50),
  (979,"1249.80","2022-07-11",83,97),
  (980,"1221.70","2022-09-25",195,1);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (981,"1133.11","2020-10-08",74,29),
  (982,"993.70","2021-01-11",260,65),
  (983,"1216.04","2020-12-23",299,92),
  (984,"1185.65","2020-02-21",13,64),
  (985,"1201.72","2021-07-19",96,92),
  (986,"1211.87","2021-07-28",165,7),
  (987,"580.61","2022-02-25",247,70),
  (988,"938.74","2022-03-03",171,46),
  (989,"552.25","2022-08-18",217,36),
  (990,"1023.26","2020-01-22",180,84);
INSERT INTO `venta` (`idVenta`,`totalVenta`,`fechaVenta`,`idComprador`,`idVendedor`)
VALUES
  (991,"937.97","2021-01-27",27,77),
  (992,"629.33","2021-08-21",78,37),
  (993,"600.21","2020-05-26",146,4),
  (994,"766.28","2020-01-22",192,66),
  (995,"805.90","2021-07-18",145,48),
  (996,"943.49","2020-04-29",35,47),
  (997,"960.43","2022-08-20",75,48),
  (998,"1423.63","2022-11-17",92,43),
  (999,"992.91","2021-10-07",242,13),
  (1000,"1216.75","2020-12-10",45,8);