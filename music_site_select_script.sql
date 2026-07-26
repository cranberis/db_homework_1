-- Продвинутая выборка данных
-- Задание 2

SELECT track_name, duration
FROM musical_tracks
WHERE duration = (SELECT MAX(duration) FROM musical_tracks);

SELECT track_name
FROM musical_tracks
WHERE duration >= '00:03:30';

SELECT collection_name
FROM musical_collection
WHERE collection_release >= '2018-01-01' AND collection_release < '2021-01-01';

SELECT artist_name
FROM musical_artists
WHERE artist_name NOT LIKE '% %';

SELECT track_name
FROM musical_tracks
WHERE track_name ILIKE '%my%'
	OR track_name ILIKE '%мой%';

-- Задание 3

SELECT genre_name, COUNT(artist_id) count_artists
FROM musical_genres mg 
LEFT JOIN artist_genres ag 
ON mg.id = ag.genre_id 
GROUP BY mg.genre_name;

SELECT COUNT(mt.id) count_tracks
FROM musical_tracks mt
LEFT JOIN musical_albums ma 
ON ma.id = mt.album_id
WHERE ma.album_release >= '2019-01-01'
	AND ma.album_release < '2021-01-01';

SELECT ma.album_name, AVG(mt.duration) track_avg_duration
FROM musical_tracks mt
LEFT JOIN musical_albums ma
ON ma.id = mt.album_id
GROUP BY ma.album_name;

SELECT artist_name
FROM musical_artists
WHERE id  NOT IN (
	SELECT aa.artist_id FROM artist_albums aa
	JOIN musical_albums ma ON aa.album_id = ma.id
	WHERE EXTRACT(YEAR FROM ma.album_release) = 2020
);

SELECT DISTINCT(mc.collection_name) collection_name
FROM musical_collection mc
LEFT JOIN collection_tracks ct ON mc.id = ct.collection_id
LEFT JOIN musical_tracks mt  ON ct.track_id = mt.id
LEFT JOIN musical_albums ma ON mt.album_id = ma.id
LEFT JOIN artist_albums aa ON ma.id = aa.album_id
LEFT JOIN musical_artists mar ON aa.artist_id = mar.id
WHERE mar.artist_name LIKE 'Scorpions';

-- Задание 4

SELECT ma.album_name
FROM musical_albums ma
INNER JOIN artist_albums aa ON ma.id = aa.album_id
WHERE aa.artist_id IN (
	SELECT mar.id FROM musical_artists mar
	INNER JOIN artist_genres ag ON mar.id = ag.artist_id
	WHERE mar.id IN (
		SELECT ag1.artist_id FROM artist_genres ag1
		GROUP BY ag1.artist_id
		HAVING COUNT(ag1.artist_id) > 1
	)
);

SELECT mt.track_name
FROM musical_tracks mt
LEFT JOIN collection_tracks ct ON mt.id = ct.track_id
WHERE mt.id NOT IN (
	SELECT ct1.track_id FROM collection_tracks ct1
);

SELECT ma.artist_name FROM musical_artists ma
LEFT JOIN artist_albums aa ON ma.id = aa.artist_id
LEFT JOIN musical_albums mal ON aa.album_id = mal.id 
WHERE mal.id IN (
	SELECT mt.album_id FROM musical_tracks mt
	WHERE mt.duration = (SELECT MIN(mt.duration) FROM musical_tracks mt)
);

SELECT ma.album_name
FROM musical_albums ma
LEFT JOIN musical_tracks mt ON ma.id = mt.album_id
GROUP BY ma.album_name
HAVING COUNT(mt.album_id) = (
	SELECT MIN(cnt) FROM (
		SELECT COUNT(mt2.album_id) cnt
		FROM musical_tracks mt2
		GROUP BY mt2.album_id
	)
);




