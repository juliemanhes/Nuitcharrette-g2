/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function Player() {
	var self = this;

	this.audio = document.createElement('audio');
	this.audio.autoplay = "";

	this.audio_source = document.createElement('source');
	this.audio.appendChild(this.audio_source);

	document.getElementById('playpause').onclick = function () {
		if(self.audio.paused)
			self.audio.play();
		else
			self.audio.pause();
	};
}

Player.prototype.setMusic = function(url) {
	this.audio_source.src = url;
}
