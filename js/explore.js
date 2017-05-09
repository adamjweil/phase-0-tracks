// Define a function that takes in one argument
// 		Assign this argument to a string variable
//		Determine the length of the string
// 		Create a new string variable 
// 			Assign it an empty value
// Create a loop
// 		It should run from i = string.length - 1 thru i = 0
// 		For each iteration of the loop
// 			Start at i = string.length - 1
// 			Identify the character at that index
// 			Add that character to the empty string we created above 
// 			i should now be subtracted by 1
// 		This loop will complete when i = 0
// 			The empty string that we created above will now hold the reversed string we 
// 			originally inputted
//  



function reverse(x) {
  var z = '';
  var y = x.length - 1
  
  for (var i = y; i >=0; i--)
	z += x[i];
	
	if (x !== z) {
  	 console.log(z);
  	}
  	else {
  	 console.log("You can't reverse a palindrome!!")
  	}
}

// --->DRIVER CODE<-----
reverse("hello");

reverse("ollo");

