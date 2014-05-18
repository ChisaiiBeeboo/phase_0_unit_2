# U2.W4: Cipher Challenge


# I worked on this challenge with: Derek Siker



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   #### input is an array of the downcased string input with its' objects broken into individual strings
#   input = coded_message.downcase.split("") 
#   #### decoded_sentence creates an empty array 
#   decoded_sentence = []

#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#   #### Each iterates through each object in the input array
#   input.each do |x| 
#     #### found_match is false until the conditionals have been confirmed to be true, wouldn't make sense to return false when a match is made
#     found_match = false 
#     #### each_key iterates through each key in cipher to find a match 
#     cipher.each_key do |y| # What is #each_key doing here?
#       #### this is asking the question does each letter(x) of the coded message match the keys(y) in cipher
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         #### uses string interpolation to compare x and y and puts it to console
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         #### pushes the matched key into the decoded_sentence array
#         decoded_sentence << cipher[y]
#         #### sets found_match to true when letters match
#         found_match = true
#         #### Terminates current method
#         break 
#       #### any of these symbols denotes spaces in the coded message   
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         #### pushes the matched key into the decoded_sentence array
#         decoded_sentence << " "
#         #### sets found_match to true when sybols are matched
#         found_match = true
#         #### Terminate current method
#         break
#       #### creates an array that contains the integers 0-9  
#       elsif (0..9).to_a.include?(x) 
#         #### pushes the matched number into the decoded_sentence array
#         decoded_sentence << x
#         #### sets found_match to true when integer is matched
#         found_match = true
#          #### Terminate current method
#         break
#       end 
#     end
#     #### the matched characters from 
#     if not found_match 
#       #### Shoves all matched letters into the decoded_sentence arr
#       decoded_sentence << x
#     end
#   end
#   #### turns decoded_sentence array into a string and sets it to decoded_sentence
#   decoded_sentence = decoded_sentence.join("")
#     #looking for integers
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
#       #divides integer by 100
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   # returns final decoded sentence
#   return decoded_sentence # What is this returning?        
# end

# Your Refactored Solution
def north_korean_cipher(coded_message)
  arrOfCodedSentence = coded_message.downcase.split('')
  arrOfDecodedSentence = []
   keys = ('a'..'z').to_a
 values = keys.rotate(-4)
 cipher = Hash[keys.zip(values)]

  arrOfCodedSentence.each do |coded|
    found_match = false
    cipher.each_key do |decoded|
      if coded == decoded
        arrOfDecodedSentence << cipher[decoded]
        found_match = true
      elsif coded.match(/[@|#|$|%|^|&|*]/)
        arrOfDecodedSentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(coded)
        arrOfDecodedSentence << coded
        found_match = true
      end
    end
    if not found_match
      arrOfDecodedSentence << coded
    end
  end
    decoded_sentence = arrOfDecodedSentence.join('')

    if decoded_sentence.match(/\d+/)
      decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
    end
  decoded_sentence
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" 
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")







# Driver Code:
# p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# # Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
# p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
# p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
# p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
# p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
# p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection

# I saved this challenge for last due to it's complexity, I wanted extra time to research Ruby methods and do my best to refactor. I definitely
# feel my current code can be further refactored, I'm choosing to move on because I've spent too much time on this challenge and it's time to move 
# on. Thoroughly enjoyed working on the challenge. The rotate and zip methods I found on Ruby Docs were a godsend. I also discovered the Hash[] 
# method of creating the hash to tie everything together. I stuck with the Hash structure because they're typically faster for lookups.
# I used the .match regular expressions to refactor the symbols portion of the code. I toyed with the idea of turning the if statement into a 
# Ruby case, but I read somewhere that one should avoid using case when possible. 

