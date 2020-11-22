let $vote1 = document.getElementById("vote1");
let $vote2 = document.getElementById("vote2");
let $vote3 = document.getElementById("vote3");
let $voteButton = document.querySelector(".leeButton");
let $candidate = document.getElementById("candidate");

function clicked(e) {
	// console.log(e.target.style.backgroundColor);

	$vote1.style.backgroundColor = "white";
	$vote2.style.backgroundColor = "white";
	$vote3.style.backgroundColor = "white";

	e.target.style.backgroundColor = "red";
	$candidate.innerText = e.target.innerText;
}

function voteButtonClicked(e) {
	if ($candidate.innerText == "후보자를 선택하세요") {
		alert("후보자를 선택하세요");
	} else {
		e.target.style.display = "none";
		$candidate.innerText = "투표 완료";
		setTimeout(function () {
			e.target.style.display = "block";
			$candidate.innerText = "후보자를 선택하세요";
		}, 15000);
	}
}

$vote1.addEventListener("click", clicked);
$vote2.addEventListener("click", clicked);
$vote3.addEventListener("click", clicked);
$voteButton.addEventListener("click", voteButtonClicked);
