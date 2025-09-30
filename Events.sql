ALTER TABLE Event
ADD COLUMN timing_description VARCHAR(255);
ALTER TABLE Event
ALTER COLUMN monastery_id DROP NOT NULL;
-- CREATE TABLE EventMonastery (
--     event_id INT REFERENCES Event(event_id) ON DELETE CASCADE,
--     monastery_id INT REFERENCES Monastery(monastery_id) ON DELETE CASCADE,
--     PRIMARY KEY (event_id, monastery_id)
-- );

-- events data insertion..
INSERT INTO Event (name, description, timing_description)
VALUES (
    'Losar (Tibetan New Year)',
    'Cleansing rituals, gifting tsampa (roasted barley), Cham dances by masked monks',
    'Late Jan–Mar (based on Tibetan lunar calendar)'
);

-- Suppose Rumtek monastery_id = 1
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (1, 1);
INSERT INTO Event (name, description, timing_description)
VALUES (
    'Saga Dawa',
    'Commemorates Buddha’s birth, enlightenment, and nirvana. Features prayers, processions, and butter lamps',
    'Full Moon, May–June'
);

-- Suppose Tsuklakhang monastery_id = 2
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (2, 2);
INSERT INTO Event (name, description, timing_description)
VALUES (
    'Bhumchu (Holy Water Festival)',
    'Opening of a sacred vase; monks interpret water levels to predict the coming year; holy water is distributed',
    '14th–15th day of 1st Tibetan lunar month (Feb–Mar)'
);
-- Suppose Tashiding monastery_id = 3
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (3, 3);

INSERT INTO Event (name, description, timing_description)
VALUES (
    'Pang Lhabsol',
    'Pays homage to Mount Kanchenjunga. Includes Pangtoed Chaam (warrior mask dance) symbolizing unity of Lepcha and Bhutia communities',
    '15th day of 7th Tibetan lunar month (~Aug–Sep)'
);

-- Suppose Tsuklakhang = 2, Pemayangtse = 4
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (4, 2);
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (4, 4);
INSERT INTO Event (name, description, timing_description)
VALUES (
    'Kagyed',
    'Monastic ceremony involving sacred dances, interspersed with comic interludes, held six days before Losoong',
    '28th–29th day of 10th Tibetan lunar month (early December)'
);

-- Suppose Pemayangtse = 4, Tsuklakhang = 2
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (5, 4);
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (5, 2);
INSERT INTO Event (name, description, timing_description)
VALUES (
    'Losoong / Namsoong (Sikkimese New Year)',
    'Harvest festival of the Bhutia and Lepcha communities. Features Cham dances, archery, feasting, and burning of effigies',
    'Early–mid December (1st day of 11th Tibetan lunar month)'
);

-- Suppose Phodong = 5, Rumtek = 1
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (6, 5);
INSERT INTO EventMonastery (event_id, monastery_id) VALUES (6, 1);
INSERT INTO Event (name, description, timing_description)
VALUES (
    'Dasain (Durga Puja)',
    'Ten-day festival marking victory of good over evil, with rituals, community feasts, and performances',
    'September–October'
);
INSERT INTO Event (name, description, timing_description, booking_available)
VALUES (
    'Gangtok Food & Culture Festival',
    'Culinary and cultural festival with Sikkimese delicacies, music, and dance performances',
    'Entire December',
    TRUE
);
SELECT * FROM Event
SELECT * FROM Monastery
SELECT * FROM EventMonastery