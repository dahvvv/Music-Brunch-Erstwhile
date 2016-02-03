document.addEventListener("DOMContentLoaded", function(){

	function setNavHeightToScreenHeight() {
		dom.nav.style.height = window.innerHeight + "px";
	}

	function togglePlay() {
		if (dom.audio.paused) {
			play(dom);
		} else {
			pause(dom);
		}
	}

	function play() {
		dom.playPause.setAttribute("src", "/images/pause.png");
		dom.audio.play();
	}

	function pause() {
		dom.playPause.setAttribute("src", "/images/play.png");
		dom.audio.pause();
	}

	function setAjax() {
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var res = JSON.parse(request.response);
				dom.audio.setAttribute("src", "");
				dom.audio.load();
				dom.audio.parentNode.removeChild(dom.audio);
				dom.audio = document.createElement("audio");
				dom.audio.preload = "metadata";
				dom.audio.setAttribute("src", res.src);
				dom.audio.load();
				document.body.appendChild(dom.audio);
				dom.main.innerHTML = res.show;
				history.pushState({mainHTML:res.show},"",dom.link.pathname);
				window.onpopstate = function(e) {
					dom.audio.set
					var initHTML = "<h1>Erstwhile Records</h1>";
					dom.main.innerHTML = e.state ? e.state.mainHTML : initHTML;
				};
			}
		};
		request.open("GET", dom.link.pathname);
		request.send(null);
	}

	var dom = {
		main: document.getElementById("main"),
		nav: document.getElementsByTagName("nav")[0],
		audio: document.getElementsByTagName("audio")[0],
		playPause: document.getElementById("play-pause")
	};

	setNavHeightToScreenHeight();

	dom.nav.addEventListener("click", function(e){
		e.preventDefault();
		pause();
		dom.link = e.target;
		while (dom.link.tagName != "A" && dom.link.tagName != "HTML"){
			dom.link = dom.link.parentNode;
		}
		setAjax();
	});

	dom.playPause.addEventListener("click", togglePlay);	
});

