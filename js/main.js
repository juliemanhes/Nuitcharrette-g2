(function() {
	var player = new Player();

	player.setSongs(['audio/0.m4a', 'audio/1.mp3', 'audio/2.mp3', 'audio/3.mp3', 'audio/4.mp3', 'audio/5.mp3']);
	player.registerPrevButton('prev');
	player.registerPlayPauseButton('play', 'pause');
	player.registerNextButton('next');
	player.registerTimelineAndCursor('timeline', 'cursor');
})();
