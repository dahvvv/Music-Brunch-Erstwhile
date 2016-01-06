function setNavHeightToScreenHeight() {
	var nav = document.getElementsByTagName("nav")[0];
	nav.style.height = window.innerHeight + "px";
}

document.addEventListener("DOMContentLoaded", setNavHeightToScreenHeight);
