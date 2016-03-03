document.addEventListener("DOMContentLoaded", function(){

	var dom = {
		main: document.getElementById("main"),
		nav: document.getElementsByTagName("nav")[0],
		rendered: document.getElementById("rendered"),
		audio: document.getElementsByTagName("audio")[0],
		playPause: document.getElementById("play-pause"),
		sample2: document.querySelector("#play-bar div:last-child")
	};

	dom.destroyAudio = function(){
		this.audio.pause();
		this.audio.setAttribute("src", "");
		this.audio.load();
		this.audio.parentNode.removeChild(this.audio);
		this.audio = null;
	};

	dom.createAudio = function(src){
		this.audio = document.createElement("audio");
		this.audio.preload = "metadata";
		this.audio.setAttribute("src", src);
		if (src.substring(src.length - 3) == "m4a") {
			this.audio.setAttribute("type", "audio/aac");
		}
		this.audio.load();
		document.body.appendChild(this.audio);
	};

	function setAjax(sampleIdx) {
		sampleIdx = sampleIdx || 0;
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var res = JSON.parse(request.response);

				dom.destroyAudio();
				dom.createAudio(res.src);

				dom.audio.addEventListener("playing", function(){
					dom.playPause.setAttribute("src", "/images/pause.png")
				});
				dom.audio.addEventListener("pause", function(){
					dom.playPause.setAttribute("src", "/images/play.png")
				});
				
				dom.rendered.innerHTML = res.show;

				history.pushState({mainHTML:res.show},"",dom.link.pathname);
				window.onpopstate = function(e) {
					var initHTML = "<h1>Erstwhile Records</h1>";
					dom.rendered.innerHTML = e.state ? e.state.mainHTML : initHTML;
				};
			}
		};

		request.open("GET", dom.link.pathname + "?sampleIdx=" + sampleIdx);
		request.send(null);
	}

	// set navbar height to screen height:
	dom.nav.style.height = window.innerHeight + "px";

	// set main width to 100% minus navbar:
	dom.main.style.width = window.innerWidth - dom.nav.offsetWidth - 5 + "px";

	dom.nav.addEventListener("click", function(e){
		e.preventDefault();
		dom.link = e.target;
		while (dom.link.tagName != "A" && dom.link.tagName != "HTML"){
			dom.link = dom.link.parentNode;
		}
		setAjax();
	});

	// clicking the '2' button makes an ajax call with the sample set to 2
	dom.sample2.addEventListener("click", function(){
		setAjax(1);
	});

	// toggle btw play and pause:
	dom.playPause.addEventListener("click", function(){
		dom.audio.paused ? dom.audio.play() : dom.audio.pause();
	});
});

