#OUR METHOD DECLATIONS

# ----> Encrypt Method
#   Input: Receive a string
#   -Make an empty password variable
#   -Make a counter starting at zero
#   Algorithm
    # -Create a loop that executes until the counter variable is  equal to the string length
      # -For each index in the loop, identify the next character in the alphabet by using the .next method
      # -Add this .next value to our password variable
    # -After the loop is complete, return the password in reverse.
# Example input: "Abc"
# Example output: "Bbc"

# ----> Decrypt Method
  # input: recieve a string
  # make a counter starting at 0
  # define an empty variable for decrypted password
  # Algorithm:
    # create a loop that executes until the counter equals the length of string
      # have a variable with entire alphabet (alphabet)
      # for each letter in the string, find the index of the letter in the alphabet, and store in a variable
      # use the letter variable as the index in the alphabet, and add the result to password
      # Add 1 to the counter
  # After the loop is done, print the password in reverse
  # example input: "bcd"
  # example output: "abc"

# Advances every letter of a string one letter forward, Encrypting it
def encrypt(string)
  counter = 0
  password = ""

  until counter == string.length
      if string[counter] == 'z'
        password = 'a'
    else
      password = string[counter].next + password
      counter +=1
      end
    end
password.reverse
end


# Reverses the method above, Decrypting a password
 def decrypt(word)
   counter = 0
   password = ""

   until counter == word.length
     alphabet = "abcdefghijklmnopqrstuvwxyz"
     letter = alphabet.index(word[counter]) - 1
     counter += 1
     password = alphabet[letter] + password

   end
   password.reverse
 end



#OUR DRIVER CODE

# ---->(Release 3) TEST CASES <----
# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# ---->(Release 4) TRY A NESTED METHOD CALL <----
puts decrypt(encrypt("swordfish"))
# ------> Why does "decrypt(encrypt("swordfish"))" work <-----
# Answer: This nested method works because the return value of

           # ---- >INTERFACE<-----
# asks whether they want to encrypt or decrypt a password
puts "Would you like to encrypt or decrypt a password? (encrypt/decrypt)"
stategy = gets.chomp.downcase

# asks user for password they want encrypted or decrypted
puts "Whats your password"
password = gets.chomp

answer = ""
if stategy == "encrypt"
  answer = encrypt(password)
elsif stategy == "decrypt"
  answer = decrypt(password)
else
  answer = "Invalid input"
end

# Returns encrypted / decrypted password
puts "Returns: #{answer}"



