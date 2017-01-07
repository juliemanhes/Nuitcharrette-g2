/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function Player() {
	this.currentSong = 0;
	this.songs = [];
	this.audio = document.createElement('audio');
	this.audio.autoplay = "";
}

Player.prototype.registerPlayPauseButton = function(on_off) {
	document.getElementById(on_off).onclick = () => {
		if(this.audio.paused)
			this.audio.play();
		else
			this.audio.pause();
	};
};

Player.prototype.registerPrevButton = function(prev) {
	document.getElementById(prev).onclick = () => {
		if(this.currentSong <= 0)
			return;
		this.currentSong--;
		this.setMusic(this.songs[this.currentSong]);
	};

};

Player.prototype.registerNextButton = function(next) {
	document.getElementById(next).onclick = () => {
		if(this.currentSong >= this.songs.length-1)
			return;
		this.currentSong++;
		this.setMusic(this.songs[this.currentSong]);
	};
};

Player.prototype.setSongs = function(songs) {
	this.songs = songs;
	this.currentSong = 0;
	this.setMusic(this.songs[this.currentSong]);
};

Player.prototype.setMusic = function(url) {
	this.audio.src = url;
};



