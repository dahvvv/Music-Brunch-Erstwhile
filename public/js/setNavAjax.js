document.addEventListener("DOMContentLoaded", function() {
	var nav = document.getElementsByTagName("nav")[0];
	nav.addEventListener("click", function(e) {
		e.preventDefault();
		var link = e.target;
		while (link.tagName != "A" && link.tagName != "HTML") {
			link = link.parentNode;
		}
		history.pushState({path:link.pathname},"",link.pathname);
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var main = document.getElementById("main");
				main.innerHTML = request.response;
			}
		};
		request.open("GET", link.pathname);
		request.send(null);
	});
});
