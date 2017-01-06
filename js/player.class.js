/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function Player() {
	this.audio = document.createElement('audio');
	this.audio.autoplay = "";

	this.audio_source = document.createElement('source');
	this.audio.appendChild(this.audio_source);

}

Player.prototype.registerPlayPauseButton = function(on_off) {
	document.getElementById(on_off).onclick = () => {
		if(this.audio.paused)
			this.audio.play();
		else
			this.audio.pause();
	};
};

Player.prototype.setMusic = function(url) {
	this.audio_source.src = url;
};
