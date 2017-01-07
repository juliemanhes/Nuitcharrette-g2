(function() {
	var player = new Player();

	player.registerPlayPauseButton('playpause');
	player.registerTimelineAndCursor('timeline', 'cursor');
	player.setMusic('audio/0.m4a');
})();
