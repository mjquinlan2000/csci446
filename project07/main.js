var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var secret_number;

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

function genRandomNum(){
	secret_number = Math.floor(Math.random()*100 + 1);
}

function reset(){
	$('input#guess').val("");
	guessesLeft = 10;
	updateScore(guessesLeft);
	genRandomNum();
}

$(document).ready(function(){
	genRandomNum();
	$('form#guessTheNumber input#btnGuess').click(function(){
		if($('form#guessTheNumber input#guess').val() != ""){
			var user_guess = $('input#guess').val();
			var rexp = /^\d+$/;
			user_guess = user_guess.replace(/ /g, "");
			if(!rexp.test(user_guess) || parseInt(user_guess) < 1 || parseInt(user_guess) > 100){
				alert("That is not a valid input. Only guess numbers between 1 and 100");
				return;
			}else{
				var int_user_guess = parseInt(user_guess);
				if(int_user_guess == secret_number){
					alert("YOU WON");
					reset();
				}else{
					if(int_user_guess > secret_number){
						alert("Guess lower");
					}else{
						alert("Guess higher");
					}
					updateScore(--guessesLeft);
					if(guessesLeft == 0){
						alert("You Lost");
						reset();
					}
				}
			}
		}else{
			alert("You must guess something");
		}
	});
});

