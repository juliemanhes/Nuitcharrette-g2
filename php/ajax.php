<?php

$db = require './db.php';

$playlists_select_rq = $db->prepare('SELECT id, title
		FROM playlist');

$playlist_select_rq = $db->prepare('SELECT title
		FROM playlist
		WHERE id = :id');

$songs_select_rq = $db->prepare('SELECT id, title, author, cover, filename
		FROM song');

$song_select_rq = $db->prepare('SELECT title, author, cover, filename
		FROM song
		WHERE id = :id');

$playlist_songs_select_rq = $db->prepare('SELECT song.title, song.author, song.cover, song.filename, ps.date_add
		FROM playlist_song AS ps
		INNER JOIN song AS song
			ON ps.song_id = song.id
		WHERE playlist_id = :playlist_id');

switch($_GET['action']) {
	case 'playlists':
		$playlists_select_rq->execute();
		echo json_encode($playlists_select_rq->fetchAll());
		break;

	case 'playlist':
		$playlist_select_rq->execute([
			':id' => $_GET['id']
		]);
		echo json_encode($playlist_select_rq->fetch());
		break;

	case 'songs':
		$songs_select_rq->execute();
		echo json_encode($songs_select_rq->fetchAll());
		break;

	case 'song':
		$song_select_rq->execute([
			':id' => $_GET['id']
		]);
		echo json_encode($song_select_rq->fetch());
		break;

	case 'playlist_songs':
		$playlist_songs_select_rq->execute([
			':playlist_id' => $_GET['id']
		]);
		echo json_encode($playlist_songs_select_rq->fetchAll());
		break;
}
