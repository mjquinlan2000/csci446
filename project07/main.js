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
		if($('form#guessTheNumber input#guess').val() != "")
		{
			var user_guess = $('form#guessTheNumber input#guess').val();
			var reg_exp = new RegExp(/^[0-9]*$/);
			if(!reg_exp.test(user_geuss))
			{
				alert("That is not a valid input");
				return;
			}else{
				alert("That didn't work");
				return;
			}
		}else{
			alert("You must guess something");
		}
	});
});

