// ------->PSEUDOCODE
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
// ----------


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

// --------



// Answers to Release 0 thru 3

// --->RELEASE: 0<---
// 1. What is the equivalent of nil in JavaScript?
// 	null
// 2. When you declare variables in JavaScript, it's a good idea to use the var keyword (you can Google it if you're interested, or just take our word for it). We can see other differences as well: how is the naming convention in JavaScript different from Ruby?
// 	Java uses camelCase for naming convention. They upercase the first letter of any second word in method name, rather than using _
// 
// 3. How do you print a variable in JavaScript?
// 	console.log("Print variable here" + variable);
// 
// 4. How do you end a line of code in JavaScript?
// 	With a semicolon
// 
// 5. How do you write comments in JavaScript?
// 	Start the line with two backslashes //
// 
// --->RELEASE: 1<---
// 3 Differences in how if/else blocks are declared in JavaScript vs. Ruby.
// 	1. In javascript the condition is in parenthesis, while in Ruby it isnt. and 
// 	2. In javascript you put the content of the if statement within a {  } bracket. Ruby you dont need those brackets
// 	3. Javascript uses else if syntax while ruby uses elsif
// 
// 
// --->RELEASE: 2<---
// 1. How are functions declared in JavaScript? Try declaring a different function and calling it.
// 	function xyz
// 
// 2. Do JavaScript functions have implicit return? (What happens when you remove the return keyword from the add function?
// 	No. If you remove, there is no implicit return
// 
// 3. Notice that the declaration of the sayHello function has parentheses, even though sayHello doesn't take any parameters. Are those necessary? What happens if you remove them?
// 	Yes. Get SyntaxError: Unexpected token, expected ()
// 
// 4.  In Ruby, there's no need to use parentheses on a method call if you don't need to pass any arguments to the function. In the JavaScript version, does the code inside sayHello still execute if you remove the parentheses from the function call?
// 	No
// 
// --->RELEASE: 3<---
// 
// 1. Now that you understand the purpose of each statement in the for declaration, can you declare another loop that counts to 10 and logs each number to the console? Try to reason through it rather than Googling the answer.
// 	yes
// 2.  What happens if you change the i++ statement in a loop to i+=2?
// 	Returns 0, 2, 4, 6,8, 10
// 
// 3.  Can you figure out how to count down from 10 instead? Try to reason through it instead of Googling, though you can look it up if you have to. Either way, now you know how to loop backward!
// 	for (var i = 10; i >= 0; i--) {
//  		 console.log(i)
// 	}
