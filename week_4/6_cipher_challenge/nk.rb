def north_korean_cipher(coded_message)
	arrOfCodedSentence = coded_message.downcase.split('')
	arrOfDecodedSentence = []
	cipher = {"e" => "a",   
            "f" => "b",   
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

	arrOfCodedSentence.each do |coded|
		found_match = false
		cipher.each_key do |decoded|
			if coded == decoded
				arrOfDecodedSentence << cipher[decoded]
				found_match = true
				break 
			elsif coded.match(/[@|#|$|%|^|&|*]/)
				arrOfDecodedSentence << " "
				found_match = true
				break
			elsif (0..9).to_a.include?(coded)
				arrOfDecodedSentence << coded
				found_match = true
				break
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


