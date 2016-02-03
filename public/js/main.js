document.addEventListener("DOMContentLoaded", function(){

	var dom = {
		main: document.getElementById("main"),
		nav: document.getElementsByTagName("nav")[0],
		audio: document.getElementsByTagName("audio")[0],
		playPause: document.getElementById("play-pause")
	};

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
				dom.audio.addEventListener("playing", function(){
					dom.playPause.setAttribute("src", "/images/pause.png")
				});
				dom.audio.addEventListener("pause", function(){
					dom.playPause.setAttribute("src", "/images/play.png")
				});
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

	// set navbar height to screen height:
	dom.nav.style.height = window.innerHeight + "px";

	dom.nav.addEventListener("click", function(e){
		e.preventDefault();
		dom.audio.pause();
		dom.link = e.target;
		while (dom.link.tagName != "A" && dom.link.tagName != "HTML"){
			dom.link = dom.link.parentNode;
		}
		setAjax();
	});

	// toggle btw play and pause:
	dom.playPause.addEventListener("click", function(){
		dom.audio.paused ? dom.audio.play() : dom.audio.pause();
	});
});

