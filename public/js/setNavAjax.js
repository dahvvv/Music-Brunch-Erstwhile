document.addEventListener("DOMContentLoaded", function() {
	Array.prototype.forEach.call(document.links, function(link) {
		link.addEventListener("click", function(e) {
			e.preventDefault();
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
});
