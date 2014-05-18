#  U2.W4: Cipher Challenge


# I worked on this challenge with: Derek Siker



#  1. Solution
#  Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
        #### input is an array of the downcased string input with its' objects broken into individual strings
  decoded_sentence = [] #### creates an empty array 
  # cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
  #           "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
  #           "g" => "c", 
  #           "h" => "d", 
  #           "i" => "e", 
  #           "j" => "f",
  #           "k" => "g",
  #           "l" => "h",
  #           "m" => "i",
  #           "n" => "j",
  #           "o" => "k",
  #           "p" => "l",
  #           "q" => "m",
  #           "r" => "n",
  #           "s" => "o",
  #           "t" => "p",
  #           "u" => "q",
  #           "v" => "r",
  #           "w" => "s",
  #           "x" => "t",
  #           "y" => "u",
  #           "z" => "v",
  #           "a" => "w",
  #           "b" => "x",
  #           "c" => "y",
  #           "d" => "z"}
 keys = ('a'..'z').to_a
 values = keys.rotate(4)
 cipher = Hash[keys.zip(values)]
            
  input.each do |x| # What is #each doing here?  **** Each iterates through each object in the input array
      #### input is an array of the downcased string input with its' objects broken into individual strings
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
      #### found_match is false until the conditionals have been confirmed to be true, wouldn't make sense to return false when a match is made

    cipher.each_key do |y| # What is #each_key doing here?
      #### each_key iterates through each key in cipher to find a match
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        
        puts "I am comparing x and y. X is #{x} and Y is #{y}." #### uses string interpolation to compare x and y
        decoded_sentence << cipher[y] #### pushes the matched key into the decoded_sentence array
        found_match = true #### sets found_match to true when cipher key is matched to coded message object
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? #### any of these symbols denotes spaces in the coded message
        decoded_sentence << " " #### replaces them with spaces
        found_match = true #### sets found_match to true when the symbols 
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? #### creates an array that contains the integers 0-9
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? #### the matched characters from 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") #### turns he decoded 
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. #### looking for one or more digits
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?    #####  returns the decoded string
end

# ###################################### END CODE





# Driver Code:
# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" 
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

































 