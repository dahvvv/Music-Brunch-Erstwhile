document.addEventListener("DOMContentLoaded", function() {
	var nav = document.getElementsByTagName("nav")[0];
	nav.addEventListener("click", function(e) {
		e.preventDefault();
		var link = e.target;
		while (link.tagName != "A" && link.tagName != "HTML") {
			link = link.parentNode;
		}
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var main = document.getElementById("main");
				main.innerHTML = request.response;
				history.pushState({mainHTML:request.response},"",link.pathname);
				window.onpopstate = function(e) {
					var initHTML = "<h1>Erstwhile Records</h1>";
					main.innerHTML = e.state ? e.state.mainHTML : initHTML;
				};
			}
		};
		request.open("GET", link.pathname);
		request.send(null);
	});
});
