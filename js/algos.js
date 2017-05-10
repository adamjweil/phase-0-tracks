// Release: 0
function longestString (array){
	var len = array.length;
	var longest = " ";

	for (var i = 0; i < len; i++){

		var arrayValue = array[i];
		var arrLen = array[i].length;

		if (arrLen > longest.length){
			var longest = array[i];
		} else {

		}

	}

	console.log(longest);
}

// Release: 1
function objectMatch(object1, object2){
	

}

// ----->DRIVER CODE<------
longestString(["long phrase", "longer phrase", "longest phrase"]);
longestString(["dog", "apple", "brown", "alabama"]);
longestString(["new york", "new jersey", "maine", "maryland"]);