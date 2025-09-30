CREATE TABLE Monastery (
    monastery_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    location_lat DECIMAL(9,6),
    location_long DECIMAL(9,6),
    established_year INT,
    architecture_style VARCHAR(100),
    description TEXT,
    image_url TEXT,
    vr_tour_url TEXT
);

-- Table: Transport Options
CREATE TABLE Transport (
    transport_id SERIAL PRIMARY KEY,
    monastery_id INT REFERENCES Monastery(monastery_id) ON DELETE CASCADE,
    type VARCHAR(20) CHECK (type IN ('bus','taxi','trek','ropeway')),
    route_details TEXT,
    timings VARCHAR(100),
    fare NUMERIC(10,2)
);

-- Table: Events & Festivals
CREATE TABLE Event (
    event_id SERIAL PRIMARY KEY,
    monastery_id INT REFERENCES Monastery(monastery_id) ON DELETE CASCADE,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    booking_available BOOLEAN DEFAULT FALSE
);

-- Table: Users
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    phone VARCHAR(15),
    language_preference VARCHAR(50),
    role VARCHAR(20) CHECK (role IN ('tourist','researcher','admin','monk','archivist'))
);

-- Table: Bookings
CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id) ON DELETE CASCADE,
    event_id INT REFERENCES Event(event_id) ON DELETE CASCADE,
    status VARCHAR(20) CHECK (status IN ('confirmed','pending','cancelled')),
    payment_details TEXT
);

-- Table: Digital Archives (storing metadata + file links)
CREATE TABLE Archive (
    archive_id SERIAL PRIMARY KEY,
    monastery_id INT REFERENCES Monastery(monastery_id) ON DELETE CASCADE,
    type VARCHAR(50) CHECK (type IN ('manuscript','mural','document','photo','video','audio')),
    title VARCHAR(200),
    language VARCHAR(50),
    file_links TEXT[],  -- Array of URLs (e.g., scanned pages, audio files, etc.)
    tags TEXT[],
    ai_summary TEXT,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE EventMonastery (
    eventmonastery_id SERIAL PRIMARY KEY,
    event_id INT REFERENCES Event(event_id) ON DELETE CASCADE,
    monastery_id INT REFERENCES Monastery(monastery_id) ON DELETE CASCADE
);