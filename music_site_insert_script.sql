INSERT INTO musical_genres (id, genre_name)
VALUES
	(1, 'Rock'),
	(2, 'Blues'),
	(3, 'Jazz'),
	(4, 'Pop'),
	(5, 'Soul'),
	(6, 'Metal');

INSERT INTO musical_artists  (id, artist_name)
VALUES
	(1, 'Scorpions'),
	(2, 'Eric Clapton'),
	(3, 'Joe Pass'),
	(4, 'Whitney Houston'),
	(5, 'Aretha Franklin'),
	(6, 'Madonna'),
	(7, 'Prince'),
	(8, 'Sting'),
	(9, 'Celine Dion'),
	(10, 'Toni Braxton');

INSERT INTO musical_albums  (id, album_name, album_release)
VALUES
	(1, 'Blackout', '1982-03-26'),
	(2, 'Purple Rain', '1984-06-25'),
	(3, 'Unplugged', '1992-08-25'),
	(4, 'Virtuoso', '1974-01-01'),
	(5, 'Rebel Heart', '2015-03-06'),
	(6, '57th & 9th', '2016-11-04'),
	(7, 'Whitney Houston', '1985-02-14'),
	(8, 'I Never Loved a Man', '1967-03-10'),
	(9, 'My Songs', '2019-05-24'),
	(10, 'Courage', '2019-11-15');

INSERT INTO musical_tracks (id, album_id, track_name, duration)
VALUES 
	(1, 1, 'No One Like You', '00:03:55'),
	(2, 1, 'Blackout', '00:03:50'),
	(3, 1, 'Dynamite', '00:04:28'),
	(4, 2, 'Purple Rain', '00:08:41'),
	(5, 2, 'When Doves Cry', '00:05:54'),
	(6, 3, 'Tears in Heaven', '00:04:33'),
	(7, 3, 'My Father''s Eyes', '00:04:25'),
	(8, 3, 'Layla', '00:04:30'),
	(9, 4, 'Blues for Alicja', '00:04:35'),
	(10, 4, 'Darn That Dream', '00:01:28'),
	(11, 5, 'Living for Love', '00:03:33'),
	(12, 5, 'Ghosttown', '00:04:08'),
	(13, 5, 'My Heart', '00:03:45'),
	(14, 6, 'I Can''t Stop Thinking About You', '00:03:43'),
	(15, 6, 'The Empty Chair', '00:03:25'),
	(16, 7, 'Saving All My Love for You', '00:03:58'),
	(17, 7, 'How Will I Know', '00:04:05'),
	(18, 8, 'Respect', '00:02:09'),
	(19, 8, 'Think', '00:02:15'),
	(20, 9, 'My Song', '00:03:30'),
	(21, 9, 'Fields of Gold', '00:03:45'),
	(22, 10, 'Courage', '00:03:15'),
	(23, 10, 'Flying on My Own', '00:03:42');

INSERT INTO musical_collection (id, collection_name, collection_release)
VALUES
	(1, 'Rock Legends', '2018-06-15'),
	(2, 'Blues & Soul Masters', '2019-03-20'),
	(3, 'Best of 2019', '2019-12-01'),
	(4, 'Pop Hits 2020', '2020-07-10'),
	(5, '80s Classics', '2015-05-10'),
	(6, 'Jazz Collection', '2017-11-25');

INSERT INTO artist_genres (id, genre_id, artist_id)
VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 1, 2),
	(4, 3, 3),
	(5, 4, 4),
	(6, 5, 4),
	(7, 5, 5),
	(8, 4, 6),
	(9, 1, 7),
	(10, 4, 7),
	(11, 3, 8),
	(12, 4, 8),
	(13, 4, 9),
	(14, 5, 10);

INSERT INTO artist_albums (id, artist_id, album_id)
VALUES
	(1, 1, 1),
	(2, 7, 2),
	(3, 2, 3),
	(4, 3, 4),
	(5, 6, 5),
	(6, 8, 6),
	(7, 4, 7),
	(8, 5, 8),
	(9, 8, 9),
	(10, 9, 10);

INSERT INTO collection_tracks (id, collection_id, track_id)
VALUES
	(1, 1, 1),
	(2, 1, 4),
	(3, 1, 5),
	(4, 2, 7),
	(5, 2, 8),
	(6, 2, 18),
	(7, 2, 19),
	(8, 3, 20),
	(9, 3, 22),
	(10, 3, 23),
	(11, 4, 13),
	(12, 4, 12),
	(13, 4, 16),
	(14, 5, 1),
	(15, 5, 2),
	(16, 5, 4),
	(17, 6, 9),
	(18, 6, 10),
	(19, 6, 15);
