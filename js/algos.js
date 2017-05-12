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
	var x = Object.values(object1)
	var y = Object.values(object2)

	var overlap = false

	for (i = 0; i < x.length; i++){
		if (x[i] === y[i]) {
			overlap = true
		} else {

		}
	}

	console.log(overlap);
}

// Release: 2
function randomTestData(int){


}

function randomNum(){
	x = Math.floor(((Math.random() + 1) * 10) - 9);
	console.log(x);
}
// function randomNum(){
// 	x = Math.floor(((Math.random() + 1) * 10) - 9);
// 	console.log(x);
// }

function randString(length) {
	var l = length > 20 ? 20 : length
	var str = Math.random().toString()

}

function makeString(int) {

	var randWord = "";
	var letters = "abcdefghijklmnopqrstuvwxyz";
	var arrayOfStrings = [];
	var arrayOfLengths = [];

	for (var i = 0; i < int ; i++ ) {
		len = Math.floor(((Math.random()+1)*10)-9);
		arrayOfLengths.push(len);

		// return arrayOfLengths;
	
		for (var n = 0; n < len; n++) {

			randWord += letters.charAt(Math.floor(((Math.random()+1)*10)-9) * letters.length);
			// arrayOfStrings[n] = randWord;

			// arrayOfStrings.push(randWord);

			// return arrayOfStrings;
		}

		arrayOfStrings[i] = randWord
	}


		console.log(arrayOfStrings);
	
}



	// console.log(arrayOfLengths);

	// console.log(arrayOfStrings);


// ----->DRIVER CODE<------
console.log("Release: 0");
longestString(["long phrase", "longer phrase", "longest phrase"]);
longestString(["dog", "apple", "brown", "alabama"]);
longestString(["new york", "new jersey", "maine", "maryland"]);

console.log("");

console.log("Release: 1");
objectMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
objectMatch({name: "Steven", age: 54}, {name: "Tamir", age: 53});
objectMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
objectMatch({house: "Big", rooms: 2}, {house: "Small", rooms: 3});
objectMatch({state: "Maine", pop: 1899777}, {state: "Maryland", pop: 1899777});

console.log("");

console.log("Release: 2");
makeString(5);
makeString(1);
makeString(19);





