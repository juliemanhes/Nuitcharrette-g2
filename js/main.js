(function() {
	var player = new Player();

	var rq = new XMLHttpRequest();
	rq.onload = () => {
		player.setSongs(JSON.parse(rq.responseText));
		player.registerPrevButton('prev');
		player.registerPlayPauseButton('play', 'pause');
		player.registerNextButton('next');
		player.registerTimelineAndCursor('timeline', 'cursor');
	};
	rq.open('GET', '/Player/php/ajax.php?action=songs');
	rq.send();
})();
