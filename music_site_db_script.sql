CREATE TABLE IF NOT EXISTS musical_genres (
	id serial PRIMARY KEY,
	genre_name varchar(30) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS musical_artists (
	id serial PRIMARY KEY,
	artist_name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS musical_albums (
	id serial PRIMARY KEY,
	album_name varchar(100) NOT NULL,
	album_release date NOT NULL
);

CREATE TABLE IF NOT EXISTS musical_tracks (
	id serial PRIMARY KEY,
	album_id int REFERENCES musical_albums(id) NOT NULL,
	track_name varchar(100) NOT NULL,
	duration time NOT NULL
);

CREATE TABLE IF NOT EXISTS musical_collection (
	id serial PRIMARY KEY,
	collection_name varchar (100) NOT NULL,
	collection_release date NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_genres (
	id serial PRIMARY KEY,
	genre_id int REFERENCES musical_genres(id) NOT NULL,
	artist_id int REFERENCES musical_artists(id) NOT NULL,
	UNIQUE (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS artist_albums (
	id serial PRIMARY KEY,
	artist_id int REFERENCES musical_artists(id) NOT NULL,
	album_id int REFERENCES musical_albums(id) NOT NULL,
	UNIQUE (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS collection_tracks (
	id serial PRIMARY KEY,
	collection_id int REFERENCES musical_collection(id) NOT NULL,
	track_id int REFERENCES musical_tracks(id) NOT NULL,
	UNIQUE (collection_id, track_id)
);