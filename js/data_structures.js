var colors = ["Blue", "Purple", "White", "Green"];
var horseNames = ["Charming", "Unicorn", "Pumpkin", "LittleJohnny",];
var horseColors = {};

colors.push("Yellow");
horseNames.push("Sprinkles");

// console.log(colors)
// console.log(horseNames)

var colorsLength = colors.length;
var horseNamesLength = horseNames.length;

// console.log(colorsLength)
// console.log(horseNamesLength)

if (colors.length == horseNames.length) { 
	for(i = 0; i < colorsLength; i++) {
		colorName = colors[i];
		horseName = horseNames[i];
		horseColors[horseName] = colorName;
	}
	console.log(horseColors)
} else {
	console.log("The color and horseNames arrays are different lengths!!");
}

function Car(color, maxSpeed, isComplete) {

	console.log("New car: ", this);

	this.color = color;
	this.maxSpeed = maxSpeed;
	this.isComplete = isComplete;
	
	this.streetReady = function() {
		if (this.isComplete) {
			console.log("Car is street ready!!");
		} else {
			console.log("Still needs work....");
		}
	}

	this.throttle = function() {
		if (this.isComplete) { 
		console.log("Vrrruuuummmmmmm!!!!!");
		}
		else {
		console.log("vrr vrrr vrr......silence......")
		}
	}
}

console.log("Lets build a car....");
var newCar = new Car("Green", 100, true);
console.log(newCar);
newCar.streetReady();
newCar.throttle();

console.log("Lets build another car.....");
var anotherCar = new Car("Purple", 200, false);
console.log(anotherCar);
anotherCar.streetReady();
anotherCar.throttle();
