var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var secret_number = Math.floor(Math.random()*100 + 1);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

$(document).ready(function(){
	$('form#guessTheNumber input#btnGuess').click(function(){
		if($('form#guessTheNumber input#guess').val() != ""){
			var user_guess = $('input#guess').val();
			var rexp = /^\d+$/;
			user_guess = user_guess.replace(/ /g, "");
			if(!rexp.test(user_guess) || parseInt(user_guess) < 1 || parseInt(user_guess) > 100){
				alert("That is not a valid input. Only guess numbers between 1 and 100");
				return;
			}
		}else{
			alert("You must guess something");
		}
	});
});

