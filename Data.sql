INSERT INTO Monastery (name, location_lat, location_long, established_year, architecture_style, description, image_url, vr_tour_url) VALUES
('Rumtek Monastery', 27.325600, 88.613200, 1966, 'Kagyu Tibetan', 'Largest monastery near Gangtok, seat of Karma Kagyu school, with stunning golden stupa of the 16th Karmapa.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Rumtek_Monastery_Sikkim_India.jpg/640px-Rumtek_Monastery_Sikkim_India.jpg', 'https://example.com/rumtek360'),

('Enchey Monastery', 27.338000, 88.611800, 1909, 'Nyingma Tibetan', 'Sacred 200-year-old Vajrayana monastery located 3 km from Gangtok, famous for masked dance festivals.', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Enchey_Monastery.jpg', 'https://example.com/enchey360'),

('Pemayangtse Monastery', 27.292000, 88.181000, 1705, 'Nyingma Tibetan', 'Historic monastery near Pelling founded by Lama Lhatsun Chempo, known for exquisite wooden sculptures.', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Pemayangtse_Monastery.jpg', 'https://example.com/pemayangtse360'),

('Tashiding Monastery', 27.328000, 88.280000, 1717, 'Nyingma Tibetan', 'Sacred monastery built atop a heart-shaped hill between Rathong and Rangeet rivers, site of Bhumchu Festival.', 'https://upload.wikimedia.org/wikipedia/commons/5/50/Tashiding_Monastery_Sikkim_India.jpg', 'https://example.com/tashiding360'),

('Ralang Monastery', 27.110000, 88.291000, 1995, 'Kagyu Tibetan', 'Largest Kagyu monastery in South Sikkim, renowned for annual Pang Lhabsol festival and rare thangkas.', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Ralang_Monastery.jpg', 'https://example.com/ralang360'),

('Sanga Choeling Monastery', 27.300000, 88.180000, 1697, 'Nyingma Tibetan', 'One of the oldest monasteries in Sikkim, perched on a ridge above Pelling, accessible by short trek.', 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Sanga_Choeling_Monastery.jpg', 'https://example.com/sanga360'),

('Tholung Monastery', 27.700000, 88.583000, 1789, 'Nyingma Tibetan', 'Remote gompa in Dzongu, North Sikkim, preserving ancient scriptures and relics, UNESCO tentative site.', 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Tholung_monastery.jpg', 'https://example.com/tholung360'),

('Phensang Monastery', 27.392100, 88.611200, 1721, 'Nyingma Tibetan', 'One of the largest Nyingma monasteries in Sikkim, rebuilt after fire in 1947, hosts annual Cham dances.', 'https://upload.wikimedia.org/wikipedia/commons/2/25/Phensang_Monastery.jpg', 'https://example.com/phanseng360'),

('Kartok Monastery', 27.385100, 88.254100, 1840, 'Nyingma Tibetan', 'Small but revered monastery near Yuksom with vibrant murals, associated with coronation of first Chogyal.', 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Kartok_Monastery.jpg', 'https://example.com/kartok360'),

('Ngadak Monastery', 27.174800, 88.362500, 17, 'Nyingma Tibetan', 'Ancient monastery near Namchi originally built by Chogyal Gyurmed Namgyal, later restored after earthquake.', 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Ngadak_Monastery.jpg', 'https://example.com/ngadak360'),

('Samdruptse Monastery', 27.153300, 88.361800, 2004, 'Modern Tibetan', 'Famous for the 135-ft golden statue of Guru Padmasambhava, major pilgrimage and tourist site near Namchi.', 'https://upload.wikimedia.org/wikipedia/commons/5/59/Samdruptse_monastery_statue.jpg', 'https://example.com/samdruptse360'),

('Lingdum (Ranka) Monastery', 27.354800, 88.671100, 1999, 'Zurman Kagyu Tibetan', 'Modern monastery east of Gangtok with striking murals and architecture, filming spot for Bollywood movies.', 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Lingdum_Monastery.jpg', 'https://example.com/ranka360');
SELECT * FROM Monastery

-- 2. Transport Options
INSERT INTO Transport (monastery_id, type, route_details, timings, fare) VALUES
(1, 'bus', 'Bus from Gangtok to Rumtek base, then 0.5 km uphill walk.', '6:00 AM – 6:00 PM', 50.00),
(2, 'taxi', 'Taxi available from Gangtok city center (3 km)', '9:00 AM – 5:00 PM', 150.00),
(3, 'bus', 'Bus/taxi from Pelling town, 2 km walk up hill', '9:00 AM – 6:00 PM', 100.00),
(4, 'taxi', 'Taxi from Pelling or Ravangla with drop near the hill base', '8:00 AM – 5:00 PM', 120.00),
(5, 'taxi', 'Shared/private taxi from Ravangla for 6 km trek to monastery', '7:00 AM – 6:00 PM', 200.00),
(6, 'trek', '4 km uphill trek from Pemayangtse through forest', 'Sunrise to Sunset', 0.00),
(7, 'trek', 'Remote 20 km hike via Linzey trail', 'Permit required', 0.00);

-- 3. Events & Festivals
INSERT INTO Event (monastery_id, name, description, start_date, end_date, booking_available) VALUES
(5, 'Pang Lhabsol Festival', 'Festival to honor Mount Kangchenjunga with Kagyed dance.', '2025-09-01', '2025-09-05', TRUE),
(4, 'Bumchu Festival', 'Holy water ritual celebrated on 14-15 of Tibetan 1st month (~Feb/March).', '2025-03-10', '2025-03-12', FALSE),
(2, 'Cham Mask Dance', 'Traditional Cham dance during winter months.', '2025-01-15', '2025-01-16', FALSE);

-- 4. Users
INSERT INTO Users (name, email, phone, language_preference, role) VALUES
('Alice Singh', 'alice@example.com', '9876543210', 'English', 'tourist'),
('Tashi Lama', 'tashi@example.com', '9123456780', 'Tibetan', 'researcher'),
('Dorjee Rai', 'dorjee@example.com', '9012345678', 'Nepali', 'archivist');

-- 5. Bookings
INSERT INTO Booking (user_id, event_id, status, payment_details) VALUES
(1, 1, 'confirmed', 'Paid via credit card, txn_ABC123'),
(2, 1, 'pending', 'Cashh on spot');

-- 6. Digital Archives
INSERT INTO Archive (monastery_id, type, title, language, file_links, tags, ai_summary) VALUES
(4, 'manuscript', 'Tashiding Bumchu Ritual Text', 'Tibetan', ARRAY['https://bucket.s3/tashiding/bumchu1.jpg'], ARRAY['ritual','manuscript','18th century'], 'Description of Bumchu ceremony rituals.'),
(5, 'mural', 'Ralang Thangka Collection', 'Tibetan', ARRAY['https://bucket.s3/ralang/thangka1.jpg'], ARRAY['thangka','festival','Kagyu'], 'Collection of thangka paintings housed at Ralang Monastery.');

INSERT INTO Monastery (name, established_year) VALUES
('Old Rumtek Monastery', 1734),
('Amba Mamring Monastery', 1929),
('Bakcham Monastery', 1966),
('Bongyong Ani Gonpa', 2005),
('Burtuk Ugen Pemacholing Monastery', 2000),
('Choten Monastery', 1946),
('Dichen Choling Monastery', 1987),
('Dolepchen Boudha Sanskrit Monastery', 1991),
('Duchi Gyalton Monastery', 2002),
('Kagon Tshechhogling Monastery', 1977),
('Kathog Dorjeden Monastery', 1840),
('Khatek Pema Choling Monastery', 1985),
('Lingdok Tsangkhar Monastery', 1862),
('Lingdum (Ranka) Monastery', 1999),
('Linkoed Monastery', 1840),
('Martam Namdzong', 1917),
('Martam Tsangkhar Monastery', 1951),
('Pabyuk Monastery', 1875),
('Pandam Monastery', 1955),
('Pathing Matsang Monastery', 1860),
('Radong Tensung Monastery', 1959),
('Raloong Monastery', 1956),
('Ray Mindu Katenling Monastery', 1873),
('Rinak Monastery', 1841),
('Rumtek Dharma Chakra Centre', 1962),
('Samdong Mintokgang Monastery', 1913),
('Sang Monastery', 1912),
('Sang-Ngor Monastery', 1961),
('Simig Monastery', 1843),
('Singtam Monastery', 1992),
('Sumon Thubten Gatsalling Monastery', 1924),
('Taglung Domsumling Monastery', 1987),
('Taktse Ani Gonpa', 1980),
('Thumon Monastery', 1921),
('Tingkye Gonjang Monastery', 1981),
('Tsangek Monastery', 1888),
('Tsulakhang Monastery', 1898),
('Karthok Monastery', NULL),
('Rhenock Monastery', NULL),
('Simik Monastery', NULL),
('Barphog Monastery', 1957),
('Gor Monastery', 2002),
('Hee Gyathang Monastery', 1914),
('Kabi Monastery', 1911),
('Lachen Monastery', 1858),
('Lachen Thangu Monastery', 1947),
('Lachung Monastery', 1850),
('Lingthem Gonpa', 1857),
('Malam Monastery', 1928),
('Nage Monastery', 1937),
('Ringyim Monastery', 1852),
('Shagyong Monastery', 1940),
('Ship Kunzang Choling Monastery', 1900),
('Silem Phagyal Monastery', 1967),
('Singchit Ngadag Monastery', 1890),
('Sontam Tensung Monastery', 1884),
('Tareng Gonpa', 1929),
('Tholung Monastery', 1789),
('Tingbung Monastery', 1843),
('Tsawang Choling Monastery', 1936),
('Tsungthang Monastery', 1788),
('Chawayng Ani Monastery', NULL),
('Ben Monastery', 1902),
('Bon Monastery', 1980),
('Bumtar Namdroling Monastery', 1939),
('Burmiok Norbugang Monastery', 1992),
('Doling Monastery', 1718),
('Gagyong Monastery', 2005),
('Kewzing Monastery', 1974),
('Linge Phagyal Monastery', 1862),
('Malli Tashi Chodarling Monastery', 1915),
('Mangbro Monastery', 1790),
('Namthang Norbu Tsho-Ling Monastery', 1914),
('Namthang Nyima Choling Monastery', 1997),
('Namtse Ahaley Monastery', 1948),
('Namtse Nga-Dag Monastery', 1684),
('Parbing Monastery', 1935),
('Rabong Kunphenling Tsechu Monastery', 1972),
('Rabong Monastery', 2006),
('Ralong Monastery', 1730),
('Ralong Palchen Choling Monastery', 1995),
('Sangmo Sharchog Bephug Monastery', 1921),
('Serdup Choling Monastery', 1967),
('Sorok Tamang Monastery', 1962),
('Suiram Risung Monastery', 1995),
('Tekling Dzokchen Monastery', 1936),
('Wok Pabong Monastery', 1915),
('Yangang Changchub Tamu Monastery', 1982),
('Yangang Gonpa', 1787);
SELECT * FROM Monastery;
SELECT * FROM Transport;
SELECT * FROM Event;
SELECT * FROM Users;
SELECT * FROM Booking;
SELECT * FROM Archive;