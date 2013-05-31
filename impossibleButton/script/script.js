

var no = document.getElementById("no");
no.onclick = function(){
	alert("You probably go to Full Sail");
}

var yes = document.getElementById("yes");
yes.onmouseover = function(){
	yes.style.marginLeft = (Math.random()*200) + "px";
	yes.style.top = (Math.random()*100) + "px";

	if(yes.onclick){
		alert("You sneeky liar!")
	}
}
