document.addEventListener("DOMContentLoaded", function() {
	var nav = document.getElementsByTagName("nav")[0];
	var main = document.getElementById("main");
	var audio = document.getElementsByTagName("audio")[0];
	nav.addEventListener("click", function(e) {
		e.preventDefault();
		var link = e.target;
		while (link.tagName != "A" && link.tagName != "HTML") {
			link = link.parentNode;
		}
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var res = JSON.parse(request.response);
				audio.setAttribute("src", "");
				audio.load();
				audio.parentNode.removeChild(audio);
				audio = document.createElement("audio");
				audio.controls = true;
				audio.preload = "metadata";
				audio.setAttribute("src", res.src);
				audio.load();
				document.body.appendChild(audio);
				main.innerHTML = res.show;
				history.pushState({mainHTML:res.show},"",link.pathname);
				window.onpopstate = function(e) {
					audio.set
					var initHTML = "<h1>Erstwhile Records</h1>";
					main.innerHTML = e.state ? e.state.mainHTML : initHTML;
				};
			}
		};
		request.open("GET", link.pathname);
		request.send(null);
	});
});

/*
GOAL:  on clicking a link, reset the audio's src property and then load() the audio.

*/
