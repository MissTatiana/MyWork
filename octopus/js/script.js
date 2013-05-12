(function(){

	var imageArray = [
		"octopus_blue.png",
		"octopus_darkRed.png",
		"octopus_green.png",
		"octopus_orange.png",
		"octopus_pink.png",
		"octopus_purple.png",
		"octopus_red.png",
		"octopus_redblack.png",
		"octopus_waterColor.png",
		"octopus_yellow.png",
		"octopus_yellowMash.png"
	]

	var randomImageIndex = Math.floor(Math.random() * imageArray.length);
	var randomizingImages = imageArray[randomImageIndex];

	var octopus = document.getElementById("octopus");
	octopus.src = "images/" + randomizingImages;

	var wordsArray = [
		"Your mother sucks cocks in hell", 
		"I'm Eddy!", 
		"Fuck off"
	];

	var randomIndex = Math.floor(Math.random() * wordsArray.length);
	var randomizing = wordsArray[randomIndex];
	console.log(randomizing);

	var signText = document.getElementById("signText");
	signText.innerHTML = randomizing;

})();