let $vote1 = document.getElementById("vote1");
let $vote2 = document.getElementById("vote2");
let $vote3 = document.getElementById("vote3");
let $candidate = document.getElementById("candidate");

function clicked(e) {
	// console.log(e.target.style.backgroundColor);
	
	$vote1.style.backgroundColor = "white";
	$vote2.style.backgroundColor = "white";
	$vote3.style.backgroundColor = "white";
	
	e.target.style.backgroundColor = "red";
	$candidate.innerText = e.target.innerText;
}

$vote1.addEventListener("click", clicked);
$vote2.addEventListener("click", clicked);
$vote3.addEventListener("click", clicked);
