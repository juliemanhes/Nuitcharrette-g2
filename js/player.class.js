function Player() {
	this.currentSong = 0;
	this.songs = [];
	this.audio = document.createElement('audio');
	this.audio.autoplay = '';
	this.audio.ontimeupdate = () => {};
	this.audio.onended = () => {
		this.currentSong = (this.currentSong + 1) % this.songs.length;
		this.setCurrentSong(this.songs[this.currentSong].filename);
		this.audio.play();
	};
}

Player.prototype.registerPlayPauseButton = function(on, off) {
	var on_elem = document.getElementById(on);
	var off_elem = document.getElementById(off);

	off_elem.onclick = on_elem.onclick = () => {
		if(this.audio.paused) {
			on_elem.className = "hidden";
			off_elem.className = "";
			this.audio.play();
		} else {
			off_elem.className = "hidden";
			on_elem.className = "";
			this.audio.pause();
		}
	};
};

Player.prototype.registerTimelineAndCursor = function(timeline, cursor) {
	elem = document.getElementById(timeline);
	elem.pressed = false;

	elem.onmousemove = (evt) => {
		if(!elem.pressed)
			return;

		var rect = elem.getBoundingClientRect();
		var norm = (evt.clientX - rect.left) / rect.width;

		this.audio.currentTime = norm * this.audio.duration;
	};
	elem.onmousedown = (evt) => {
		elem.pressed = true;
		elem.onmousemove(evt);
	};
	elem.onmouseup = () => {
		elem.pressed = false;
	};

	this.audio.ontimeupdate = () => {
		var cursorline = document.getElementById(cursor);

		cursorline.style['margin-left'] = (100 * this.audio.currentTime / this.audio.duration) + '%';
	};
};

Player.prototype.registerPrevButton = function(prev) {
	document.getElementById(prev).onclick = () => {
		if(this.currentSong <= 0)
			return;
		this.currentSong--;
		this.setCurrentSong(this.songs[this.currentSong].filename);
	};
};

Player.prototype.registerNextButton = function(next) {
	document.getElementById(next).onclick = () => {
		if(this.currentSong >= this.songs.length - 1)
			return;
		this.currentSong++;
		this.setCurrentSong(this.songs[this.currentSong].filename);
	};
};

Player.prototype.setSongs = function(songs) {
	this.songs = songs;
	this.currentSong = 0;
	this.setCurrentSong(this.songs[this.currentSong].filename);
};

Player.prototype.setCurrentSong = function(url) {
	var paused = this.audio.paused;

	this.audio.currentTime = 0;
	this.audio.ontimeupdate();
	var cover = 'img-content/' + this.songs[this.currentSong].cover;
	document.getElementById('cover-play').src = cover;
	this.audio.src = 'audio/' + url;
	if(paused)
		this.audio.pause();
	else
		this.audio.play();
};
