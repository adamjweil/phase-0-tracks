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



