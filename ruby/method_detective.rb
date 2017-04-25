# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”

"zom".insert(2, 'o')
=> “zoom”

"enhance".center(15)
=> "    enhance    "

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase!
=> "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, ' suspects')
=> "the usual suspects"

" suspects".insert(0, 'the usual')
=> "the usual suspects"
" suspects".prepend('the usual')
"the usual suspects"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
=> "Elementary, my dear Watson!"

"z".ord
=> 122 
# (What is the significance of the number 122 in relation to the character z?)
	# "a".ord produces the value 97. The .ord method returns the integer orderinal of a 
	# one-character string. Ordinals number is basically like the order in which a character 
	# lies in a well ordered set. So if "a" falls at position 97, then it is clearer to 
	# understand why z would fall at 122. Even when you type in "1".ord, you get 49. 
	# So there are characters further in front of even the smallest intergers. 

"How many times does the letter 'a' appear in this string?".count "a"
=> 4

