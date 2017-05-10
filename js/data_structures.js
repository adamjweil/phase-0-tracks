var colors = ["Blue", "Purple", "White", "Green"];
var horseNames = ["Charming", "Unicorn", "Pumpkin", "LittleJohnny",];
var horseColors = {};

console.log("Original Arrays: ");
console.log(colors);
console.log(horseNames);
console.log("");

// Adding "Yellow" to colors array, and "Sprinkles" to horseNames array
colors.push("Yellow");
horseNames.push("Sprinkles");

console.log("Final Arrays: ");
console.log(colors);
console.log(horseNames);
console.log("");

var colorsLength = colors.length;
var horseNamesLength = horseNames.length;


console.log("Object with each Horse name mapped to a color...: ");

if (colors.length == horseNames.length) { 
	for(i = 0; i < colorsLength; i++) {
		colorName = colors[i];
		horseName = horseNames[i];
		horseColors[horseName] = colorName;
	}
	console.log(horseColors);
} else {
	console.log("The color and horseNames arrays are different lengths!!");
}

console.log("");

// ------
// Constructive function creation

function Car(color, maxSpeed, isComplete) {

	console.log("New car: ", this);

	this.color = color;
	this.maxSpeed = maxSpeed;
	this.isComplete = isComplete;
	
	this.streetReady = function() {
		if (this.isComplete) {
			console.log("STATUS: Car is street ready!!");
		} else {
			console.log("STATUS: Not street ready...Still needs some work.");
		}
	}

	this.throttle = function() {
		if (this.isComplete) { 
		console.log("Vrrruuuummmmmmm!!!!!");
		}
		else {
		console.log("vrrra vrra vra......silence......uh oh")
		}
	}
	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Lets build a car....");
var newCar = new Car("Green", 100, true);
console.log(newCar);
newCar.streetReady();
newCar.throttle();
console.log("");

console.log("Lets build another car.....");
var anotherCar = new Car("Purple", 200, false);
console.log(anotherCar);
anotherCar.streetReady();
anotherCar.throttle();
