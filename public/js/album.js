// function setNavScroll() {
// 	/* When a user clicks an album cover in the nav bar, this function scrolls the nav bar to the same place that it currently is */

// 	// var scroll = nav.scrollTop;

	
// 	var album = document.getElementById("album");

// 	var nav = document.getElementsByTagName("nav")[0];
// 	var img = nav.getElementsByTagName("img")[0];

// 	var imgHeight = img.getBoundingClientRect().height; /* get img height, minus margins */

// 	var marginHeight = parseInt(getComputedStyle(img).marginTop)
// 		+ parseInt(getComputedStyle(img).marginBottom); /* get the height of the margins */

// 	var imgTotalHeight = imgHeight + marginHeight;

// 	// var order = parseInt(this.getAttribute("data-order"));

// 	/* set the nav bar scroll so the current album is at the top */
// 	// var id = parseInt(window.location.pathname.match(/\d+$/)[0]);
// 	var order = album.getAttribute("data-order");
// 	var navPad = parseInt(getComputedStyle(nav).paddingTop);
// 	nav.scrollTop = imgTotalHeight * (order - 1) + navPad;
// }

function setNavScroll() {
	/* When a user clicks an album cover in the nav bar, this function scrolls the nav bar to the same place that it currently is */

	// var scroll = nav.scrollTop;

	
	var album = document.getElementById("album");

	var nav = document.getElementsByTagName("nav")[0];
	var navImgs = nav.getElementsByTagName("img");

	var imgHeight = navImgs[1].getBoundingClientRect().top
		 - navImgs[0].getBoundingClientRect().top; /* get img height, minus margins */


	// var order = parseInt(this.getAttribute("data-order"));

	/* set the nav bar scroll so the current album is at the top */
	// var id = parseInt(window.location.pathname.match(/\d+$/)[0]);
	var order = album.getAttribute("data-order");
	var navPad = parseInt(getComputedStyle(nav).paddingTop);
	var linkAtTop = imgHeight * (order - 1) + navPad;
	var lowestScroll = navImgs.length * imgHeight + navPad - window.innerHeight;
	var finalScroll = Math.min(linkAtTop, lowestScroll);
	var currentScroll = 0;
	var scrollInt = setInterval(function() {
		nav.scrollTop = currentScroll;
		currentScroll += 5;
		if (finalScroll > currentScroll) {
			nav.scrollTop = finalScroll;
			clearInterval(scrollInt);
		}
	}, 1000)
}

window.onload = setNavScroll;

// function setNavScroll() {
// 	/* When a user clicks an album cover in the nav bar, this function scrolls the nav bar to the same place that it currently is */

// 	// var scroll = nav.scrollTop;

	
// 	alert("ORDER??:  " + this.getAttribute("data-order"));
// 	var img = this.getElementsByTagName("img")[0];
// 	var imgHeight = img.getBoundingClientRect().height + marginHeight; /* get img height, minus margins */
// 	var marginHeight = parseInt(getComputedStyle(img).marginTop)
// 		+ parseInt(getComputedStyle(img).marginBottom); /* get the height of the margins */
// 	var imgTotalHeight = imgHeight + marginHeight;

// 	// var order = parseInt(this.getAttribute("data-order"));

// 	/* set the nav bar scroll so the current album is at the top */
// 	// var id = parseInt(window.location.pathname.match(/\d+$/)[0]);
// 	var album = document.getElementById("album");
// 	var order = album.getAttribute("data-order");
// }




// u want whichever u clicked to be at the top (including its margin-top)

// so u want to calculate for one image, the height + the margins.  multiply that by the number of images before the one you clicked, add the padding and margin of the nav, and that should be yr scroll-top?

// one image height + margins